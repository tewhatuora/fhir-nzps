Profile: NZPSBundle
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips
Id: nzps-bundle
Title: "NZPS-Bundle"
Description: "This profile represents the constraints applied to the Bundle resource for the New Zealand Patient summary and is based on the profile for the International Patient Summary (IPS) Document Bundle."
* ^version = "0.1.0"
* ^status = #active
* ^url = $nzps-bundle

* entry contains 
    careplan 0..* and
    encounter 0..* and
    observation-vaping-use 0..* and
    observation-results-laboratory 0..* and
    observation-vitalsigns 0..*

* entry[allergyintolerance].resource only $nzps-allergyIntolerance
* entry[careplan].resource only $nzps-carePlan
* entry[composition].resource only $nzps-composition
* entry[condition].resource only $nzps-condition
* entry[diagnosticreport].resource only $nzps-diagnosticReport
* entry[encounter].resource only $nzps-encounter
* entry[immunization].resource only $nzps-immunization
* entry[medication].resource only $nzps-medication
* entry[medicationrequest].resource only $nzps-medicationRequest
* entry[medicationstatement].resource only $nzps-medicationStatement
* entry[observation-results].resource only $nzps-observation-results
* entry[observation-results-laboratory].resource only $nzps-observation-results-laboratory
* entry[observation-tobacco-use].resource only $nzps-observation-smoking
* entry[observation-vaping-use].resource only $nzps-observation-vaping
* entry[observation-vitalsigns].resource only $nzps-observation-vitalsigns
* entry[organization].resource only $nzps-organisation
* entry[patient].resource only $nzps-patient
* entry[practitioner].resource only $nzps-practitioner
* entry[practitionerrole].resource only $nzps-practitionerRole


