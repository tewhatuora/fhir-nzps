Profile: NZPSProblem
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id: nzps-problem
Description: "NZPS problem (FHIR Condition resource). This profile derives from the [International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/) Condition resource used to document a health problem, with localisations using international and NZ Government standards for the NZ context."

* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/nzps-patient"

// Problem Manifestation code == evidence.code? do we need to clarify that?
// 

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org.nz/fhir/StructureDefinition/NzCondition"