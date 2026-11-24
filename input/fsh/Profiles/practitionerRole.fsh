Profile: NZPSPractitionerRole
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzPractitionerRole
Id: nzps-practitionerrole
Title: "NZPS-PractitionerRole"
Description: "This profile represents a practitioner role in a New Zealand Patient Summary. It is based on the [NZ Base PractitionerRole](http://hl7.org.nz/fhir/StructureDefinition/NzPractitionerRole) profile, and applies the additional requirements from [PractitionerRole (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips)."
* insert CompliesWithIPS(PractitionerRole-uv-ips)

// ---------- IPS requirements (PractitionerRole-uv-ips 2.0.1) ----------
* practitioner only Reference(NZPSPractitioner)
* organization MS
* organization only Reference(NZPSOrganization)
* insert IPSObligationsMS(organization)
* code from http://hl7.org/fhir/uv/ips/ValueSet/healthcare-professional-roles-uv-ips (preferred)
