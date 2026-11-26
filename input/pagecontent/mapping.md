This page describes how the data in each data block is mapped to the NZPS FHIR profiles. In some cases there is a one to one mapping of content area to resource, in other cases multiple resources are required to represent the information in a data block.

The structure of the document, and the requirements for each Composition section, are described on the [NZPS Structure](nzps-structure.html) page.

### Data block to FHIR resource mapping

| NZPS content area | Composition section | FHIR profiles used |
|---|---|---|
| **Demographics** | Not a section: the Composition's `subject` | [NZPS Patient](StructureDefinition-nzps-patient.html) |
| **Problems** | Problems (current problems); History of Past Problems (resolved and inactive problems) | [NZPS Problem (Condition)](StructureDefinition-nzps-problem.html) |
| **Medications** | Medication Summary | [NZPS MedicationStatement](StructureDefinition-nzps-medicationstatement.html), [NZPS MedicationRequest](StructureDefinition-nzps-medicationrequest.html), [NZPS MedicationDispense](StructureDefinition-nzps-medicationdispense.html); the medicine may be coded directly or referenced as an [NZPS Medication](StructureDefinition-nzps-medication.html) |
| **Allergies & Intolerances** | Allergies and Intolerances | [NZPS AllergyIntolerance](StructureDefinition-nzps-allergyintolerance.html) |
| **Immunisations** | Immunizations | [NZPS Immunization](StructureDefinition-nzps-immunization.html) |
| **Diagnostic results** | Results | [NZPS DiagnosticReport](StructureDefinition-nzps-diagnostic-report.html), [NZPS Observation Results: laboratory/pathology](StructureDefinition-nzps-observation-results-laboratory-pathology.html), [Observation Results - Radiology (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-results-radiology-uv-ips.html) |
| **Smoking & vaping** (and alcohol use) | Social History | [NZPS Smoking Status Observation](StructureDefinition-nzps-observation-smokingstatus.html), [NZPS Vaping Status Observation](StructureDefinition-nzps-observation-vapingstatus.html), [NZPS Alcohol Use Observation](StructureDefinition-nzps-observation-alcohol-use.html) |
| **Measurements & vital signs** | Vital Signs | [NZPS Vital Signs Observation](StructureDefinition-nzps-observation-vitalsigns.html) |
| **Care plans** | Plan of Care | [NZPS CarePlan](StructureDefinition-nzps-care-plan.html) |
| **Functional status** | Functional Status | [NZPS Problem (Condition)](StructureDefinition-nzps-problem.html) for disabilities, [NZPS ClinicalImpression](StructureDefinition-nzps-clinical-impression.html) for functional assessments |
| **Advance directives** | Advance Directives | [Consent](https://hl7.org/fhir/R4/consent.html), or a [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) for a document such as a living will |
| **Encounters** | Encounters (NZ section) | [NZPS Encounter](StructureDefinition-nzps-encounter.html) |
| **Pregnancy** | History of Pregnancy | [Observation Pregnancy - Status (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-pregnancy-status-uv-ips.html), with the expected delivery date as an [Observation Pregnancy - Expected Delivery Date (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-pregnancy-edd-uv-ips.html); [Observation Pregnancy - Outcome (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-pregnancy-outcome-uv-ips.html) |
| **Patient story** | Patient Story | Section narrative (required). Supporting resources are optional and may be of any type, e.g. [NZ Base RelatedPerson](https://fhir.org.nz/ig/base/StructureDefinition-NzRelatedPerson.html) for the people who are important to the patient. |
| **Alerts** | Alerts | [NZPS Flag](StructureDefinition-nzps-flag.html) |
{:.grid}
