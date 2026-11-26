// ---------------------------------------------------------------------------------------------
// Copied from the IPS 2.0.1 Composition and Bundle profiles. Maintained by hand: check against the IPS profiles
// when IPS changes (see "Checking alignment with IPS" in README.md).
// IPS requirements applied by NZPSComposition and NZPSBundle (which are derived from core Composition / Bundle
// and assert compliesWithProfile against the IPS profiles). IPS reference targets are replaced by the NZPS
// profile that represents them where one exists.
// ---------------------------------------------------------------------------------------------

// IPS requirements from http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips|2.0.1
RuleSet: IPSCompositionRequirements
* meta.profile MS
* insert IPSObligation(meta.profile, Creator, #MAY:able-to-populate)
* meta.profile ^short = "The conformance of this Composition to a specific IPS version."
* meta.profile ^definition = "The conformance of this Composition to a specific version of the IPS (e.g. http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips|2.0.0 for 2.0.0)"
* text MS
* insert IPSObligation(text, Creator, #SHALL:populate-if-known)
* insert IPSObligation(text, Consumer, #SHALL:handle)
* insert IPSObligation(text, Consumer, #SHOULD:display)
* identifier MS
* insert IPSObligation(identifier, Creator, #SHALL:populate-if-known)
* insert IPSObligation(identifier, Consumer, #SHALL:handle)
* status MS
* insert IPSObligation(status, Creator, #SHALL:populate)
* insert IPSObligation(status, Consumer, #SHALL:handle)
* insert IPSObligation(status, Consumer, #SHOULD:display)
* type MS
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type = http://loinc.org#60591-5
* insert IPSObligation(type, Creator, #SHALL:populate)
* insert IPSObligation(type, Consumer, #SHALL:handle)
* type ^short = "Kind of composition (\"Patient Summary\")"
* type ^definition = "Specifies that this composition refers to a Patient Summary (Loinc \"60591-5\")\n"
* subject 1..
* subject MS
* subject only Reference(NZPSPatient)
* insert IPSObligation(subject, Creator, #SHALL:populate)
* insert IPSObligation(subject, Consumer, #SHALL:handle)
* insert IPSObligation(subject, Consumer, #SHOULD:display)
* subject ^definition = "Who or what the composition is about. \nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\nFor the IPS the subject is always the patient."
* subject.reference 1..
* subject.reference MS
* insert IPSObligation(subject.reference, Creator, #SHALL:populate)
* insert IPSObligation(subject.reference, Consumer, #SHALL:handle)
* date MS
* insert IPSObligation(date, Creator, #SHALL:populate)
* insert IPSObligation(date, Consumer, #SHALL:handle)
* insert IPSObligation(date, Consumer, #SHOULD:display)
* author MS
* insert IPSObligation(author, Creator, #SHALL:populate)
* insert IPSObligation(author, Consumer, #SHALL:handle)
* insert IPSObligation(author, Consumer, #SHOULD:display)
* author ^short = "Who and/or what authored the IPS"
* author ^comment = "The distinction between the two types of IPS, \"human-curated\" or \"software-assembled\", is based on the authors recorded in this field: the author refers to humans (i.e. Practitioner, PractitionerRole, Patient, and/or RelatedPerson) if the IPS provenance is \"human-curated\", or devices (i.e. Device) if the IPS provenance is \"software-assembled\". In the case of a software-assembled IPS that is then verified by a human, the author would be the device that constructed the IPS document, but additional attesters would identity the humans who performed this check."
* title MS
* insert IPSObligation(title, Creator, #SHALL:populate)
* insert IPSObligation(title, Consumer, #SHALL:handle)
* insert IPSObligation(title, Consumer, #SHOULD:display)
* title ^short = "The title of this patient summary. This may include information like the patient name and time generated"
* title ^definition = "Official human-readable label for the composition.\n\nThis would typically include a label of \"International Patient Summary\" or any equivalent translation and other relevant document information"
* attester MS
* insert IPSObligation(attester, Creator, #SHALL:populate-if-known)
* insert IPSObligation(attester, Consumer, #SHALL:handle)
* insert IPSObligation(attester, Consumer, #SHOULD:display)
* attester.mode MS
* insert IPSObligation(attester.mode, Creator, #SHALL:populate)
* insert IPSObligation(attester.mode, Consumer, #SHALL:handle)
* insert IPSObligation(attester.mode, Consumer, #SHOULD:display)
* attester.time MS
* insert IPSObligation(attester.time, Creator, #SHALL:populate-if-known)
* insert IPSObligation(attester.time, Consumer, #SHALL:handle)
* insert IPSObligation(attester.time, Consumer, #SHOULD:display)
* attester.party MS
* insert IPSObligation(attester.party, Creator, #SHALL:populate-if-known)
* insert IPSObligation(attester.party, Consumer, #SHALL:handle)
* insert IPSObligation(attester.party, Consumer, #SHOULD:display)
* custodian MS
* insert IPSObligation(custodian, Creator, #SHALL:populate-if-known)
* insert IPSObligation(custodian, Consumer, #SHALL:handle)
* insert IPSObligation(custodian, Consumer, #SHOULD:display)
* relatesTo.target[x] only Identifier or Reference(Composition)
* event ^slicing.discriminator[0].type = #value
* event ^slicing.discriminator[0].path = "code"
* event ^slicing.rules = #open
* event ^definition = "The main activity being described by a IPS is the provision of healthcare over a period of time. \nIn the CDA representation of the IPS this is shown by setting the value of serviceEvent/@classCode to “PCPR” (care provision) and indicating the duration over which care was provided in serviceEvent/effectiveTime. \nIn the FHIR representation at least one event should be used to record this information.\nAdditional data from outside this duration may also be included if it is relevant to care provided during that time range (e.g., reviewed during the stated time range). For example if the IPS is generated by a GP based on information recorded in his/her EHR-S, then the start value should represent the date when the treatment relationship between the patient and the GP started; and the end value the date of the latest care event."
* event contains careProvisioningEvent 0..1
* event[careProvisioningEvent] MS
* insert IPSObligation(event[careProvisioningEvent], Creator, #SHALL:populate-if-known)
* insert IPSObligation(event[careProvisioningEvent], Consumer, #SHALL:handle)
* insert IPSObligation(event[careProvisioningEvent], Consumer, #SHOULD:display)
* event[careProvisioningEvent] ^short = "The care provisioning being documented"
* event[careProvisioningEvent] ^definition = "The provision of healthcare over a period of time this IPS is documenting."
* event[careProvisioningEvent].code 1..1
* event[careProvisioningEvent].code MS
* event[careProvisioningEvent].code = http://terminology.hl7.org/CodeSystem/v3-ActClass#PCPR
* insert IPSObligation(event[careProvisioningEvent].code, Creator, #SHALL:populate)
* insert IPSObligation(event[careProvisioningEvent].code, Consumer, #SHALL:handle)
* insert IPSObligation(event[careProvisioningEvent].code, Consumer, #SHOULD:display)
* event[careProvisioningEvent].period MS
* insert IPSObligation(event[careProvisioningEvent].period, Creator, #SHALL:populate-if-known)
* insert IPSObligation(event[careProvisioningEvent].period, Consumer, #SHALL:handle)
* insert IPSObligation(event[careProvisioningEvent].period, Consumer, #SHOULD:display)
* section 3..
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section MS
* insert IPSObligation(section, Consumer, #SHALL:handle)
* insert IPSObligation(section, Consumer, #SHOULD:display)
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.extension ^slicing.discriminator[0].type = #value
* section.extension ^slicing.discriminator[0].path = "url"
* section.extension ^slicing.ordered = false
* section.extension ^slicing.rules = #open
* section.extension contains http://hl7.org/fhir/StructureDefinition/note named section-note 0..*
* section.extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section.extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section.title 1..
* section.title MS
* insert IPSObligation(section.title, Creator, #SHALL:populate)
* insert IPSObligation(section.title, Consumer, #SHALL:handle)
* insert IPSObligation(section.title, Consumer, #SHOULD:display)
* section.code 1..
* section.code MS
* insert IPSObligation(section.code, Consumer, #SHALL:handle)
* section.text 1..
* section.text MS
* insert IPSObligation(section.text, Creator, #SHALL:populate)
* insert IPSObligation(section.text, Consumer, #SHALL:handle)
* insert IPSObligation(section.text, Consumer, #SHOULD:display)
* section.section ..0
* section contains sectionProblems 1..1
* section[sectionProblems] MS
* section[sectionProblems] obeys ips-comp-1
* insert IPSObligation(section[sectionProblems], Creator, #SHALL:populate)
* insert IPSObligation(section[sectionProblems], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionProblems], Consumer, #SHOULD:display)
* section[sectionProblems] ^short = "IPS Problems Section"
* section[sectionProblems] ^definition = "The IPS problem section lists and describes clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].extension[section-note] 0..*
* section[sectionProblems].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionProblems].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionProblems].code = http://loinc.org#11450-4
* section[sectionProblems].entry ^slicing.discriminator[0].type = #profile
* section[sectionProblems].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionProblems].entry ^slicing.rules = #open
* section[sectionProblems].entry only Reference(Condition or DocumentReference)
* section[sectionProblems].entry ^short = "Clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].entry ^definition = "It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available, or that no relevant problems are known."
* section[sectionProblems].entry contains problem 0..*
* section[sectionProblems].entry[problem] MS
* section[sectionProblems].entry[problem] only Reference(NZPSProblem)
* insert IPSObligation(section[sectionProblems].entry[problem], Creator, #SHALL:able-to-populate)
* insert IPSObligation(section[sectionProblems].entry[problem], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionProblems].entry[problem], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionProblems].entry[problem], Consumer, #SHOULD:display)
* section[sectionProblems].emptyReason MS
* insert IPSObligation(section[sectionProblems].emptyReason, Creator, #SHALL:populate-if-known)
* insert IPSObligation(section[sectionProblems].emptyReason, Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionProblems].emptyReason, Consumer, #SHOULD:display)
* section contains sectionAllergies 1..1
* section[sectionAllergies] MS
* section[sectionAllergies] obeys ips-comp-1
* insert IPSObligation(section[sectionAllergies], Creator, #SHALL:populate)
* insert IPSObligation(section[sectionAllergies], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionAllergies], Consumer, #SHOULD:display)
* section[sectionAllergies] ^short = "IPS Allergies and Intolerances Section"
* section[sectionAllergies] ^definition = "This section documents the relevant allergies or intolerances for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\nIf no information about allergies is available, or if no allergies are known this should be clearly documented in the section."
* section[sectionAllergies].extension[section-note] 0..*
* section[sectionAllergies].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionAllergies].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionAllergies].code = http://loinc.org#48765-2
* section[sectionAllergies].entry ^slicing.discriminator[0].type = #profile
* section[sectionAllergies].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionAllergies].entry ^slicing.rules = #open
* section[sectionAllergies].entry only Reference(AllergyIntolerance or DocumentReference)
* section[sectionAllergies].entry ^short = "Relevant allergies or intolerances for that patient."
* section[sectionAllergies].entry ^definition = "It lists the relevant allergies or intolerances for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\n This entry shall be used to document that no information about allergies is available, or that no allergies are known ."
* section[sectionAllergies].entry contains allergyOrIntolerance 0..*
* section[sectionAllergies].entry[allergyOrIntolerance] MS
* section[sectionAllergies].entry[allergyOrIntolerance] only Reference(NZPSAllergyIntolerance)
* insert IPSObligation(section[sectionAllergies].entry[allergyOrIntolerance], Creator, #SHALL:able-to-populate)
* insert IPSObligation(section[sectionAllergies].entry[allergyOrIntolerance], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionAllergies].entry[allergyOrIntolerance], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionAllergies].entry[allergyOrIntolerance], Consumer, #SHOULD:display)
* section[sectionAllergies].emptyReason MS
* insert IPSObligation(section[sectionAllergies].emptyReason, Creator, #SHALL:populate-if-known)
* insert IPSObligation(section[sectionAllergies].emptyReason, Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionAllergies].emptyReason, Consumer, #SHOULD:display)
* section contains sectionMedications 1..1
* section[sectionMedications] MS
* section[sectionMedications] obeys ips-comp-1
* insert IPSObligation(section[sectionMedications], Creator, #SHALL:populate)
* insert IPSObligation(section[sectionMedications], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionMedications], Consumer, #SHOULD:display)
* section[sectionMedications] ^short = "IPS Medication Summary Section"
* section[sectionMedications] ^definition = "The medication summary section contains a description of the patient's medications relevant for the scope of the patient summary.\nThe actual content could depend on the jurisdiction, it could report:\n- the currently active medications; \n- the current and past medications considered relevant by the authoring GP; \n- the patient prescriptions or dispensations automatically extracted by a regional or a national EHR.\n\nIn those cases medications are documented in the Patient Summary as medication statements or medication requests.\nThis section requires either an entry indicating the subject is known not to be on any relevant medication; either an entry indicating that no information is available about medications; or entries summarizing the subject's relevant medications."
* section[sectionMedications].extension[section-note] 0..*
* section[sectionMedications].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionMedications].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionMedications].code = http://loinc.org#10160-0
* section[sectionMedications].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedications].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionMedications].entry ^slicing.rules = #open
* section[sectionMedications].entry only Reference(MedicationStatement or MedicationRequest or MedicationAdministration or MedicationDispense or DocumentReference)
* section[sectionMedications].entry ^short = "Medications relevant for the scope of the patient summary"
* section[sectionMedications].entry ^definition = "This list the medications relevant for the scope of the patient summary or it is used to indicate that the subject is known not to be on any relevant medication; either that no information is available about medications."
* section[sectionMedications].entry contains medicationStatementOrRequest 0..*
* section[sectionMedications].entry[medicationStatementOrRequest] MS
* section[sectionMedications].entry[medicationStatementOrRequest] only Reference(NZPSMedicationStatement or NZPSMedicationRequest)
* insert IPSObligation(section[sectionMedications].entry[medicationStatementOrRequest], Creator, #SHALL:able-to-populate)
* insert IPSObligation(section[sectionMedications].entry[medicationStatementOrRequest], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionMedications].entry[medicationStatementOrRequest], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionMedications].entry[medicationStatementOrRequest], Consumer, #SHOULD:display)
* section[sectionMedications].emptyReason MS
* insert IPSObligation(section[sectionMedications].emptyReason, Creator, #SHALL:populate-if-known)
* insert IPSObligation(section[sectionMedications].emptyReason, Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionMedications].emptyReason, Consumer, #SHOULD:display)
* section contains sectionImmunizations 0..1
* section[sectionImmunizations] MS
* insert IPSObligation(section[sectionImmunizations], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionImmunizations], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionImmunizations], Consumer, #SHOULD:display)
* section[sectionImmunizations] ^short = "IPS Immunizations Section"
* section[sectionImmunizations] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\nThe section includes the current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sectionImmunizations].extension[section-note] 0..*
* section[sectionImmunizations].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionImmunizations].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionImmunizations].code = http://loinc.org#11369-6
* section[sectionImmunizations].entry ^slicing.discriminator[0].type = #profile
* section[sectionImmunizations].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionImmunizations].entry ^slicing.rules = #open
* section[sectionImmunizations].entry only Reference(Immunization or DocumentReference)
* section[sectionImmunizations].entry ^short = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^definition = "It defines the patient's current immunization status and pertinent immunization history.\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available, or that no immunizations are known."
* section[sectionImmunizations].entry contains immunization 0..*
* section[sectionImmunizations].entry[immunization] MS
* section[sectionImmunizations].entry[immunization] only Reference(NZPSImmunization)
* insert IPSObligation(section[sectionImmunizations].entry[immunization], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionImmunizations].entry[immunization], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionImmunizations].entry[immunization], Consumer, #SHOULD:display)
* section contains sectionResults 0..1
* section[sectionResults] MS
* insert IPSObligation(section[sectionResults], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionResults], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionResults], Consumer, #SHOULD:display)
* section[sectionResults] ^short = "IPS Results Section"
* section[sectionResults] ^definition = "This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].extension[section-note] 0..*
* section[sectionResults].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionResults].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionResults].code = http://loinc.org#30954-2
* section[sectionResults].entry ^slicing.discriminator[0].type = #type
* section[sectionResults].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionResults].entry ^slicing.discriminator[1].type = #profile
* section[sectionResults].entry ^slicing.discriminator[1].path = "resolve()"
* section[sectionResults].entry ^slicing.rules = #open
* section[sectionResults].entry only Reference(Observation or DiagnosticReport or DocumentReference)
* section[sectionResults].entry ^short = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient."
* section[sectionResults].entry ^definition = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].entry contains results-observation-laboratory-pathology 0..*
* section[sectionResults].entry[results-observation-laboratory-pathology] MS
* section[sectionResults].entry[results-observation-laboratory-pathology] only Reference(NZPSObservationResultsLaboratoryPathology)
* insert IPSObligation(section[sectionResults].entry[results-observation-laboratory-pathology], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionResults].entry[results-observation-laboratory-pathology], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionResults].entry[results-observation-laboratory-pathology], Consumer, #SHOULD:display)
* section[sectionResults].entry contains results-observation-radiology 0..*
* section[sectionResults].entry[results-observation-radiology] MS
* section[sectionResults].entry[results-observation-radiology] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips|2.0.1)
* insert IPSObligation(section[sectionResults].entry[results-observation-radiology], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionResults].entry[results-observation-radiology], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionResults].entry[results-observation-radiology], Consumer, #SHOULD:display)
* section[sectionResults].entry contains results-diagnosticReport 0..*
* section[sectionResults].entry[results-diagnosticReport] MS
* section[sectionResults].entry[results-diagnosticReport] only Reference(NZPSDiagnosticReport)
* insert IPSObligation(section[sectionResults].entry[results-diagnosticReport], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionResults].entry[results-diagnosticReport], Consumer, #SHOULD:display)
* section contains sectionProceduresHx 0..1
* section[sectionProceduresHx] MS
* insert IPSObligation(section[sectionProceduresHx], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionProceduresHx], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionProceduresHx], Consumer, #SHOULD:display)
* section[sectionProceduresHx] ^short = "IPS History of Procedures Section"
* section[sectionProceduresHx] ^definition = "The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\nProcedures may refer for example to:\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\n2. Therapeutic procedure: e.g. dialysis;\n3. Surgical procedure: e.g. appendectomy"
* section[sectionProceduresHx].extension[section-note] 0..*
* section[sectionProceduresHx].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionProceduresHx].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionProceduresHx].code = http://loinc.org#47519-4
* section[sectionProceduresHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionProceduresHx].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionProceduresHx].entry ^slicing.rules = #open
* section[sectionProceduresHx].entry only Reference(Procedure or DocumentReference)
* section[sectionProceduresHx].entry ^short = "Patient past procedures pertinent to the scope of this document."
* section[sectionProceduresHx].entry ^definition = "It lists the patient past procedures that are pertinent to the scope of this document.\nProcedures may refer for example to:\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\n2. Therapeutic procedure: e.g. dialysis;\n3. Surgical procedure: e.g. appendectomy. This entry shall be used to document that no information about past procedures is available, or that no relevant past procedures are known."
* section[sectionProceduresHx].entry contains procedure 0..*
* section[sectionProceduresHx].entry[procedure] MS
* section[sectionProceduresHx].entry[procedure] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips|2.0.1)
* insert IPSObligation(section[sectionProceduresHx].entry[procedure], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionProceduresHx].entry[procedure], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionProceduresHx].entry[procedure], Consumer, #SHOULD:display)
* section contains sectionMedicalDevices 0..1
* section[sectionMedicalDevices] MS
* insert IPSObligation(section[sectionMedicalDevices], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionMedicalDevices], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionMedicalDevices], Consumer, #SHOULD:display)
* section[sectionMedicalDevices] ^short = "IPS Medical Devices Section"
* section[sectionMedicalDevices] ^definition = "The medical devices section contains narrative text and coded entries describing the patient history of medical device use."
* section[sectionMedicalDevices].extension[section-note] 0..*
* section[sectionMedicalDevices].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionMedicalDevices].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionMedicalDevices].code = http://loinc.org#46264-8
* section[sectionMedicalDevices].entry ^slicing.discriminator[0].type = #profile
* section[sectionMedicalDevices].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionMedicalDevices].entry ^slicing.rules = #open
* section[sectionMedicalDevices].entry only Reference(DeviceUseStatement or DocumentReference)
* section[sectionMedicalDevices].entry ^short = "Patient history of medical device use."
* section[sectionMedicalDevices].entry ^definition = "It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available, or that no relevant medical device use is known."
* section[sectionMedicalDevices].entry contains deviceStatement 0..*
* section[sectionMedicalDevices].entry[deviceStatement] MS
* section[sectionMedicalDevices].entry[deviceStatement] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips|2.0.1)
* insert IPSObligation(section[sectionMedicalDevices].entry[deviceStatement], Creator, #SHOULD:populate-if-known)
* insert IPSObligation(section[sectionMedicalDevices].entry[deviceStatement], Consumer, #SHALL:handle)
* insert IPSObligation(section[sectionMedicalDevices].entry[deviceStatement], Consumer, #SHOULD:display)
* section contains sectionAdvanceDirectives 0..1
* section[sectionAdvanceDirectives] MS
* insert IPSObligation(section[sectionAdvanceDirectives], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionAdvanceDirectives], Consumer, #SHALL:handle)
* section[sectionAdvanceDirectives] ^short = "IPS Advance Directives Section"
* section[sectionAdvanceDirectives] ^definition = "The advance directives section contains a narrative description of patient's advance directive."
* section[sectionAdvanceDirectives].extension[section-note] 0..*
* section[sectionAdvanceDirectives].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionAdvanceDirectives].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionAdvanceDirectives].code = http://loinc.org#42348-3
* section[sectionAdvanceDirectives].entry ^slicing.discriminator[0].type = #profile
* section[sectionAdvanceDirectives].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionAdvanceDirectives].entry ^slicing.rules = #open
* section[sectionAdvanceDirectives].entry only Reference(Consent or DocumentReference)
* section[sectionAdvanceDirectives].entry ^short = "Narrative description of the patient's advance directive."
* section[sectionAdvanceDirectives].entry ^definition = "Contains a narrative description or a Consent entry with information about the patient's advance directive."
* section[sectionAdvanceDirectives].entry contains advanceDirectivesConsent 0..*
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] only Reference(Consent)
* section contains sectionAlerts 0..1
* section[sectionAlerts] MS
* insert IPSObligation(section[sectionAlerts], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionAlerts], Consumer, #SHALL:handle)
* section[sectionAlerts] ^short = "IPS Alerts Section"
* section[sectionAlerts] ^definition = "The alerts section flags potential concerns and/or dangers to/from the patient and may also include obstacles to care."
* section[sectionAlerts].extension[section-note] 0..*
* section[sectionAlerts].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionAlerts].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionAlerts].code = http://loinc.org#104605-1
* section[sectionAlerts].entry ^slicing.discriminator[0].type = #profile
* section[sectionAlerts].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionAlerts].entry ^slicing.rules = #open
* section[sectionAlerts].entry only Reference(Flag or DocumentReference)
* section[sectionAlerts].entry ^short = "Alert information."
* section[sectionAlerts].entry ^definition = "Contains alert information to be communicated. May optionally reference other resources in IPS."
* section[sectionAlerts].entry contains alertsFlag 0..*
* section[sectionAlerts].entry[alertsFlag] only Reference(NZPSFlag)
* section contains sectionFunctionalStatus 0..1
* section[sectionFunctionalStatus] MS
* insert IPSObligation(section[sectionFunctionalStatus], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionFunctionalStatus], Consumer, #SHALL:handle)
* section[sectionFunctionalStatus] ^short = "IPS Functional Status"
* section[sectionFunctionalStatus] ^definition = "The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].extension[section-note] 0..*
* section[sectionFunctionalStatus].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionFunctionalStatus].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionFunctionalStatus].code = http://loinc.org#47420-5
* section[sectionFunctionalStatus].entry ^slicing.discriminator[0].type = #profile
* section[sectionFunctionalStatus].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionFunctionalStatus].entry ^slicing.rules = #open
* section[sectionFunctionalStatus].entry only Reference(Condition or ClinicalImpression or DocumentReference)
* section[sectionFunctionalStatus].entry ^short = "Optional entry used to represent disabilities and functional assessments"
* section[sectionFunctionalStatus].entry ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].entry contains disability 0..*
* section[sectionFunctionalStatus].entry[disability] only Reference(NZPSProblem)
* section[sectionFunctionalStatus].entry contains functionalAssessment 0..*
* section[sectionFunctionalStatus].entry[functionalAssessment] only Reference(ClinicalImpression)
* section contains sectionPastProblems 0..1
* section[sectionPastProblems] MS
* insert IPSObligation(section[sectionPastProblems], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionPastProblems], Consumer, #SHALL:handle)
* section[sectionPastProblems] ^short = "IPS History of Past Problems Section"
* section[sectionPastProblems] ^definition = "The History of Past Problems section contains a description of the conditions the patient suffered in the past but no longer tracked in the Problem List."
* section[sectionPastProblems].extension[section-note] 0..*
* section[sectionPastProblems].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPastProblems].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPastProblems].code = http://loinc.org#11348-0
* section[sectionPastProblems].entry ^slicing.discriminator[0].type = #profile
* section[sectionPastProblems].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionPastProblems].entry ^slicing.rules = #open
* section[sectionPastProblems].entry only Reference(Condition or DocumentReference)
* section[sectionPastProblems].entry ^short = "Conditions the patient suffered in the past."
* section[sectionPastProblems].entry ^definition = "It contains a description of the conditions the patient suffered in the past."
* section[sectionPastProblems].entry contains pastProblem 0..*
* section[sectionPastProblems].entry[pastProblem] only Reference(NZPSProblem)
* section contains sectionPregnancyHx 0..1
* section[sectionPregnancyHx] MS
* insert IPSObligation(section[sectionPregnancyHx], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionPregnancyHx], Consumer, #SHALL:handle)
* section[sectionPregnancyHx] ^short = "IPS History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "The history of pregnancy section shall contain information about whether the patient is currently pregnant or not.\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].extension[section-note] 0..*
* section[sectionPregnancyHx].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPregnancyHx].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPregnancyHx].code = http://loinc.org#10162-6
* section[sectionPregnancyHx].entry ^slicing.discriminator[0].type = #profile
* section[sectionPregnancyHx].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionPregnancyHx].entry ^slicing.rules = #open
* section[sectionPregnancyHx].entry only Reference(Observation or DocumentReference)
* section[sectionPregnancyHx].entry ^short = "Current pregnancy status and, optionally, information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry ^definition = "It contains information about whether the patient is currently pregnant or not.\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry contains pregnancyStatus 0..*
* section[sectionPregnancyHx].entry[pregnancyStatus] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips|2.0.1)
* section[sectionPregnancyHx].entry contains pregnancyOutcome 0..*
* section[sectionPregnancyHx].entry[pregnancyOutcome] only Reference(http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips|2.0.1)
* section contains sectionPatientStory 0..1
* section[sectionPatientStory] MS
* insert IPSObligation(section[sectionPatientStory], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionPatientStory], Consumer, #SHALL:handle)
* section[sectionPatientStory] ^short = "IPS Patient Story Section"
* section[sectionPatientStory] ^definition = "The section contains narrative text along with optional resources that express what matters to a patient. This may include needs, strengths, values, concerns and preferences to others providing support and care. The patient’s story, provided here, may be told by the patient or by a proxy."
* section[sectionPatientStory].extension[section-note] 0..*
* section[sectionPatientStory].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPatientStory].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPatientStory].code = http://loinc.org#81338-6
* section[sectionPatientStory].entry ^short = "Patient Story resources."
* section[sectionPatientStory].entry ^definition = "Contains resources to support the Patient Story. Instances of DocumentReference or any other suitable resource type may be used."
* section contains sectionPlanOfCare 0..1
* section[sectionPlanOfCare] MS
* insert IPSObligation(section[sectionPlanOfCare], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionPlanOfCare], Consumer, #SHALL:handle)
* section[sectionPlanOfCare] ^short = "IPS Plan of Care Section"
* section[sectionPlanOfCare] ^definition = "The plan of care section contains a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient."
* section[sectionPlanOfCare].extension[section-note] 0..*
* section[sectionPlanOfCare].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPlanOfCare].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionPlanOfCare].code = http://loinc.org#18776-5
* section[sectionPlanOfCare].entry ^slicing.discriminator[0].type = #profile
* section[sectionPlanOfCare].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionPlanOfCare].entry ^slicing.rules = #open
* section[sectionPlanOfCare].entry only Reference(CarePlan or ImmunizationRecommendation or DocumentReference)
* section[sectionPlanOfCare].entry ^short = "Optional entry used to represent structured care plans"
* section[sectionPlanOfCare].entry ^definition = "Dynamic, personalized plan including identified needed healthcare activity, health objectives and healthcare goals, relating to one or more specified health issues in a healthcare process [Source EN ISO 13940]"
* section[sectionPlanOfCare].entry contains carePlan 0..*
* section[sectionPlanOfCare].entry[carePlan] only Reference(CarePlan)
* section[sectionPlanOfCare].entry contains immunizationRecommendation 0..*
* section[sectionPlanOfCare].entry[immunizationRecommendation] only Reference(ImmunizationRecommendation)
* section contains sectionSocialHistory 0..1
* section[sectionSocialHistory] MS
* insert IPSObligation(section[sectionSocialHistory], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionSocialHistory], Consumer, #SHALL:handle)
* section[sectionSocialHistory] ^short = "IPS Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section contains a description of the person’s Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].extension[section-note] 0..*
* section[sectionSocialHistory].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionSocialHistory].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionSocialHistory].code = http://loinc.org#29762-2
* section[sectionSocialHistory].entry ^slicing.discriminator[0].type = #profile
* section[sectionSocialHistory].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionSocialHistory].entry ^slicing.rules = #open
* section[sectionSocialHistory].entry only Reference(Observation or DocumentReference)
* section[sectionSocialHistory].entry ^short = "Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^definition = "Description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry contains smokingTobaccoUse 0..1
* section[sectionSocialHistory].entry[smokingTobaccoUse] only Reference(NZPSObservationSmokingStatus)
* section[sectionSocialHistory].entry contains alcoholUse 0..1
* section[sectionSocialHistory].entry[alcoholUse] only Reference(NZPSObservationAlcoholUse)
* section contains sectionVitalSigns 0..1
* section[sectionVitalSigns] MS
* insert IPSObligation(section[sectionVitalSigns], Consumer, #SHOULD:display)
* insert IPSObligation(section[sectionVitalSigns], Consumer, #SHALL:handle)
* section[sectionVitalSigns] ^short = "IPS Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns] ^label = "Vital signs"
* section[sectionVitalSigns].extension[section-note] 0..*
* section[sectionVitalSigns].extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionVitalSigns].extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section[sectionVitalSigns].code = http://loinc.org#8716-3
* section[sectionVitalSigns].entry ^slicing.discriminator[0].type = #profile
* section[sectionVitalSigns].entry ^slicing.discriminator[0].path = "resolve()"
* section[sectionVitalSigns].entry ^slicing.rules = #open
* section[sectionVitalSigns].entry only Reference(Observation or DocumentReference)
* section[sectionVitalSigns].entry ^short = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^definition = "Notable vital signs or physical findings as: blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].entry contains vitalSign 0..*
* section[sectionVitalSigns].entry[vitalSign] only Reference(NZPSObservationVitalSigns)

Invariant: ips-comp-1
Description: "Either section.entry or emptyReason are present"
Expression: "(entry.reference.exists() or emptyReason.exists())"
XPath: "(/f:entry.reference and not /f:emptyReason) or (not(/f:emptyReason) and /f:entry.reference)"
Severity: #error

// IPS requirements from http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips|2.0.1
RuleSet: IPSBundleRequirements
* obeys bdl-ips-1
* identifier 1..
* identifier MS
* insert IPSObligation(identifier, Creator, #SHALL:populate)
* insert IPSObligation(identifier, Consumer, #SHALL:handle)
* type = #document (exactly)
* timestamp 1..
* timestamp MS
* insert IPSObligation(timestamp, Creator, #SHALL:populate)
* insert IPSObligation(timestamp, Consumer, #SHALL:handle)
* entry 2..
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.discriminator[1].type = #profile
* entry ^slicing.discriminator[1].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile."
* entry.fullUrl 1..
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains composition 1..1
* entry[composition] MS
* insert IPSObligation(entry[composition], Creator, #SHALL:populate)
* insert IPSObligation(entry[composition], Consumer, #SHALL:handle)
* insert IPSObligation(entry[composition], Consumer, #SHOULD:display)
* entry[composition].resource 1..
* entry[composition].resource only NZPSComposition
* entry contains patient 1..1
* entry[patient].resource 1..
* entry[patient].resource only NZPSPatient
* entry contains allergyintolerance 0..*
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only NZPSAllergyIntolerance
* entry contains careplan 0..*
* entry[careplan].resource 1..
* entry[careplan].resource only CarePlan
* entry contains clinicalimpression 0..*
* entry[clinicalimpression].resource 1..
* entry[clinicalimpression].resource only ClinicalImpression
* entry contains condition 0..*
* entry[condition].resource 1..
* entry[condition].resource only NZPSProblem
* entry contains consent 0..*
* entry[consent].resource 1..
* entry[consent].resource only Consent
* entry contains device 0..*
* entry[device].resource 1..
* entry[device].resource only Device
* entry contains deviceusestatement 0..*
* entry[deviceusestatement].resource 1..
* entry[deviceusestatement].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips
* entry contains diagnosticreport 0..*
* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only NZPSDiagnosticReport
* entry contains documentreference 0..*
* entry[documentreference].resource 1..
* entry[documentreference].resource only DocumentReference
* entry contains flag 0..*
* entry[flag].resource 1..
* entry[flag].resource only NZPSFlag
* entry contains imagingstudy 0..*
* entry[imagingstudy].resource 1..
* entry[imagingstudy].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/ImagingStudy-uv-ips
* entry contains immunization 0..*
* entry[immunization].resource 1..
* entry[immunization].resource only NZPSImmunization
* entry contains immunizationrecommendation 0..*
* entry[immunizationrecommendation].resource 1..
* entry[immunizationrecommendation].resource only ImmunizationRecommendation
* entry contains medication 0..*
* entry[medication].resource 1..
* entry[medication].resource only NZPSMedication
* entry contains medicationrequest 0..*
* entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only NZPSMedicationRequest
* entry contains medicationstatement 0..*
* entry[medicationstatement].resource 1..
* entry[medicationstatement].resource only NZPSMedicationStatement
* entry contains practitioner 0..*
* entry[practitioner].resource 1..
* entry[practitioner].resource only NZPSPractitioner
* entry contains practitionerrole 0..*
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only NZPSPractitionerRole
* entry contains procedure 0..*
* entry[procedure].resource 1..
* entry[procedure].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
* entry contains observation-pregnancy-edd 0..*
* entry[observation-pregnancy-edd].resource 1..
* entry[observation-pregnancy-edd].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips
* entry contains observation-pregnancy-outcome 0..*
* entry[observation-pregnancy-outcome].resource 1..
* entry[observation-pregnancy-outcome].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips
* entry contains observation-pregnancy-status 0..*
* entry[observation-pregnancy-status].resource 1..
* entry[observation-pregnancy-status].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips
* entry contains observation-alcohol-use 0..*
* entry[observation-alcohol-use].resource 1..
* entry[observation-alcohol-use].resource only NZPSObservationAlcoholUse
* entry contains observation-tobacco-use 0..*
* entry[observation-tobacco-use].resource 1..
* entry[observation-tobacco-use].resource only NZPSObservationSmokingStatus
* entry contains observation-results-laboratory-pathology 0..*
* entry[observation-results-laboratory-pathology].resource 1..
* entry[observation-results-laboratory-pathology].resource only NZPSObservationResultsLaboratoryPathology
* entry contains observation-results-radiology 0..*
* entry[observation-results-radiology].resource 1..
* entry[observation-results-radiology].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
* entry contains observation-vital-signs 0..*
* entry[observation-vital-signs].resource 1..
* entry[observation-vital-signs].resource only NZPSObservationVitalSigns
* entry contains organization 0..*
* entry[organization].resource 1..
* entry[organization].resource only NZPSOrganization
* entry contains specimen 0..*
* entry[specimen].resource 1..
* entry[specimen].resource only http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips

Invariant: bdl-ips-1
Description: "An IPS document must have no additional Composition (including Composition subclass) resources besides the first."
Expression: "entry.tail().where(resource is Composition).empty()"
Severity: #error
