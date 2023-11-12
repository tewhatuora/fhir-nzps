Profile: NZPSMedicationRequest
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips
Id: nzps-medicationrequest
Title: "NZPS-MedicationRequest"
Description: "MedicationRequest as referenced by the MedicationStatement resource constrained by this profile. Based on the IPS profile."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org.nz/fhir/StructureDefinition/NzMedicationRequest"

* ^version = "0.1.0"
* ^status = #active

* ^url = $nzps-medicationRequest