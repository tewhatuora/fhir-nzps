Profile: NZPSPractitioner
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: nzps-ppractitioner
Description: "The NZ International Patient Summary patient resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz), for use in the NZ context."

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org.nz/fhir/StructureDefinition/NzPractitioner"