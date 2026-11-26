Profile: NZPSImmunization
Parent: Immunization
Id: nzps-immunization
Title: "NZPS-Immunization"
Description: "This profile represents an immunisation in a New Zealand Patient Summary: the administration of a vaccine to the patient, or a record of an immunisation reported by the patient, a clinician or another party. NZ Base has no Immunization profile, so this profile is derived from the base Immunization resource and applies the requirements from [Immunization (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Immunization-uv-ips)

// ---------- IPS requirements (Immunization-uv-ips 2.0.1) ----------
* status MS
* insert IPSObligationsMS(status)
* vaccineCode MS
* vaccineCode only $CodeableConcept-uv-ips
* vaccineCode from http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips (preferred)
* insert IPSAdditionalBinding(vaccineCode, ips-immunization-vaccinecode-whoatc, #candidate, http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips|2.0.1, Additional conformance binding to a vaccines value set from the WHO ATC code system for use in specific jurisdictional or other contexts where use of the ATC terminology is preferred.)
* insert IPSObligationsMS(vaccineCode)
* patient MS
* patient only Reference(NZPSPatient)
* insert IPSObligationsMS(patient)
* patient.reference 1..1 MS
* insert IPSObligationsReference(patient.reference)
* occurrence[x] MS
* insert IPSObligationsMS(occurrence[x])
* occurrenceDateTime MS
* insert IPSObligationsDate(occurrenceDateTime)
* site from http://hl7.org/fhir/ValueSet/body-site (preferred)
* route from http://hl7.org/fhir/ValueSet/route-codes (preferred)
* insert IPSAdditionalBinding(route, ips-medicine-route-of-administration, #candidate, http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration|2.0.1, EDQM Standards Route Terms)
* protocolApplied.targetDisease from http://hl7.org/fhir/uv/ips/ValueSet/target-diseases-uv-ips (preferred)
