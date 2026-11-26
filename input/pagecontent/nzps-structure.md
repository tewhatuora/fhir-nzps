The FHIR implementation of the NZPS derives from the [International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/2.0.1/), which is structured as a [FHIR document](https://www.hl7.org/fhir/documents.html).

Where the [FHIR NZ Base IG](https://fhir.org.nz/ig/base/index.html) has defined profiles for resources used by the NZPS, the NZPS profiles will conform to those NZ Base constraints.

### NZ Patient Summary Structure

<div>{% include nzps-structure-overview.svg %}</div>

An NZ Patient Summary is a single electronic document that brings together the key health information about a person. In FHIR, the document is made up of a set of FHIR resources, each holding one kind of information (such as the patient's details, a condition, an allergy or a medicine). These are packaged together so that the whole summary can be sent, stored and read as one unit.

The document is built around a **Composition**, which acts as the document header or 'table of contents'. It says who the summary is about, who wrote it and when, and lists the sections that make up the summary, such as Problems, Allergies and Medications. Each section has a human-readable summary of its content, and references the resources that hold the detailed information for that section.

The other resources in the document are:

- **Patient**: who the summary is about, with their identity and demographic details.
- **Clinical resources**: the detailed health information referenced from the sections, for example conditions, allergies, medicines, immunisations and test results.
- **Supporting resources**: other information the clinical content relies on, for example the practitioners and organisations who wrote the summary or recorded the information in it.

The resources that the summary refers to are included in the document itself, so the summary is designed to be read and understood on its own.

### FHIR Document Structure

<div>{% include nzps-fhir-document-structure.svg %}</div>

The NZPS is a [FHIR document](https://hl7.org/fhir/R4/documents.html): a [Bundle](https://hl7.org/fhir/R4/bundle.html) whose first entry is a [Composition](https://hl7.org/fhir/R4/composition.html). The [NZPS Bundle](StructureDefinition-nzps-bundle.html) and [NZPS Composition](StructureDefinition-nzps-composition.html) profiles apply the requirements of the IPS 2.0.1 Bundle and Composition profiles, constrain the resources in the document to NZPS profiles, and declare compliance with the IPS profiles.

#### Bundle

- `type` is fixed to `document`.
- `identifier` (a persistent identifier for this document instance) and `timestamp` (when the document was assembled) are required.
- The Bundle has at least two entries:
  - The **Composition**, which is the first entry. Only one Composition is allowed in the document (invariant `bdl-ips-1`).
  - The **Patient** who is the subject of the summary, conforming to [NZPS Patient](StructureDefinition-nzps-patient.html).
- The remaining entries are the resources referenced from the Composition, and the resources that those resources reference in turn. Where an NZPS profile exists for a resource type, entries of that type conform to it (for example [NZPS Problem](StructureDefinition-nzps-problem.html) for Condition); otherwise the IPS profile applies.
- Every entry has a `fullUrl` (a `urn:uuid` in the NZPS examples). References between resources in the document resolve to these entries.
- Entries do not carry `search`, `request` or `response` elements.

#### Composition

- `type` is fixed to the LOINC code [60591-5](https://loinc.org/60591-5) "Patient summary Document".
- `subject` references the NZPS Patient entry in the Bundle.
- `status`, `date`, `author` and `title` are required by the base Composition resource. `attester` and `custodian` are must support.
- `event` (the care provisioning event, code `PCPR`) can record the period of care that the summary covers.
- `section` holds the content of the summary. There are at least three sections, and sections are not nested.

#### Sections

Each section has:

- `title`: the heading displayed for the section.
- `code`: the code identifying the section. Each section has a fixed code (see the table below).
- `text`: the section narrative. This is required in every section. It is the human-readable content of the section, and needs enough detail to be clinically safe for a reader who only reads the narrative.
- `entry`: references to the resources that hold the structured content of the section.
- `emptyReason`: why a section has no entries, preferably using a code from the [NZPS list empty reason](ValueSet-nzps-list-empty-reason-vs.html) value set.
- The `section-note` extension, for notes that apply to the section as a whole rather than to a single entry.

The Problems, Allergies and Intolerances, and Medication Summary sections are required, and each SHALL contain either entries or an `emptyReason` (invariant `ips-comp-1`). The [no clinical information example](Bundle-NZPSNoClinicalInfoBundle.html) shows how a summary records that there are no known problems, allergies or medicines.

| Section | Code | Cardinality | IPS status | Entries |
|---|---|---|---|---|
| Problems | LOINC 11450-4 | 1..1 | Required | [NZPS Problem](StructureDefinition-nzps-problem.html) |
| Allergies and Intolerances | LOINC 48765-2 | 1..1 | Required | [NZPS AllergyIntolerance](StructureDefinition-nzps-allergyintolerance.html) |
| Medication Summary | LOINC 10160-0 | 1..1 | Required | [NZPS MedicationStatement](StructureDefinition-nzps-medicationstatement.html), [NZPS MedicationRequest](StructureDefinition-nzps-medicationrequest.html), [NZPS MedicationDispense](StructureDefinition-nzps-medicationdispense.html) (NZ addition) |
| Immunizations | LOINC 11369-6 | 0..1 | Recommended | [NZPS Immunization](StructureDefinition-nzps-immunization.html) |
| Results | LOINC 30954-2 | 0..1 | Recommended | [NZPS laboratory result](StructureDefinition-nzps-observation-results-laboratory-pathology.html), IPS radiology result Observation, [NZPS DiagnosticReport](StructureDefinition-nzps-diagnostic-report.html) |
| History of Procedures | LOINC 47519-4 | 0..1 | Recommended | IPS Procedure |
| Medical Devices | LOINC 46264-8 | 0..1 | Recommended | IPS DeviceUseStatement |
| Advance Directives | LOINC 42348-3 | 0..1 | Optional | Consent |
| Alerts | LOINC 104605-1 | 0..1 | Optional | [NZPS Flag](StructureDefinition-nzps-flag.html) |
| Functional Status | LOINC 47420-5 | 0..1 | Optional | [NZPS Problem](StructureDefinition-nzps-problem.html) (disabilities), [NZPS ClinicalImpression](StructureDefinition-nzps-clinical-impression.html) |
| History of Past Problems | LOINC 11348-0 | 0..1 | Optional | [NZPS Problem](StructureDefinition-nzps-problem.html) |
| History of Pregnancy | LOINC 10162-6 | 0..1 | Optional | IPS pregnancy status and pregnancy outcome Observations |
| Patient Story | LOINC 81338-6 | 0..1 | Optional | The narrative carries the story. Entries are optional and may be any resource that supports it, such as an NZ Base RelatedPerson for a person who is important to the patient. |
| Plan of Care | LOINC 18776-5 | 0..1 | Optional | [NZPS CarePlan](StructureDefinition-nzps-care-plan.html), ImmunizationRecommendation |
| Social History | LOINC 29762-2 | 0..1 | Optional | [NZPS smoking status](StructureDefinition-nzps-observation-smokingstatus.html), [NZPS alcohol use](StructureDefinition-nzps-observation-alcohol-use.html), [NZPS vaping status](StructureDefinition-nzps-observation-vapingstatus.html) (NZ addition) |
| Vital Signs | LOINC 8716-3 | 0..1 | Optional | [NZPS vital signs](StructureDefinition-nzps-observation-vitalsigns.html) |
| Encounters (NZ addition) | v3-ActClass ENC | 0..1 | Not in IPS | [NZPS Encounter](StructureDefinition-nzps-encounter.html) |
{:.grid}

Apart from Patient Story and Encounters, sections may also reference a DocumentReference entry.
