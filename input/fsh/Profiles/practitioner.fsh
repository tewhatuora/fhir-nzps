Profile: NZPSPractitioner
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzPractitioner
Id: nzps-practitioner
Title: "NZPS-Practitioner"
Description: "This profile represents a practitioner in a New Zealand Patient Summary. It is based on the [NZ Base Practitioner](http://hl7.org.nz/fhir/StructureDefinition/NzPractitioner) profile, and applies the additional requirements from [Practitioner (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips)."
* insert CompliesWithIPS(Practitioner-uv-ips)

// ---------- IPS requirements (Practitioner-uv-ips 2.0.1) ----------
* name 1..* MS
* insert IPSObligationsMS(name)
* name.family MS
* insert IPSObligationsMS(name.family)
* name.given MS
* insert IPSObligationsMS(name.given)
* telecom MS
* insert IPSObligationsMS(telecom)
* address MS
* insert IPSObligationsMS(address)
