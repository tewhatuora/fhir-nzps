Profile: NZPSObservationSmokingStatus
Parent: Observation
Id: nzps-observation-smokingstatus
Title: "NZPS-Observation-Smoking-Status"
Description: "This profile represents a tobacco use (smoking status) assessment in a New Zealand Patient Summary. NZ Base has no smoking status profile, so this profile is derived from the base Observation resource and applies the requirements from [Observation - Tobacco Use (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Observation-tobaccouse-uv-ips)

// ---------- IPS requirements (Observation-tobaccouse-uv-ips 2.0.1) ----------
* code = $loinc#72166-2
* code MS
* code only $CodeableConcept-uv-ips
* insert IPSObligationsMS(code)
* subject 1..1 MS
* subject only Reference(NZPSPatient)
* insert IPSObligationsMS(subject)
* subject.reference 1..1 MS
* insert IPSObligationsReference(subject.reference)
* effective[x] 1..1 MS
* effective[x] only dateTime
* insert IPSObligationsMS(effective[x])
* valueCodeableConcept 0..1
* valueCodeableConcept from http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips (preferred)
* component 0..0
