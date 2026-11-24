Profile: NZPSMedicationRequest
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzMedicationRequest
Id: nzps-medicationrequest
Title: "NZPS-MedicationRequest"
Description: "This profile represents a medication prescription or order in a New Zealand Patient Summary. It is based on the [NZ Base MedicationRequest](http://hl7.org.nz/fhir/StructureDefinition/NzMedicationRequest) profile, and applies the additional requirements from [MedicationRequest (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips)."

* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(MedicationRequest-uv-ips)

// ---------- IPS requirements (MedicationRequest-uv-ips 2.0.1) ----------
// medication[x]: the NZ Base (NZMT) preferred binding is retained in place of the IPS preferred binding.
* doNotPerform = false
* medication[x] MS
* medication[x] only CodeableConcept or Reference(NZPSMedication)
* medicationCodeableConcept only $CodeableConcept-uv-ips
* insert IPSObligationsMS(medication[x])
* subject MS
* subject only Reference(NZPSPatient)
* insert IPSObligationsMS(subject)
* subject.reference 1..1 MS
* insert IPSObligationsReference(subject.reference)
* dosageInstruction MS
* insert IPSObligationsMS(dosageInstruction)
* dosageInstruction.text MS
* insert IPSObligationsMS(dosageInstruction.text)
* dosageInstruction.timing MS
* insert IPSObligationsMS(dosageInstruction.timing)
* dosageInstruction.route from http://hl7.org/fhir/ValueSet/route-codes (preferred)
