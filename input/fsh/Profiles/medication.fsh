Profile: NZPSMedication
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzMedication
Id: nzps-medication
Title: "NZPS-Medication"
Description: "This profile represents a medication in a New Zealand Patient Summary. It is based on the [NZ Base Medication](http://hl7.org.nz/fhir/StructureDefinition/NzMedication) profile, and applies the additional requirements from [Medication (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Medication-uv-ips)

// ---------- IPS requirements (Medication-uv-ips 2.0.1) ----------
// Medication.code: the NZ Base (NZMT) preferred binding is retained in place of the IPS preferred binding.
* code 1..1 MS
* code only $CodeableConcept-uv-ips
* insert IPSObligationsMS(code)
* form MS
* form only $CodeableConcept-uv-ips
* form from http://hl7.org/fhir/ValueSet/medication-form-codes (preferred)
* insert IPSObligationsMS(form)
* ingredient MS
* insert IPSObligationsMS(ingredient)
* ingredient.item[x] MS
* ingredient.item[x] only $CodeableConcept-uv-ips or Reference(Substance or Medication)
* ingredient.item[x] from http://hl7.org/fhir/uv/ips/ValueSet/medicine-active-substances-uv-ips (preferred)
* insert IPSObligationsMS(ingredient.item[x])
* ingredient.strength MS
* insert IPSObligationsMS(ingredient.strength)
