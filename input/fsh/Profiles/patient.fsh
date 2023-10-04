Profile: NZPSPatient
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: nzps-patient
Title: "NZPS-Patient"
Description: "The NZ International Patient Summary patient resource. This profile derives from the [International Patient summary](https://build.fhir.org/ig/HL7/fhir-ips/) with localisations using international and NZ standards including the [FHIR NZ Base IG](https://fhir.org.nz), for use in the NZ context."

/* 
**Included Data**

The person’s name, birth date and contact details, plus other identity, demographic, eligibility and enrolment information as recorded in the National Health Index (NHI) and National Enrolment System (NES) for everyone receiving public health services. The NHI number is the national health identifier and key to this information.

**Usage and Interoperability**

This data enables the person to engage with the health system and receive health services in person and online. Information is shared with the health system in secure and privacy-protecting ways to prove identity and eligibility, and to receive the right services. Having good demographic data is important to population health and public health.

**Key use cases**

- Identity, eligibility and enrolment
- Bookings and appointments
- Identifying people at risk by ethnicity, age, location, etc
- Patient record transfer
- Consumer access
- Population health and public health */

* ^url = "https://standards.digital.health.nz/fhir/StructureDefinition/nzps-patient"

// suppress modifierExtension & contained
* modifierExtension 0..0
* contained 0..0
* implicitRules 0..0


// switched to line up with NHI 
//The gender has an extension for the original text that was used to establish it (eg from a form)
* gender.extension contains 
    $originalText named originalText 0..1

// note using HL7 international birthplace extension. This doesn't line up with NHI exactly. 
* extension contains 
    $ethnicity named ethnicity 0..6 and
    $maori-descent named maori-descent 0..1 and
    $nz-iwi named iwi 0..* and
    $patient-birthPlace named birth-country 0..1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile"
* ^extension[=].valueCanonical = "http://hl7.org.nz/fhir/StructureDefinition/NzPatient"

// identifier slice for nhi
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "NHI number"

// declare slices
* identifier contains 
    NHI 0..1 MS and
    dormant 0..* MS

// add nz address and nz telecom
* address only NzAddress
* telecom only NzContactPoint

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
Description: "A patient can only have a one official (i.e. 'live') NHI"
