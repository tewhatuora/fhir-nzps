Profile: NZPSFlag
Parent: Flag
Id: nzps-flag
Title: "NZPS-Flag"
Description: "This profile represents an alert in a New Zealand Patient Summary: information that raises awareness of a potential danger to or from the patient, or to or from another person, or of a potential obstacle to care. It is used for entries in the Alerts section. NZ Base has no Flag profile, so this profile is derived from the base Flag resource and applies the requirements from [Flag - Alert (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips)."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Flag-alert-uv-ips)

// ---------- IPS requirements (Flag-alert-uv-ips 2.0.1) ----------
* extension contains http://hl7.org/fhir/StructureDefinition/flag-priority named flag-priority 0..1 MS
* insert IPSObligationsMS(extension[flag-priority])
* status = #active (exactly)
* category MS
* category only $CodeableConcept-uv-ips
* insert IPSObligationsMS(category)
* code MS
* code only $CodeableConcept-uv-ips
* insert IPSObligationsMS(code)
// IPS doesn't constrain the subject types (a flag may be about the patient or about others)
* subject MS
* insert IPSObligationsMS(subject)
* subject.reference 1..1 MS
* insert IPSObligationsReference(subject.reference)
