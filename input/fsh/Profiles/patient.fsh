Profile: NZPSPatient
Parent: http://hl7.org.nz/fhir/StructureDefinition/NzPatient
Id: nzps-patient
Title: "NZPS-Patient"
Description: "This profile represents the patient who is the subject of a New Zealand Patient Summary. It is based on the [NZ Base Patient](http://hl7.org.nz/fhir/StructureDefinition/NzPatient) profile, and applies the additional requirements from [Patient (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips)."
* insert CompliesWithIPS(Patient-uv-ips)

// ---------- NZ requirements (in addition to NZ Base) ----------

// NHI: NZ Base defines the NHI identifier slice, binds NHI use to official | old (live | dormant),
// and applies nz-pat-1 (only one official, i.e. live, NHI).
* identifier[NHI] MS
* identifier[NHI] ^short = "National Health Index (NHI) number - the live NHI (use = official) and any dormant NHIs (use = old)"
* identifier[NHI] ^definition = "The NHI number is a unique number for all New Zealanders. An NHI becomes dormant when it is discovered that two NHIs exist for the same person; the NHIs are linked, one becomes live (use = official) and the other dormant (use = old)."

// ethnicity and iwi are defined in NZ Base; NZPS limits ethnicity to the 6 permitted by the HISO ethnicity data protocols
* extension[ethnicity] 0..6

// additional extensions
// note: using the HL7 international birthPlace extension. This doesn't line up with the NHI exactly.
* extension contains
    $maori-descent named maori-descent 0..1 and
    $patient-birthPlace named birth-country 0..1

// ---------- IPS requirements (Patient-uv-ips 2.0.1) ----------
* extension contains
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity named genderIdentity 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named personalPronouns 0..*

* identifier MS
* insert IPSObligationsMS(identifier)
* name 1..* MS
* name obeys ips-pat-1
* insert IPSObligationsMS(name)
* name.use MS
* insert IPSObligationsMS(name.use)
* name.text MS
* insert IPSObligationsMS(name.text)
* name.family MS
* insert IPSObligationsMS(name.family)
* name.given MS
* insert IPSObligationsMS(name.given)
* telecom MS
* insert IPSObligationsMS(telecom)
* gender MS
* insert IPSObligationsMS(gender)
* birthDate 1..1 MS
* insert IPSObligationsMS(birthDate)
* address MS
* insert IPSObligationsMS(address)
* generalPractitioner MS
* insert IPSObligationsMS(generalPractitioner)

Invariant: ips-pat-1
Description: "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
Expression: "family.exists() or given.exists() or text.exists()"
XPath: "f:given or f:family or f:text"
Severity: #error
