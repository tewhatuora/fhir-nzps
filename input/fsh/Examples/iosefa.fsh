Alias: $loinc = http://loinc.org
Alias: $list-empty-reason = http://terminology.hl7.org/CodeSystem/list-empty-reason
Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $nz-practitioner-role-code = https://standards.digital.health.nz/ns/nz-practitioner-role-code
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $nzmt = http://nzmt.org.nz
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $immunisation-code = https://standards.digital.health.nz/ns/immunisation-code
Alias: $v3-ActSite = http://terminology.hl7.org/CodeSystem/v3-ActSite
Alias: $v3-RouteOfAdministration = http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration
Alias: $v2-0443 = http://terminology.hl7.org/CodeSystem/v2-0443
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

Instance: IosefaFuimaono-Bundle
InstanceOf: Bundle
Usage: #example
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-bundle"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:79c87f51-3fcc-437e-ad12-2ad2b95b2321"
* type = #document
* timestamp = "2023-11-26T09:37:19+00:00"
* entry[0].fullUrl = "urn:uuid:2c462fa5-c18d-4fe6-b583-6d981f79f4e8"
* entry[=].resource = IosefaFuimaono-Composition
* entry[+].fullUrl = "urn:uuid:036f662687f7d30f8204d43dc9f48d3f"
* entry[=].resource = IosefaFuimaono-Patient
* entry[+].fullUrl = "urn:uuid:33c4a7626b35b4ceb5fd1cc32b5f93df"
* entry[=].resource = DrJamesTestSmith-Practitioner
* entry[+].fullUrl = "urn:uuid:9953dad2925ab4f7fa3a2eff5fa5fc25"
* entry[=].resource = DrJamesTestSmith-PractitionerRole
* entry[+].fullUrl = "urn:uuid:fab8a5ac1c4e5706198e1b493950fb74"
* entry[=].resource = TrainingDatabase-Organization
* entry[+].fullUrl = "urn:uuid:48ca96b1b18156892219d1677da61311"
* entry[=].resource = NeckOfFemurFracture-Condition
* entry[+].fullUrl = "urn:uuid:02fbdd1b0da8ba4eefc444cf486250c4"
* entry[=].resource = Type2Diabetes-Condition
* entry[+].fullUrl = "urn:uuid:74b42c9b1f42eaf8e85bb36a5658fb41"
* entry[=].resource = Gout-Condition
* entry[+].fullUrl = "urn:uuid:b7d026c435307a67da16b541c27394dd"
* entry[=].resource = Hypertension-Condition
* entry[+].fullUrl = "urn:uuid:b0aea1cbb4d9f62301f116b8b6e6ffc5"
* entry[=].resource = HipFractureRepair-Condition
* entry[+].fullUrl = "urn:uuid:1a8dffadb213ef5b67b37b1644801e69"
* entry[=].resource = WalkingAid-Condition
* entry[+].fullUrl = "urn:uuid:5253154ae81536f2d40c111d7bbfb8e9"
* entry[=].resource = Losartan-MedicationStatement
* entry[+].fullUrl = "urn:uuid:9ca9432b46c084cad83347dbcf464820"
* entry[=].resource = InsulinGlargine-MedicationStatement
* entry[+].fullUrl = "urn:uuid:88423fa47cc3b84d83d02e9094c200cb"
* entry[=].resource = Dulaglutide-MedicationStatement
* entry[+].fullUrl = "urn:uuid:2ef824b7138563c6223d8b1a5187af3a"
* entry[=].resource = Metformin-MedicationStatement
* entry[+].fullUrl = "urn:uuid:ecdae4372aa167d1380def606d69c7e5"
* entry[=].resource = Amlodipine-MedicationStatement
* entry[+].fullUrl = "urn:uuid:8bd8c9ba09ab3681ba54e7e03fb0b403"
* entry[=].resource = Aspirin-MedicationStatement
* entry[+].fullUrl = "urn:uuid:62549ba6c27b5d0afdbeef3b7f77803c"
* entry[=].resource = Allopurinol-MedicationStatement
* entry[+].fullUrl = "urn:uuid:2f2747acd1288279ac39e2a09ebd0e57"
* entry[=].resource = Diazepam-AllergyIntolerance
* entry[+].fullUrl = "urn:uuid:7b634530b7b02f838a53008070506508"
* entry[=].resource = FluVaccine2015-Immunization
* entry[+].fullUrl = "urn:uuid:2eb5ee1650806e5c9f5d9cca2bc353fd"
* entry[=].resource = PCV13-Immunization
* entry[+].fullUrl = "urn:uuid:07b9d9377576d4a893205190d66ae17c"
* entry[=].resource = FluVaccine2019-Immunization
* entry[+].fullUrl = "urn:uuid:ab27e21761f52344df7c954f54afb3cc"
* entry[=].resource = TdapAdult-Immunization
* entry[+].fullUrl = "urn:uuid:6aaa45c30aab6f5da7c7f13a2fa035e0"
* entry[=].resource = COVID19Dose1-Immunization
* entry[+].fullUrl = "urn:uuid:65da648ba7a1d796c72e5a2af8747945"
* entry[=].resource = COVID19Dose2-Immunization
* entry[+].fullUrl = "urn:uuid:273b1118abd62a58ea39de94dec2254c"
* entry[=].resource = HbA1c-Observation
* entry[+].fullUrl = "urn:uuid:e5092ac2a96575423d0c24a34467530d"
* entry[=].resource = LDL-Observation
* entry[+].fullUrl = "urn:uuid:e7e97c3f132a641f0f1fd15701d24073"
* entry[=].resource = TotalCholesterol-Observation
* entry[+].fullUrl = "urn:uuid:b4f44ff5e0e630804b846e61933df15e"
* entry[=].resource = HDL-Observation
* entry[+].fullUrl = "urn:uuid:020731df5eea5c0eaf4a600985814d39"
* entry[=].resource = BloodPressure-Observation
* entry[+].fullUrl = "urn:uuid:1b8c11ab07360666a849008d5c383760"
* entry[=].resource = HeartRate-Observation
* entry[+].fullUrl = "urn:uuid:68aa862c7d803fb339c1dab856053940"
* entry[=].resource = BodyHeight-Observation
* entry[+].fullUrl = "urn:uuid:3ec9fa7e620474cddb8928cc3096dbaf"
* entry[=].resource = BodyWeight-Observation
* entry[+].fullUrl = "urn:uuid:06b2cb39d2f19ff8c2e1080d8e9e199e"
* entry[=].resource = SmokingStatus-Observation

Instance: IosefaFuimaono-Composition
InstanceOf: Composition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-composition"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(IosefaFuimaono-Patient)
* date = "2023-11-26T09:37:18+13:00"
* author = Reference(DrJamesTestSmith-PractitionerRole)
* title = "New Zealand Patient Summary"
* custodian = Reference(TrainingDatabase-Organization)
* section[0].title = "Medications"
* section[=].code = $loinc#10160-0 "History of medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Losartan potassium 50 mg tablet – 1 tablet daily (oral)</li><li>Insulin glargine (Lantus) 100 IU/mL – 20 units per day (injection)</li><li>Dulaglutide 1.5 mg/0.5 mL – 1 injection weekly</li><li>Metformin – twice daily</li><li>Amlodipine 5 mg tablet – 1 tablet daily (oral)</li><li>Aspirin 75 mg – 1 tablet daily (oral)</li><li>Allopurinol 300 mg tablet – 1 tablet nightly (oral)</li></ul></div>"
* section[=].entry[0] = Reference(Losartan-MedicationStatement)
* section[=].entry[+] = Reference(InsulinGlargine-MedicationStatement)
* section[=].entry[+] = Reference(Dulaglutide-MedicationStatement)
* section[=].entry[+] = Reference(Metformin-MedicationStatement)
* section[=].entry[+] = Reference(Amlodipine-MedicationStatement)
* section[=].entry[+] = Reference(Aspirin-MedicationStatement)
* section[=].entry[+] = Reference(Allopurinol-MedicationStatement)
* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Diazepam – confirmed allergy. Experienced increased confusion and headaches when prescribed for anxiety and difficulty sleeping.</p></div>"
* section[=].entry = Reference(Diazepam-AllergyIntolerance)
* section[+].title = "Problems"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Fracture of neck of femur (left hip) – onset June 2019</li><li>Type 2 diabetes mellitus – onset February 2011, on insulin</li><li>Gout – onset March 2015</li><li>Benign essential hypertension (mild) – onset October 2012</li></ul></div>"
* section[=].entry[0] = Reference(NeckOfFemurFracture-Condition)
* section[=].entry[+] = Reference(Type2Diabetes-Condition)
* section[=].entry[+] = Reference(Gout-Condition)
* section[=].entry[+] = Reference(Hypertension-Condition)
* section[+].title = "Immunizations"
* section[=].code = $loinc#11369-6 "History of Immunization Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Influenza (Flu 65+) – June 2015</li><li>Pneumococcal PCV13 High Risk – July 2015</li><li>Influenza (Flu 65+) – June 2019</li><li>Tdap adult – June 2019</li><li>COVID-19 Comirnaty dose 1 – July 2021</li><li>COVID-19 Comirnaty dose 2 – August 2022</li></ul></div>"
* section[=].entry[0] = Reference(FluVaccine2015-Immunization)
* section[=].entry[+] = Reference(PCV13-Immunization)
* section[=].entry[+] = Reference(FluVaccine2019-Immunization)
* section[=].entry[+] = Reference(TdapAdult-Immunization)
* section[=].entry[+] = Reference(COVID19Dose1-Immunization)
* section[=].entry[+] = Reference(COVID19Dose2-Immunization)
* section[+].title = "Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests and/or laboratory data"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Results from 5 March 2023:</p><ul><li>HbA1c: 60 mmol/mol</li><li>LDL cholesterol: 3.4 mmol/L</li><li>Total cholesterol: 5.1 mmol/L</li><li>HDL cholesterol: 1.5 mmol/L</li></ul></div>"
* section[=].entry[0] = Reference(HbA1c-Observation)
* section[=].entry[+] = Reference(LDL-Observation)
* section[=].entry[+] = Reference(TotalCholesterol-Observation)
* section[=].entry[+] = Reference(HDL-Observation)
* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Most recent readings (25 November 2023):</p><ul><li>Blood pressure: 136/88 mmHg</li><li>Heart rate: 84 bpm</li><li>Height: 1.84 m</li><li>Weight: 104 kg (29 September 2023)</li></ul></div>"
* section[=].entry[0] = Reference(BloodPressure-Observation)
* section[=].entry[+] = Reference(HeartRate-Observation)
* section[=].entry[+] = Reference(BodyHeight-Observation)
* section[=].entry[+] = Reference(BodyWeight-Observation)
* section[+].title = "Past Problems"
* section[=].code = $loinc#11348-0 "History of past illness Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Primary open reduction and internal fixation of left proximal femoral fracture – June 2019. Concussion symptoms ongoing following fall.</li></ul></div>"
* section[=].entry = Reference(HipFractureRepair-Condition)
* section[+].title = "Functional Status"
* section[=].code = $loinc#47420-5 "Functional status assessment note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Uses a walking frame or electric scooter. Often confused, struggles to communicate in English. Relies on caregiver Cindy for assistance with many activities of daily living. Does not leave the house much. Family arranging transfer to residential care.</p></div>"
* section[=].entry = Reference(WalkingAid-Condition)
* section[+].title = "Patient Story"
* section[=].code = $loinc#81338-6 "Patient story"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Iosefa is a 73-year-old Samoan man who speaks Samoan as his primary language. He lives in Hamilton and relies heavily on his next of kin Cindy Fuimaono. He uses a walking frame or electric scooter to get around and rarely leaves the home. Family is in the process of arranging a transfer to residential care.</p></div>"
* section[=].emptyReason = $list-empty-reason#notasked "Not Asked"
* section[+].title = "Plan of Care"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No active plan of care recorded.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"
* section[+].title = "Social History"
* section[=].code = $loinc#29762-2 "Social history Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Ex-smoker. Was smoking 30 packs per year, quit in 2005 (1-9 cigarettes/day, light smoker).</p></div>"
* section[=].entry = Reference(SmokingStatus-Observation)
* section[+].title = "Advance Directives"
* section[=].code = $loinc#42348-3 "Advance directives"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No advance directives recorded.</div>"
* section[=].emptyReason = $list-empty-reason#notasked "Not Asked"

Instance: IosefaFuimaono-Patient
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-patient"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept = $ethnic-group-level-4-code#31111 "Samoan"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.country = "Samoa"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZZZ0016"
* active = true
* name.use = #official
* name.family = "Fuimaono"
* name.given = "Iosefa"
* name.prefix = "Mr"
* telecom.system = #phone
* telecom.value = "021111111"
* telecom.use = #mobile
* gender = #male
* birthDate = "1950-07-04"
* address.use = #home
* address.type = #physical
* address.line[0] = "Brooklyn Street"
* address.line[+] = "Claudelands"
* address.city = "Hamilton"
* address.postalCode = "3214"
* address.country = "NZ"
* contact.relationship = $v2-0131#N "Next-of-kin"
* contact.name.family = "Fuimaono"
* contact.name.given = "Cindy"
* contact.telecom.system = #phone
* contact.telecom.value = "021111111"
* contact.telecom.use = #mobile
* communication.language = urn:ietf:bcp:47#sm "Samoan"
* generalPractitioner = Reference(DrJamesTestSmith-PractitionerRole) "Dr James Test-Smith"

Instance: DrJamesTestSmith-Practitioner
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-ppractitioner"
* active = true
* name.family = "Test-Smith"
* name.given = "James"
* name.prefix = "Dr"

Instance: DrJamesTestSmith-PractitionerRole
InstanceOf: PractitionerRole
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-ppractitionerRole"
* practitioner = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* organization = Reference(TrainingDatabase-Organization)
* code = $nz-practitioner-role-code#enrolledGP "Enrolled GP"

Instance: TrainingDatabase-Organization
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-organization"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier.value = "F99820-C"
* active = true
* name = "Training Database"

Instance: NeckOfFemurFracture-Condition
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension.valueBoolean = true
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#263220003 "Fracture of neck of femur"
* code.text = "Fracture of neck of femur"
* subject = Reference(IosefaFuimaono-Patient)
* onsetDateTime = "2019-06-08"
* recordedDate = "2023-11-26T09:58:31+13:00"
* recorder = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* note.text = "Left hip fracture"

Instance: Type2Diabetes-Condition
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension.valueBoolean = true
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#44054006 "Diabetes mellitus type 2"
* code.text = "Type 2 diabetes mellitus"
* subject = Reference(IosefaFuimaono-Patient)
* onsetDateTime = "2011-02-05"
* recordedDate = "2023-11-26T10:02:45+13:00"
* recorder = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* note.text = "On insulin"

Instance: Gout-Condition
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension.valueBoolean = true
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#90560007 "Gout"
* code.text = "Gout"
* subject = Reference(IosefaFuimaono-Patient)
* onsetDateTime = "2015-03-18"
* recordedDate = "2023-11-26T10:05:13+13:00"
* recorder = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"

Instance: Hypertension-Condition
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension.valueBoolean = true
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#255604002 "Mild"
* code = $sct#1201005 "Benign essential hypertension"
* code.text = "Benign essential hypertension"
* subject = Reference(IosefaFuimaono-Patient)
* onsetDateTime = "2012-10-24"
* recordedDate = "2023-11-26T10:07:25+13:00"
* recorder = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"

Instance: HipFractureRepair-Condition
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension.valueBoolean = true
* clinicalStatus = $condition-clinical#resolved "Resolved"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#57356009 "Open reduction of fracture with internal fixation"
* code.text = "Primary open reduction and internal fixation of proximal femoral fracture"
* subject = Reference(IosefaFuimaono-Patient)
* onsetDateTime = "2019-06-08"
* recordedDate = "2023-11-26T10:24:06+13:00"
* recorder = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* note.text = "Left femur fracture. Concussion symptoms still ongoing following fall in 2019."

Instance: WalkingAid-Condition
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension.valueBoolean = true
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#444661007 "Uses walking aid"
* code.text = "Walking aid use"
* subject = Reference(IosefaFuimaono-Patient)
* onsetDateTime = "2019-06-30"
* recordedDate = "2023-11-26T10:29:07+13:00"
* recorder = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* note.text = "Uses a walker or scooter"

Instance: Losartan-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10195211000116102 "Losartan potassium 50 mg tablet"
* medicationCodeableConcept.text = "Losartan potassium 50 mg tablet"
* subject = Reference(IosefaFuimaono-Patient)
* dateAsserted = "2023-11-25"
* informationSource = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* dosage.text = "1 tablet daily"
* dosage.route = $sct#26643006 "Oral route"

Instance: InsulinGlargine-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10368321000116100 "Insulin glargine 100 units/mL injection, 3 mL cartridge"
* medicationCodeableConcept.text = "Lantus – insulin glargine 100 IU/mL injection, 3 mL cartridge"
* subject = Reference(IosefaFuimaono-Patient)
* dateAsserted = "2023-11-25"
* informationSource = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* dosage.text = "20 units per day"
* dosage.route = $sct#34206005 "Subcutaneous route"

Instance: Dulaglutide-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#47230201000116108 "Dulaglutide 1.5 mg/0.5 mL injection, pen"
* medicationCodeableConcept.text = "Dulaglutide 1.5 mg/0.5 mL injection pen"
* subject = Reference(IosefaFuimaono-Patient)
* dateAsserted = "2023-11-25"
* informationSource = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* dosage.text = "1 injection every week"
* dosage.route = $sct#34206005 "Subcutaneous route"

Instance: Metformin-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $sct#372567009 "Metformin"
* medicationCodeableConcept.text = "Metformin"
* subject = Reference(IosefaFuimaono-Patient)
* dateAsserted = "2023-11-25"
* informationSource = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* dosage.text = "Twice daily – 1 in morning and 1 at night"
* dosage.route = $sct#26643006 "Oral route"

Instance: Amlodipine-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10109621000116108 "Amlodipine 5 mg tablet"
* medicationCodeableConcept.text = "Amlodipine 5 mg tablet"
* subject = Reference(IosefaFuimaono-Patient)
* dateAsserted = "2023-11-25"
* informationSource = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* dosage.text = "1 tablet daily"
* dosage.route = $sct#26643006 "Oral route"

Instance: Aspirin-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $sct#387458008 "Aspirin"
* medicationCodeableConcept.text = "Aspirin 75 mg tablet"
* subject = Reference(IosefaFuimaono-Patient)
* dateAsserted = "2023-11-25"
* informationSource = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* dosage.text = "1 tablet daily – 75 mg"
* dosage.route = $sct#26643006 "Oral route"

Instance: Allopurinol-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10030521000116104 "Allopurinol 300 mg tablet"
* medicationCodeableConcept.text = "Allopurinol 300 mg tablet"
* subject = Reference(IosefaFuimaono-Patient)
* dateAsserted = "2023-11-25"
* informationSource = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* dosage.text = "1 tablet nightly"
* dosage.route = $sct#26643006 "Oral route"

Instance: Diazepam-AllergyIntolerance
InstanceOf: AllergyIntolerance
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-allergyintolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* code = $sct#372814008 "Diazepam"
* code.text = "Diazepam"
* patient = Reference(IosefaFuimaono-Patient)
* onsetDateTime = "2023-11-26"
* recordedDate = "2023-11-26T10:34:09+13:00"
* recorder = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* note.text = "Prescribed diazepam for anxiety and difficulty sleeping. Experienced increased confusion and headaches, which went away after stopping the drug."

Instance: FluVaccine2015-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#99006 "Flu 65+"
* vaccineCode.coding[+] = $sct#46233009 "Influenza virus vaccine"
* vaccineCode.text = "Influenza"
* patient = Reference(IosefaFuimaono-Patient)
* occurrenceDateTime = "2015-06-01"
* recorded = "2015-06-01"
* lotNumber = "P9076556"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"

Instance: PCV13-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#133 "PCV13 High Risk"
* vaccineCode.coding[+] = $sct#333607001 "Pneumococcal 13-valent conjugate vaccine"
* vaccineCode.text = "Pneumococcal conjugate vaccine, 13 valent"
* patient = Reference(IosefaFuimaono-Patient)
* occurrenceDateTime = "2015-07-01"
* recorded = "2015-07-01"
* lotNumber = "U456789"
* site = $v3-ActSite#RA "Right Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"

Instance: FluVaccine2019-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#99006 "Flu 65+"
* vaccineCode.coding[+] = $sct#46233009 "Influenza virus vaccine"
* vaccineCode.text = "Influenza"
* patient = Reference(IosefaFuimaono-Patient)
* occurrenceDateTime = "2019-06-01"
* recorded = "2019-06-01"
* lotNumber = "Y789T75"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"

Instance: TdapAdult-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#99012 "Tdap adult (misc)"
* vaccineCode.coding[+] = $sct#871875004 "Vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens"
* vaccineCode.text = "Diphtheria adult dosage, Tetanus, acellular Pertussis"
* patient = Reference(IosefaFuimaono-Patient)
* occurrenceDateTime = "2019-06-08"
* recorded = "2019-06-08"
* lotNumber = "12345"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"

Instance: COVID19Dose1-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#208 "COVID19 Comirnaty"
* vaccineCode.coding[+] = $sct#1119349007 "COVID-19 mRNA vaccine"
* vaccineCode.text = "COVID-19 Comirnaty (Pfizer/BioNTech)"
* patient = Reference(IosefaFuimaono-Patient)
* occurrenceDateTime = "2021-07-14"
* recorded = "2021-07-14"
* lotNumber = "2907888"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* note.text = "Dose 1"

Instance: COVID19Dose2-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#208 "COVID19 Comirnaty"
* vaccineCode.coding[+] = $sct#1119349007 "COVID-19 mRNA vaccine"
* vaccineCode.text = "COVID-19 Comirnaty (Pfizer/BioNTech)"
* patient = Reference(IosefaFuimaono-Patient)
* occurrenceDateTime = "2022-08-04"
* recorded = "2022-08-04"
* lotNumber = "56789"
* site = $v3-ActSite#RA "Right Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* note.text = "Dose 2"

Instance: HbA1c-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-results-laboratory-pathology"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* code.coding[+] = $sct#43396009 "Haemoglobin A1c measurement"
* code.text = "HbA1c"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-03-05T10:46:20+13:00"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueQuantity = 60 'mmol/mol' "mmol/mol"

Instance: LDL-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-results-laboratory-pathology"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#18262-6 "LDL Cholesterol [Mass/volume] in Serum or Plasma by Direct assay"
* code.coding[+] = $sct#22644003 "Serum LDL cholesterol measurement"
* code.text = "LDL cholesterol"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-03-05T10:46:24+13:00"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueQuantity = 3.4 'mmol/L' "mmol/L"

Instance: TotalCholesterol-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-results-laboratory-pathology"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* code.coding[+] = $sct#121868005 "Total cholesterol measurement"
* code.text = "Total cholesterol"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-03-05T10:46:26+13:00"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueQuantity = 5.1 'mmol/L' "mmol/L"

Instance: HDL-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-results-laboratory-pathology"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#2085-9 "HDL Cholesterol [Mass/volume] in Serum or Plasma"
* code.coding[+] = $sct#17888004 "High density lipoprotein cholesterol measurement"
* code.text = "HDL cholesterol"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-03-05T10:46:27+13:00"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueQuantity = 1.5 'mmol/L' "mmol/L"

Instance: BloodPressure-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile[0] = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bp"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-11-25T14:20:33+13:00"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 136 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 88 'mm[Hg]' "mmHg"

Instance: HeartRate-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile[0] = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/heartrate"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* code.text = "Heart rate"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-11-25T14:20:11+13:00"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueQuantity = 84 '/min' "beats/minute"

Instance: BodyHeight-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile[0] = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodyheight"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* code.text = "Body height"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-11-25T14:21:02+13:00"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueQuantity = 184 'cm' "cm"

Instance: BodyWeight-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile[0] = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodyweight"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* code.text = "Body weight"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-09-29"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueQuantity = 104 'kg' "kg"

Instance: SmokingStatus-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-smokingstatus"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#72166-2 "Tobacco smoking status"
* code.text = "Tobacco smoking status"
* subject = Reference(IosefaFuimaono-Patient)
* effectiveDateTime = "2023-11-26"
* performer = Reference(DrJamesTestSmith-Practitioner) "Dr James Test-Smith"
* valueCodeableConcept = $sct#8517006 "Ex-smoker"
* valueCodeableConcept.text = "Ex-smoker"
* note.text = "Was smoking 30 packs per year, quit in 2005. Previously 1-9 cigarettes per day (light smoker)."