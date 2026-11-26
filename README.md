# fhir-nzps
FHIR Implementation Guide for the NZ Patient Summary (NZPS). Initial draft based on [HISO 10099:2022 draft requirements](https://consult.health.govt.nz/hiso/hiso-10099-2022-nzips/supporting_documents/hiso10099nzipsdraft20220509.pdf)

CI Build viewable at https://build.fhir.org/ig/tewhatuora/fhir-nzps/

## Checking alignment with IPS

NZPS profiles are derived from NZ Base profiles, or from the base FHIR resource where NZ Base has no profile. The IPS requirements are copied into each profile, and the profile declares that it complies with the IPS profile using the `structuredefinition-compliesWithProfile` extension (the `CompliesWithIPS` rule set in [input/fsh/RuleSets/ips-compliance.fsh](input/fsh/RuleSets/ips-compliance.fsh)). The IPS requirements for the NZPS Composition and Bundle are in [input/fsh/RuleSets/ips-composition-bundle-rules.fsh](input/fsh/RuleSets/ips-composition-bundle-rules.fsh), with the IPS reference targets replaced by NZPS profiles.

Because the IPS requirements are copied across, they need to be checked against the IPS profiles:

- after adding or changing an NZPS profile that declares compliance with an IPS profile
- when moving to a new version of IPS or NZ Base
- before a release.

Write the check each time it's needed (an LLM can generate it), against the versions in use at the time. After an IG Publisher build, compare each NZPS profile's snapshot in `output/` with the IPS profile it declares (from the IPS package in `~/.fhir/packages`, including the IPS profile's own IPS parents). For each element the IPS profile constrains, check that the NZPS profile is not looser than IPS:

- cardinality (`min`, `max`)
- Must Support
- types, datatype profiles and reference targets (a reference target may be an NZPS profile that complies with the IPS target). For a choice element, the constraint may be on the type slice, for example `medication[x]:medicationCodeableConcept`
- bindings: the value set, the strength, and any additional bindings. A different value set may be intended, for example where the NZ Base (NZMT) binding is kept in place of the IPS binding
- fixed and pattern values
- invariants
- slicing
- obligations (code and actor). NZPS may strengthen an IPS obligation but must not weaken it, for example `SHALL:populate` must not become `SHALL:populate-if-known`.

This complements the IG Publisher QA. It does not check the narrative guidance in IPS.
