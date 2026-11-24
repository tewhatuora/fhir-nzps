Profile: NZPSOrganization
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzOrganization
Id: nzps-organization
Title: "NZPS-Organization"
Description: "This profile represents an organisation in a New Zealand Patient Summary. It is based on the [NZ Base Organization](http://hl7.org.nz/fhir/StructureDefinition/NzOrganization) profile, and applies the additional requirements from [Organization (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips)."
* insert CompliesWithIPS(Organization-uv-ips)

// ---------- IPS requirements (Organization-uv-ips 2.0.1) ----------
* name 1..1 MS
* insert IPSObligationsMS(name)
* telecom MS
* insert IPSObligationsMS(telecom)
* address MS
* insert IPSObligationsMS(address)
