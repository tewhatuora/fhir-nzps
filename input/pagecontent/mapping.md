
This page describes how the data in each data block is mapped to the NZPS FHIR profiles. In some cases there is a one to one mapping of content area to resource, in other cases multiple resources are required to represent the information in a data block. 

### Data block to FHIR resource mapping


| **NZPS Content area**  |  **Composition section**  |  **FHIR profiles used**  |
| ----------  |  -------------------- |    -----------  |
| **Demographcs** |  Composition's subject                |   [NZPS Patient](StructureDefinition-nzps-patient.html)   |
|  **Problems:**  |  Problems    | [NZPS Problem (Condition)](StructureDefinition-nzps-condition.html)      |
| **Medications** | Medications |   [NZPS MedicationStatement](StructureDefinition-nzps-medicationstatement.html) \| [NZPS MedicationRequest](StructureDefinition-nzps-medicationrequest.html) \| [NZPS Medication](StructureDefinition-nzps-medication.html)  |
| **Allergies & Intolerances** | Allergies  |   [NZPS AllergyIntolerance](StructureDefinition-nzps-allergyintolerance.html)  |
| **Immunizations**  | Immunizations   |  [NZPS Immunizations](StructureDefinition-nzps-immunization.html) |
|  **Diagnostic results**  |  Results  |  [NZPS DiagnosticResults](StructureDefinition-nzps-diagnostic-report.html) |
|  **Social History (smoking, vaping, alcohol)** |  Social History   | [NZPS Smoking Status Observation](StructureDefinition-nzps-observation-smokingstatus.html) \| [NZPS Vaping Status Observation](StructureDefinition-nzps-observation-vapingstatus.html)  |
| **Measurements & vital signs**    |  VitalSigns  |  [NZPS Vital Signs Observation](StructureDefinition-nzps-observation-vitalsigns.html)  |
|  **Care plans**  |  PlanOfCare  | [NZPS CarePlan](StructureDefinition-nzps-care-plan.html)  |
|  **Functional Status**   |  FunctionalStatus  | [NZPS Problem (Condition)](StructureDefinition-nzps-problem.html) \| [NZPS ClinicalImpression](StructureDefinition-nzps-clinical-impression.html)  |
|  **Advance Directives**  |  AdvanceDirectives  |  NZPS DocumentReference[](StructureDefinition-nzps-documentreference.html) \| NZPS Consent |
|  **Pregnancy (status, history summary)**  | PregnancyHx   |  NZPS Pregnancy: EDD Observation \| NZPS Pregnancy: Outcome Observation \| NZPS Pregnancy: Status Observation \|
|  **Recent encounters**  |  EncounterHx  | NZPS Encounter |
|  **Entitlements**  |  Entitlements  | NZPS Coverage  |
|  **Patient story**  |  PatientStory  | tbd |
| **Alerts**   |  Alerts  |  NZPS Flag |

