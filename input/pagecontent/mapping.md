
This page describes how the data in each data block is mapped to the NZPS FHIR profiles. In some cases there is a one to one mapping of content area to resource, in other cases multiple resources are required to represent the information in a data block. 

### Data block to FHIR resource mapping


| **NZPS Data block**  |  **NZPS Composition section**  |  **FHIR profiles used**  |
| ----------  |  -------------------- |    -----------  |
| **Demographcs** |  Composition's subject  |   [NZPS Patient](StructureDefinition-nzps-patient.html)   |
|  **Problems:**  |  Problems    | [NZPS Condition](StructureDefinition-nzps-condition.html)      |
| **Medications** | Medications |   [NZPS MedicationStatement](StructureDefinition-nzps-medicationstatement.html) \| [NZPS MedicationRequest](StructureDefinition-nzps-medicationrequest.html) \| [NZPS Medication](StructureDefinition-nzps-medication.html)  |
| **Allergies & Intolerances** | Allergies  |   [NZPS AllergyIntolerance](StructureDefinition-nzps-allergyintolerance.html)  |
| **Immunizations**  | Immunizations   |  [NZPS Immunizations](StructureDefinition-nzps-immunization.html) |
|  **Diagnostic results**  |  Results  |  [NZPS DiagnosticResults](StructureDefinition-nzps-diagnostic-report.html) |
|  **Social History (Smoking & Vaping)** |  Social History   |   |
| **Measurements & vital signs**    |  VitalSigns  |   |
|  **Care plans**  |  PlanOfCare  |   |
|  **Functional Status**   |  FunctionalStatus  |   |
|  **Advance Directives**  |  AdvanceDirectives  |   |
|  **Pregnancy (status & history summary)**  | PregnancyHx   |   |
|  **Recent encounters**  |  RecentEncounters  |   |
|  **Entitlements**  |  Entitlements  |   |
|  **Patient story**  |  PatientStory  |   |
| **Alerts**   |  Alerts  |   |

