// Aliases for external canonical URLs used across the NZPS FSH.
// NZPS profiles are referenced by their FSH names (e.g. NZPSPatient), so no aliases are defined for them.

// ---------- Profiles (IPS / core) ----------
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $shareablevalueset = http://hl7.org/fhir/StructureDefinition/shareablevalueset

// ---------- Extensions ----------
// NZ Base
Alias: $originalText = http://hl7.org.nz/fhir/StructureDefinition/gender-original-text
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity
Alias: $maori-descent = http://hl7.org.nz/fhir/StructureDefinition/maori-descent
Alias: $nz-iwi = http://hl7.org.nz/fhir/StructureDefinition/nz-iwi
// HL7 International
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace

// ---------- Code systems ----------
Alias: $loinc = http://loinc.org
Alias: $nz-loinc = https://standards.digital.health.nz/ns/loinc-nz-local-code
Alias: $act-class = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $nzps-list-empty-reason = https://standards.digital.health.nz/ns/nzps-list-empty-reason

// ---------- Value sets ----------
Alias: $nzps-list-empty-reason-vs = https://nzhts.digital.health.nz/fhir/ValueSet/nzps-list-empty-reason
Alias: $hl7-list-empty-vs = http://hl7.org/fhir/ValueSet/list-empty-reason
// should we be using an implicit valueset? http://snomed.info/sct?fhir_vs=refset/72721000210100
Alias: $nzps-current-vaping-status-vs = https://nzhts.digital.health.nz/fhir/ValueSet/vaping-status
