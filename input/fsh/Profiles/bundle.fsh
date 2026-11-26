Profile: NZPSBundle
Parent: Bundle
Id: nzps-bundle
Title: "NZPS-Bundle"
Description: "This profile represents the constraints applied to the Bundle resource for the New Zealand Patient Summary document. It applies the requirements from [Bundle (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips), with entry resources constrained to NZPS profiles. It is derived from the base Bundle resource (rather than the IPS profile) because NZPS profiles are not derived from the corresponding IPS profiles."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Bundle-uv-ips)

// ---------- IPS requirements (Bundle-uv-ips 2.0.1, generated) ----------
* insert IPSBundleRequirements

// ---------- NZ requirements ----------
* entry[careplan].resource only NZPSCarePlan
* entry[clinicalimpression].resource only NZPSClinicalImpression

* entry contains
    encounter 0..* and
    observation-vaping-use 0..* and
    relatedperson 0..*
* entry[encounter].resource 1..
* entry[encounter].resource only NZPSEncounter
* entry[observation-vaping-use].resource 1..
* entry[observation-vaping-use].resource only NZPSObservationVapingStatus
* entry[relatedperson].resource 1..
* entry[relatedperson].resource only http://hl7.org.nz/fhir/StructureDefinition/NzRelatedPerson
