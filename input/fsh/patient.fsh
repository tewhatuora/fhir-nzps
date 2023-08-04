Profile: NZIPS-Patient
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: nzips-patient
Description: "NZ International Patient Summary patient resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz), for use in the NZ context."

* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/nzips-patient"

// gender original text - extension from http://hl7.org/fhir/R4B/extension-originaltext.html
* gender.extension contains http://hl7.org/fhir/StructureDefinition/originalText named originalText 0..1 

* extension contains 
    http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity named ethnicity 0..* and
    http://hl7.org.nz/fhir/StructureDefinition/maori-descent named maori-descent 0..1 and
    http://hl7.org.nz/fhir/StructureDefinition/nz-iwi named iwi 0..* and
    http://hl7.org.nz/fhir/StructureDefinition/country-of-birth named birth-country 0..1

// identifier slice for nhi
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "NHI number"

// declare slices
* identifier contains 
    NHI 0..1 MS and
    dormant 0..* MS

// details of live nhi slice
* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[NHI].use = #offical (exactly)
* identifier[NHI].use ^short = "fixed to official"
* identifier[NHI] ^short = "The currently active NHI "
* identifier[NHI] ^definition = "The NHI number is a unique number for all New Zealanders, assigned at birth"

// details of dormant nhi slice
* identifier[dormant].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[dormant].use = #old (exactly)
* identifier[dormant].use ^short = "fixed to old"
* identifier[dormant] ^short = "NHI identifiers that have been deprecated for this Person"
* identifier[dormant] ^definition = "An NHI of the person that is no longer in use.   An NHI becomes dormant when it is discovered that 2 NHIs exist for the same person. The NHIs are linked, one becomes ‘live’ the other ‘dormant’."


// declare rule to say can't have more than 'official' (meaning live) NHI
* obeys nz-pat-1

// invariant for nz-pat-1 rule
Invariant: nz-pat-1
Expression: "Patient.identifier.where(system='https://standards.digital.health.nz/ns/nhi-id' and use='official').count() < 2"
Severity: #error
Description: "A patient can only have a single official NHI"
