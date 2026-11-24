Profile: NZPSComposition
Parent: Composition
Id: nzps-composition
Title: "NZPS-Composition"
Description: "Clinical document used to represent the NZPS data set. It is an electronic health record extract containing essential healthcare information about a subject of care. The NZPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. This profile applies the requirements from [Composition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips), with reference targets constrained to NZPS profiles. It is derived from the base Composition resource (rather than the IPS profile) because NZPS profiles based on NZ Base are not derived from the corresponding IPS profiles."
* ^version = "0.1.0"
* ^status = #active
* insert CompliesWithIPS(Composition-uv-ips)

// ---------- IPS requirements (Composition-uv-ips 2.0.1, generated) ----------
* insert IPSCompositionRequirements

// ---------- NZ requirements ----------
* section.emptyReason from $nzps-list-empty-reason-vs (preferred)

* section[sectionMedications].entry contains medicationDispense 0..*
* section[sectionMedications].entry[medicationDispense] only Reference(NZPSMedicationDispense)

* section[sectionFunctionalStatus].entry[functionalAssessment] only Reference(NZPSClinicalImpression)

// Patient Story follows IPS: narrative (text 1..1) carries the story; entries are optional and may be any
// resource that supports the narrative (e.g. NZ Base RelatedPerson for important people). No NZ-specific entry profile.

* section[sectionPlanOfCare].entry[carePlan] only Reference(NZPSCarePlan)

* section[sectionSocialHistory].entry contains vapingUse 0..1
* section[sectionSocialHistory].entry[vapingUse] only Reference(NZPSObservationVapingStatus)

// NZ additional section: recent encounters
* section contains sectionEncounter 0..1
* section[sectionEncounter] ^short = "NZPS Encounters Section"
* section[sectionEncounter] ^definition = "The section contains a list of the patient's recent encounters (e.g. hospital admissions, specialist and GP visits) relevant to the summary."
* section[sectionEncounter].code = $act-class#ENC
* section[sectionEncounter].entry ^slicing.discriminator[0].type = #profile
* section[sectionEncounter].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionEncounter].entry ^slicing.rules = #open
* section[sectionEncounter].entry contains encounter 0..*
* section[sectionEncounter].entry[encounter] only Reference(NZPSEncounter)
