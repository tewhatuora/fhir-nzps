Profile: NZPSObservationAlcoholUse
Parent: Observation
Id: nzps-observation-alcohol-use
Title: "NZPS-Observation-Alcohol-Use"
Description: "This profile represents an alcohol use assessment in a New Zealand Patient Summary. NZ Base has no alcohol use profile, so this profile is derived from the base Observation resource and applies the requirements from [Observation - Alcohol Use (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Observation-alcoholuse-uv-ips)

// ---------- IPS requirements (Observation-alcoholuse-uv-ips 2.0.1) ----------
* code = $loinc#74013-4
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
* valueQuantity 0..1
* component 0..0
