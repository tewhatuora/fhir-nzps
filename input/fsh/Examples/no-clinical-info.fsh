Alias: $loinc = http://loinc.org
Alias: $list-empty-reason = http://terminology.hl7.org/CodeSystem/list-empty-reason
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $nz-ethnic-group-codes = https://standards.digital.health.nz/ns/nz-ethnic-group-codes
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Instance: NZPSNoClinicalInfoBundle
InstanceOf: Bundle
Usage: #example
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-bundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8f718d0c-2b2d-4bc8-8f28-1fc4aa419501"
* type = #document
* timestamp = "2026-04-09T10:15:00+12:00"
* entry[0].fullUrl = "urn:uuid:9078ff0b-2ff0-4d38-aa30-cf96d1d2d2ab"
* entry[=].resource = NZPSNoClinicalInfoComposition
* entry[+].fullUrl = "urn:uuid:6b58fcac-f2ff-4c11-9609-ec92265e6496"
* entry[=].resource = NZPSNoClinicalInfoPatient
* entry[+].fullUrl = "urn:uuid:29ea7d2c-0bb6-45c5-8b78-dd0e32b716fd"
* entry[=].resource = NZPSNoClinicalInfoPractitioner
* entry[+].fullUrl = "urn:uuid:53fcfe4b-c917-4d59-a245-269ba916d3aa"
* entry[=].resource = NZPSNoClinicalInfoOrganization
* entry[+].fullUrl = "urn:uuid:3d629d2a-8187-4e3d-bbef-1d885eb89a9d"
* entry[=].resource = NZPSNoKnownProblem
* entry[+].fullUrl = "urn:uuid:6ae9df95-c5dd-4cca-a1f4-95ca3ddca0b1"
* entry[=].resource = NZPSNoKnownAllergy
* entry[+].fullUrl = "urn:uuid:f6230cd3-c0cc-4b98-b38e-1d1e2827e86c"
* entry[=].resource = NZPSNoKnownMedicationStatement

Instance: NZPSNoClinicalInfoComposition
InstanceOf: Composition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-composition"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(NZPSNoClinicalInfoPatient)
* date = "2026-04-09T10:15:00+12:00"
* author = Reference(NZPSNoClinicalInfoPractitioner)
* title = "New Zealand Patient Summary"
* custodian = Reference(NZPSNoClinicalInfoOrganization)
* section[0].title = "Medications"
* section[=].code = $loinc#10160-0 "History of medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No known current medicines.</div>"
* section[=].entry = Reference(NZPSNoKnownMedicationStatement)
* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No known allergies.</div>"
* section[=].entry = Reference(NZPSNoKnownAllergy)
* section[+].title = "Problems"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No known current problems or disability.</div>"
* section[=].entry = Reference(NZPSNoKnownProblem)
* section[+].title = "Immunizations"
* section[=].code = $loinc#11369-6 "History of immunizations"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No immunization history is known for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"
* section[+].title = "Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests and/or laboratory data"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No diagnostic results are known for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"
* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No vital signs are known for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"
* section[+].title = "Past Problems"
* section[=].code = $loinc#11348-0 "History of past illness Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No past problems are known for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"
* section[+].title = "Functional Status"
* section[=].code = $loinc#47420-5
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional status has not been recorded for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#notasked "Not Asked"
* section[+].title = "Patient Story"
* section[=].code = $loinc#81338-6 "Patient story"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No patient story has been recorded for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#notasked "Not Asked"
* section[+].title = "Plan of Care"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No active plan of care is known for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"
* section[+].title = "Social History"
* section[=].code = $loinc#29762-2 "Social history Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social history has not been recorded for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#notasked "Not Asked"
* section[+].title = "Advance Directives"
* section[=].code = $loinc#42348-3 "Advance directives"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No advance directives are known for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#notasked "Not Asked"
* section[+].title = "Encounters"
* section[=].code = $v3-ActClass#ENC "encounter"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No recent encounters are known for this example patient.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"

Instance: NZPSNoClinicalInfoPatient
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-patient"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension.valueCodeableConcept = $nz-ethnic-group-codes#21111 "Maori"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZMC3491"
* active = true
* name.use = #official
* name.family = "Ngata"
* name.given = "Ariana"
* telecom[0].system = #phone
* telecom[=].value = "+64 21 555 0184"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "ariana.ngata@example.nz"
* gender = #female
* birthDate = "1989-07-14"
* address.use = #home
* address.type = #physical
* address.line = "24 Kowhai Street"
* address.city = "Rotorua"
* address.postalCode = "3010"
* address.country = "NZ"

Instance: NZPSNoClinicalInfoPractitioner
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-ppractitioner"
* active = true
* name.family = "Wilson"
* name.given = "Hana"

Instance: NZPSNoClinicalInfoOrganization
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/NZPS-organization"
* active = true
* name = "Lakes Community Health Centre"

Instance: NZPSNoKnownProblem
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* clinicalStatus = $condition-clinical#active "Active"
* category = $condition-category#problem-list-item "Problem List Item"
* code.text = "No known current problems or disability"
* subject = Reference(NZPSNoClinicalInfoPatient)
* recordedDate = "2026-04-09T10:15:00+12:00"

Instance: NZPSNoKnownAllergy
InstanceOf: AllergyIntolerance
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-allergyintolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* code.text = "No known allergies"
* patient = Reference(NZPSNoClinicalInfoPatient)
* recordedDate = "2026-04-09T10:15:00+12:00"

Instance: NZPSNoKnownMedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* status = #active
* medicationCodeableConcept.text = "No known current medications"
* subject = Reference(NZPSNoClinicalInfoPatient)
* effectiveDateTime = "2026-04-09T10:15:00+12:00"