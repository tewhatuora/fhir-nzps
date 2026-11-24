"""
Generate FSH RuleSets carrying the IPS requirements for the NZPS Composition and Bundle profiles.

Why: NZPS profiles that are based on NZ Base (Patient, Condition, Medication*, Practitioner*, Organization)
are not derived from the IPS profiles, so the NZPS Composition and Bundle cannot be derived from the IPS
Composition / Bundle and still narrow reference targets to NZPS profiles (SUSHI / snapshot tooling only allows
narrowing to a profile derived from the parent's target). Following the AU PS approach, NZPSComposition and
NZPSBundle are derived from core Composition / Bundle, apply the IPS rules generated here, and assert
compliesWithProfile against the IPS profiles.

The generator translates each IPS differential element into FSH rules (slicing, contains, cardinality, MS,
types, patterns, fixed values, invariants, obligations, short/definition/comment). IPS profile targets are
replaced by the NZPS profile that represents them where one exists (see NZPS_FOR_IPS).

usage: python scripts/generate-ips-rulesets.py [path-to-hl7.fhir.uv.ips#2.0.1/package]
writes: input/fsh/RuleSets/ips-composition-bundle-rules.fsh
"""
import json, os, re, sys

IPS_VERSION = '2.0.1'
PKG = sys.argv[1] if len(sys.argv) > 1 else os.path.expanduser(f'~/.fhir/packages/hl7.fhir.uv.ips#{IPS_VERSION}/package')
OUT = os.path.join(os.path.dirname(__file__), '..', 'input', 'fsh', 'RuleSets', 'ips-composition-bundle-rules.fsh')

IPS = 'http://hl7.org/fhir/uv/ips/StructureDefinition/'
CORE = 'http://hl7.org/fhir/StructureDefinition/'

# IPS (or core) profile -> NZPS profile (FSH name) used in its place
NZPS_FOR_IPS = {
    IPS + 'Patient-uv-ips': 'NZPSPatient',
    IPS + 'Composition-uv-ips': 'NZPSComposition',
    IPS + 'Condition-uv-ips': 'NZPSProblem',
    IPS + 'AllergyIntolerance-uv-ips': 'NZPSAllergyIntolerance',
    IPS + 'DiagnosticReport-uv-ips': 'NZPSDiagnosticReport',
    IPS + 'Immunization-uv-ips': 'NZPSImmunization',
    IPS + 'Medication-uv-ips': 'NZPSMedication',
    IPS + 'MedicationRequest-uv-ips': 'NZPSMedicationRequest',
    IPS + 'MedicationStatement-uv-ips': 'NZPSMedicationStatement',
    IPS + 'Organization-uv-ips': 'NZPSOrganization',
    IPS + 'Practitioner-uv-ips': 'NZPSPractitioner',
    IPS + 'PractitionerRole-uv-ips': 'NZPSPractitionerRole',
    IPS + 'Observation-alcoholuse-uv-ips': 'NZPSObservationAlcoholUse',
    IPS + 'Observation-tobaccouse-uv-ips': 'NZPSObservationSmokingStatus',
    IPS + 'Observation-results-laboratory-pathology-uv-ips': 'NZPSObservationResultsLaboratoryPathology',
    CORE + 'vitalsigns': 'NZPSObservationVitalSigns',
}


def unversioned(url):
    return url.split('|')[0]


def target(url):
    """FSH reference for a profile canonical: NZPS name, core type name, or the (versioned) IPS canonical."""
    u = unversioned(url)
    if u in NZPS_FOR_IPS:
        return NZPS_FOR_IPS[u]
    if u.startswith(CORE) and re.fullmatch(r'[A-Z][A-Za-z]+', u[len(CORE):]):
        return u[len(CORE):]          # core resource / datatype
    if u.startswith(IPS):
        return f'{u}|{IPS_VERSION}'   # IPS profile with no NZPS equivalent - keep, pinned to the IPS version
    return u


def fsh_path(eid, root):
    """Composition.section:sectionProblems.entry:problem -> section[sectionProblems].entry[problem]"""
    p = eid[len(root) + 1:]
    return re.sub(r':([A-Za-z0-9\-_]+)', r'[\1]', p)


def strip_ancestor_slices(eid):
    """Composition.section:sectionProblems.extension:section-note -> Composition.section.extension:section-note"""
    parts = eid.split('.')
    return '.'.join([re.sub(r':.*$', '', s) for s in parts[:-1]] + [parts[-1]])


def q(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"').replace('\r', '').replace('\n', '\\n') + '"'


def card(e, default=None):
    mn, mx = e.get('min'), e.get('max')
    if mn is None and mx is None:
        return default
    return f"{'' if mn is None else mn}..{'' if mx is None else mx}"


def generate(profile_id, ruleset):
    sd = json.load(open(os.path.join(PKG, f'StructureDefinition-{profile_id}.json'), encoding='utf-8'))
    root = sd['type']
    ids = {e['id'] for e in sd['differential']['element']}
    out = [f'// IPS requirements from {IPS}{profile_id}|{IPS_VERSION}', f'RuleSet: {ruleset}']
    invariants = {}
    for e in sd['differential']['element']:
        eid = e['id']
        is_root = eid == root
        path = None if is_root else fsh_path(eid, root)
        rules = []

        # slices: declare with contains (unless inherited from the unsliced parent element in this differential)
        if 'sliceName' in e and not is_root:
            inherited = strip_ancestor_slices(eid) != eid and strip_ancestor_slices(eid) in ids
            parent = path[: path.rfind('[')]
            ext_types = [t for t in e.get('type', []) if t['code'] == 'Extension' and t.get('profile')]
            if not inherited:
                if ext_types:
                    url = unversioned(ext_types[0]['profile'][0])
                    rules.append(f"* {parent} contains {url} named {e['sliceName']} {card(e, '0..*')}")
                else:
                    rules.append(f"* {parent} contains {e['sliceName']} {card(e, '0..*')}")
            elif card(e):
                rules.append(f'* {path} {card(e)}')
        elif card(e) and not is_root:
            rules.append(f'* {path} {card(e)}')

        if e.get('slicing'):
            s = e['slicing']
            for i, d in enumerate(s.get('discriminator', [])):
                rules.append(f"* {path} ^slicing.discriminator[{i}].type = #{d['type']}")
                rules.append(f"* {path} ^slicing.discriminator[{i}].path = {q(d['path'])}")
            if 'ordered' in s:
                rules.append(f"* {path} ^slicing.ordered = {str(s['ordered']).lower()}")
            rules.append(f"* {path} ^slicing.rules = #{s['rules']}")
            if s.get('description'):
                rules.append(f"* {path} ^slicing.description = {q(s['description'])}")

        if e.get('mustSupport') and not is_root:
            rules.append(f'* {path} MS')

        # types (extension slices are typed by their contains rule)
        types = e.get('type', [])
        if types and not is_root and not any(t['code'] == 'Extension' for t in types):
            alts = []
            for t in types:
                if t['code'] == 'Reference':
                    tps = [target(x) for x in t.get('targetProfile', [])]
                    # drop profiles made redundant by their unprofiled base type in the same list
                    tps = [x for x in tps if not (x != 'Composition' and 'Composition' in tps and x == 'NZPSComposition')]
                    alts.append(f"Reference({' or '.join(dict.fromkeys(tps))})" if tps else 'Reference')
                elif t.get('profile'):
                    alts.extend(target(x) if unversioned(x) in NZPS_FOR_IPS else unversioned(x) for x in t['profile'])
                else:
                    alts.append(t['code'])
            rules.append(f"* {path} only {' or '.join(alts)}")

        for k, v in e.items():
            if k == 'patternCodeableConcept':
                for i, c in enumerate(v.get('coding', [])):
                    rules.append(f"* {path} = {c['system']}#{c['code']}" if i == 0 else f"// additional pattern coding not expressed: {c}")
            elif k.startswith('fixed') and k != 'fixedCode':
                raise SystemExit(f'unhandled {k} at {eid}')
            elif k.startswith('pattern') and k != 'patternCodeableConcept':
                raise SystemExit(f'unhandled {k} at {eid}')
        if 'fixedCode' in e:
            rules.append(f"* {path} = #{e['fixedCode']} (exactly)")

        for c in e.get('constraint', []):
            invariants[c['key']] = c
            rules.append(f"* obeys {c['key']}" if is_root else f"* {path} obeys {c['key']}")

        for x in e.get('extension', []):
            if not x['url'].endswith('/obligation'):
                raise SystemExit(f'unhandled extension {x["url"]} at {eid}')
            parts = {s['url']: list(v for k, v in s.items() if k.startswith('value'))[0] for s in x['extension']}
            if set(parts) != {'code', 'actor'}:
                raise SystemExit(f'unhandled obligation parts {parts} at {eid}')
            actor = unversioned(parts['actor']).rsplit('/', 1)[-1]
            rules.append(f"* insert IPSObligation({path}, {actor}, #{parts['code']})")

        if not is_root:
            for k in ('short', 'definition', 'comment', 'label'):
                if e.get(k):
                    rules.append(f'* {path} ^{k} = {q(e[k])}')

        out.extend(rules)

    for key, c in invariants.items():
        out += ['', f'Invariant: {key}', f"Description: {q(c['human'])}", f"Expression: {q(c['expression'])}"]
        if c.get('xpath'):
            out.append(f"XPath: {q(c['xpath'])}")
        out.append(f"Severity: #{c['severity']}")
    return out


header = [
    '// ---------------------------------------------------------------------------------------------',
    f'// GENERATED by scripts/generate-ips-rulesets.py from IPS {IPS_VERSION} - do not edit by hand; re-run the script.',
    '// IPS requirements applied by NZPSComposition and NZPSBundle (which are derived from core Composition / Bundle',
    '// and assert compliesWithProfile against the IPS profiles). IPS reference targets are replaced by the NZPS',
    '// profile that represents them where one exists.',
    '// ---------------------------------------------------------------------------------------------',
    '',
]
lines = header + generate('Composition-uv-ips', 'IPSCompositionRequirements') + [''] + generate('Bundle-uv-ips', 'IPSBundleRequirements') + ['']
os.makedirs(os.path.dirname(OUT), exist_ok=True)
open(OUT, 'w', encoding='utf-8', newline='\n').write('\n'.join(lines))
print(f'wrote {os.path.normpath(OUT)} ({len(lines)} lines)')
