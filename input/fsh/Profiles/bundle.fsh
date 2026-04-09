Profile: NZPSBundle
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips
Id: nzps-bundle
Title: "NZPS-Bundle"
Description: "This profile represents the constraints applied to the Bundle resource for the New Zealand Patient summary and is based on the profile for the International Patient Summary (IPS) Document Bundle."
* ^version = "0.1.0"
* ^status = #active
// * ^url = $nzps-bundle

* entry contains 
    communication 0..* and
    encounter 0..* and
    observation-vaping-use 0..*

* entry[allergyintolerance].resource only NZPSAllergyIntolerance
* entry[careplan].resource only NZPSCarePlan
* entry[clinicalimpression].resource only NZPSClinicalImpression
* entry[communication].resource only NZPSCommunication
* entry[composition].resource only NZPSComposition
* entry[condition].resource only NZPSProblem
* entry[diagnosticreport].resource only NZPSDiagnosticReport
* entry[encounter].resource only NZPSEncounter
* entry[immunization].resource only NZPSImmunization
* entry[medication].resource only NZPSMedication
* entry[medicationrequest].resource only NZPSMedicationRequest
* entry[medicationstatement].resource only NZPSMedicationStatement
* entry[observation-results-laboratory-pathology].resource only NZPSObservationResultsLaboratoryPathology
* entry[observation-tobacco-use].resource only NZPSObservationSmokingStatus
* entry[observation-vaping-use].resource only NZPSObservationVapingStatus
* entry[observation-vital-signs].resource only NZPSObservationVitalSigns
* entry[organization].resource only NZPSOrganization
* entry[patient].resource only NZPSPatient
* entry[practitioner].resource only NZPSPractitioner
* entry[practitionerrole].resource only NZPSPractitionerRole


