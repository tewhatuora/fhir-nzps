Profile: NZPSMedicationStatement
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Id: nzps-medicationstatement
Title: "NZPS-MedicationStatement"
Description: "A record of medication being taken is represented in the patient summary as an instance of an MedicationStatement resource constrained by this profile. Based on the IPS profile."

// some fields require the medication resource (e.g Medication batch number and Medication expiry date are recorded against a medication resource rather than the medication statement). Include?

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org.nz/fhir/StructureDefinition/NzMedicationStatement"

* ^version = "0.1.0"
* ^status = #active

* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/nzps-medicationstatement"

* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    NZMT 0..* and
    GTIN 0..*

* medicationCodeableConcept.coding[NZMT] from http://nzmt.org.nz/vs (preferred)
* medicationCodeableConcept.coding[NZMT] ^short = "New Zealand Medicines Terminology"
* medicationCodeableConcept.coding[NZMT].system = "http://nzmt.org.nz/vs" (exactly)
* medicationCodeableConcept.coding[NZMT].extension contains http://hl7.org.nz/fhir/StructureDefinition/nzf-nzmt-type named nzf-nzmt-tpe 0..1

* medicationCodeableConcept.coding[GTIN] from http://terminology.hl7.org/ValueSet/v3-GTIN (preferred)
// * medicationCodeableConcept.coding[GTIN] ^sliceName = "gtin"
* medicationCodeableConcept.coding[GTIN] ^short = "Medication Package Global Trade Item Number (GTIN)"
* medicationCodeableConcept.coding[GTIN] ^comment = "GTIN value from http://www.gs1.org/gtin."
// * medicationCodeableConcept.coding[GTIN].system 1..
* medicationCodeableConcept.coding[GTIN].system = "http://www.gs1.org/gtin" (exactly)