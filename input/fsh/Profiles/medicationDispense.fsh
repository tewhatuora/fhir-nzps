Profile: NZPSMedicationDispense
Parent: MedicationDispense
Id: nzps-medicationdispense
Title: "NZPS-MedicationDispense"
Description: "Medication dispensing information using NZMT codes for medication "

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org.nz/fhir/StructureDefinition/NzMedicationDispense"

* ^version = "0.1.0"
* ^status = #active

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains NZMT 0..*

* medicationCodeableConcept.coding[NZMT] from http://nzmt.org.nz/vs (preferred)
* medicationCodeableConcept.coding[NZMT] ^short = "New Zealand Medicines Terminology"
* medicationCodeableConcept.coding[NZMT].system = "http://nzmt.org.nz/vs" (exactly)
* medicationCodeableConcept.coding[NZMT].extension contains http://hl7.org.nz/fhir/StructureDefinition/nzf-nzmt-type named nzf-nzmt-tpe 0..1