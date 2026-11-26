This page describes how the data in each NZPS content area is mapped to the NZPS FHIR profiles. In some cases there is a one to one mapping of content area to resource, in other cases multiple resources are required to represent the information in a content area.

The content areas are described on [The NZPS](the-nzps.html) page. The structure of the document, and the requirements for each Composition section, are described on the [NZPS Structure](nzps-structure.html) page.

### Content area to FHIR resource mapping

| NZPS content area | Composition section | FHIR profiles used |
|---|---|---|
| **About the person and the summary** | | |
| Demographics | Not a section: the Composition's `subject` | [NZPS Patient](StructureDefinition-nzps-patient.html) |
| Author | Not a section: the Composition's `author`, `attester` and `custodian` | [NZPS Practitioner](StructureDefinition-nzps-practitioner.html), [NZPS PractitionerRole](StructureDefinition-nzps-practitionerrole.html), [NZPS Organization](StructureDefinition-nzps-organization.html). The author may also be a device, the patient or a related person. |
| **Required sections** | | |
| Problems | Problems | [NZPS Problem (Condition)](StructureDefinition-nzps-problem.html) |
| Allergies & intolerances | Allergies and Intolerances | [NZPS AllergyIntolerance](StructureDefinition-nzps-allergyintolerance.html) |
| Medications | Medication Summary | [NZPS MedicationStatement](StructureDefinition-nzps-medicationstatement.html), [NZPS MedicationRequest](StructureDefinition-nzps-medicationrequest.html), [NZPS MedicationDispense](StructureDefinition-nzps-medicationdispense.html); the medicine may be coded directly or referenced as an [NZPS Medication](StructureDefinition-nzps-medication.html) |
| **Recommended sections** | | |
| Immunisations | Immunizations | [NZPS Immunization](StructureDefinition-nzps-immunization.html) |
| Diagnostic results | Results | [NZPS Observation Results: laboratory/pathology](StructureDefinition-nzps-observation-results-laboratory-pathology.html), [Observation Results - Radiology (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-results-radiology-uv-ips.html), [NZPS DiagnosticReport](StructureDefinition-nzps-diagnostic-report.html) |
| Procedures | History of Procedures | [Procedure (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Procedure-uv-ips.html) |
| Medical devices | Medical Devices | [Device Use Statement (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-DeviceUseStatement-uv-ips.html), with the device as a [Device (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Device-uv-ips.html) |
| **Optional sections** | | |
| Alerts | Alerts | [NZPS Flag](StructureDefinition-nzps-flag.html) |
| Functional status | Functional Status | [NZPS Problem (Condition)](StructureDefinition-nzps-problem.html) for disabilities, [NZPS ClinicalImpression](StructureDefinition-nzps-clinical-impression.html) for functional assessments |
| Past problems | History of Past Problems | [NZPS Problem (Condition)](StructureDefinition-nzps-problem.html) |
| Pregnancy | History of Pregnancy | [Observation Pregnancy - Status (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-pregnancy-status-uv-ips.html), with the expected delivery date as an [Observation Pregnancy - Expected Delivery Date (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-pregnancy-edd-uv-ips.html); [Observation Pregnancy - Outcome (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Observation-pregnancy-outcome-uv-ips.html) |
| Patient story | Patient Story | Section narrative (required). Supporting resources are optional and may be of any type, e.g. [NZ Base RelatedPerson](https://fhir.org.nz/ig/base/StructureDefinition-NzRelatedPerson.html) for the people who are important to the patient. |
| Care plans | Plan of Care | [NZPS CarePlan](StructureDefinition-nzps-care-plan.html); planned immunisations as an [ImmunizationRecommendation](https://hl7.org/fhir/R4/immunizationrecommendation.html) |
| Smoking, vaping & alcohol use | Social History | [NZPS Smoking Status Observation](StructureDefinition-nzps-observation-smokingstatus.html), [NZPS Vaping Status Observation](StructureDefinition-nzps-observation-vapingstatus.html), [NZPS Alcohol Use Observation](StructureDefinition-nzps-observation-alcohol-use.html) |
| Measurements & vital signs | Vital Signs | [NZPS Vital Signs Observation](StructureDefinition-nzps-observation-vitalsigns.html) |
| Advance directives | Advance Directives | [Consent](https://hl7.org/fhir/R4/consent.html), or a [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) for a document such as a living will |
| **New Zealand section** | | |
| Encounters | Encounters | [NZPS Encounter](StructureDefinition-nzps-encounter.html) |
{:.grid}
