Profile: NZPSMedicationStatement
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzMedicationStatement
Id: nzps-medicationstatement
Title: "NZPS-MedicationStatement"
Description: "This profile represents a record of a medication being taken by the patient in a New Zealand Patient Summary. It is based on the [NZ Base MedicationStatement](http://hl7.org.nz/fhir/StructureDefinition/NzMedicationStatement) profile, and applies the additional requirements from [MedicationStatement (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips)."

// some fields require the medication resource (e.g Medication batch number and Medication expiry date are recorded against a medication resource rather than the medication statement). Include?

* insert CompliesWithIPS(MedicationStatement-uv-ips)

// ---------- IPS requirements (MedicationStatement-uv-ips 2.0.1) ----------
// medication[x]: the NZ Base (NZMT) preferred binding is retained in place of the IPS preferred binding.
* medication[x] MS
* medication[x] only CodeableConcept or Reference(NZPSMedication)
* medicationCodeableConcept only $CodeableConcept-uv-ips
* insert IPSObligationsMS(medication[x])
* subject MS
* subject only Reference(NZPSPatient)
* insert IPSObligationsMS(subject)
* subject.reference 1..1 MS
* insert IPSObligationsReference(subject.reference)
* effective[x] 1..1 MS
* insert IPSObligationsMS(effective[x])
* effectiveDateTime MS
* insert IPSObligationsDate(effectiveDateTime)
* dosage MS
* insert IPSObligationsMS(dosage)
* dosage.text MS
* insert IPSObligationsMS(dosage.text)
* dosage.timing MS
* insert IPSObligationsMS(dosage.timing)
* dosage.route from http://hl7.org/fhir/ValueSet/route-codes (preferred)
* insert IPSAdditionalBinding(dosage.route, ips-medicine-route-of-administration, #candidate, http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration|2.0.1, EDQM Route Terms)

// ---------- NZ requirements ----------
* ^version = "0.1.0"
* ^status = #active


* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    NZMT 0..* and
    GTIN 0..*

* medicationCodeableConcept.coding[NZMT] from http://nzmt.org.nz/vs (preferred)
* medicationCodeableConcept.coding[NZMT] ^short = "New Zealand Medicines Terminology"
* medicationCodeableConcept.coding[NZMT].system = "http://nzmt.org.nz" (exactly)
* medicationCodeableConcept.coding[NZMT].extension contains http://hl7.org.nz/fhir/StructureDefinition/nzf-nzmt-type named nzf-nzmt-tpe 0..1

* medicationCodeableConcept.coding[GTIN] from http://terminology.hl7.org/ValueSet/v3-GTIN (preferred)
// * medicationCodeableConcept.coding[GTIN] ^sliceName = "gtin"
* medicationCodeableConcept.coding[GTIN] ^short = "Medication Package Global Trade Item Number (GTIN)"
* medicationCodeableConcept.coding[GTIN] ^comment = "GTIN value from http://www.gs1.org/gtin."
// * medicationCodeableConcept.coding[GTIN].system 1..
* medicationCodeableConcept.coding[GTIN].system = "http://www.gs1.org/gtin" (exactly)