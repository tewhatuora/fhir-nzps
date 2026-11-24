Profile: NZPSMedicationDispense
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzMedicationDispense
Id: nzps-medicationdispense
Title: "NZPS-MedicationDispense"
Description: "This profile represents medication dispensing information, using NZMT codes for the medication, in a New Zealand Patient Summary. It is based on the [NZ Base MedicationDispense](http://hl7.org.nz/fhir/StructureDefinition/NzMedicationDispense) profile. There is no corresponding IPS profile."

* ^version = "0.1.0"
* ^status = #active

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains NZMT 0..*

* medicationCodeableConcept.coding[NZMT] from http://nzmt.org.nz/vs (preferred)
* medicationCodeableConcept.coding[NZMT] ^short = "New Zealand Medicines Terminology"
* medicationCodeableConcept.coding[NZMT].system = "http://nzmt.org.nz" (exactly)
* medicationCodeableConcept.coding[NZMT].extension contains http://hl7.org.nz/fhir/StructureDefinition/nzf-nzmt-type named nzf-nzmt-tpe 0..1