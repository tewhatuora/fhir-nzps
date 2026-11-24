Alias: $loinc = http://loinc.org
Alias: $list-empty-reason = http://terminology.hl7.org/CodeSystem/list-empty-reason
Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $nz-practitioner-role-code = https://standards.digital.health.nz/ns/nz-practitioner-role-code
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $nzmt = http://nzmt.org.nz
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $immunisation-code = https://standards.digital.health.nz/ns/immunisation-code
Alias: $cvx = http://hl7.org/fhir/sid/cvx
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
* entry[+].fullUrl = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* entry[=].resource = IosefaFuimaono-Patient
* entry[+].fullUrl = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* entry[=].resource = DrJamesTestSmith-Practitioner
* entry[+].fullUrl = "urn:uuid:7cf77ce3-bf39-4c20-adf9-50628735ed60"
* entry[=].resource = DrJamesTestSmith-PractitionerRole
* entry[+].fullUrl = "urn:uuid:88c23f6b-6912-4ad6-8204-e175f1293c0a"
* entry[=].resource = TrainingDatabase-Organization
* entry[+].fullUrl = "urn:uuid:111cf42a-02a4-4ced-957f-5f245ab03a5a"
* entry[=].resource = NeckOfFemurFracture-Condition
* entry[+].fullUrl = "urn:uuid:ce6b17dd-3ac7-4ac6-a9d6-fbd24199dd7a"
* entry[=].resource = Type2Diabetes-Condition
* entry[+].fullUrl = "urn:uuid:46a75554-b347-4797-8393-3c2e25dde3c1"
* entry[=].resource = Gout-Condition
* entry[+].fullUrl = "urn:uuid:5edc498e-ddad-4aa6-9ee9-e6f1d92bb9d3"
* entry[=].resource = Hypertension-Condition
* entry[+].fullUrl = "urn:uuid:9f82bb17-176f-43e7-aa4f-25050bc024a5"
* entry[=].resource = HipFractureRepair-Condition
* entry[+].fullUrl = "urn:uuid:94a68017-b31e-4a64-a66e-33ef5202b922"
* entry[=].resource = WalkingAid-Condition
* entry[+].fullUrl = "urn:uuid:685e2887-668f-4ee8-aa84-3c4d92be61ab"
* entry[=].resource = Losartan-MedicationStatement
* entry[+].fullUrl = "urn:uuid:f1720983-ec54-418d-b8ff-1069876109d3"
* entry[=].resource = InsulinGlargine-MedicationStatement
* entry[+].fullUrl = "urn:uuid:6ed2ce68-70c9-4b1e-a75b-7336db209460"
* entry[=].resource = Dulaglutide-MedicationStatement
* entry[+].fullUrl = "urn:uuid:88683888-e91a-40df-badd-8502af73047b"
* entry[=].resource = Metformin-MedicationStatement
* entry[+].fullUrl = "urn:uuid:bcef6cbf-81a5-4aaa-bd0c-cfed5deb25be"
* entry[=].resource = Amlodipine-MedicationStatement
* entry[+].fullUrl = "urn:uuid:f558ef12-e86e-4454-af32-2477735fe1e9"
* entry[=].resource = Aspirin-MedicationStatement
* entry[+].fullUrl = "urn:uuid:a44f7927-5a4c-4294-bf28-f4683f07d37c"
* entry[=].resource = Allopurinol-MedicationStatement
* entry[+].fullUrl = "urn:uuid:9e9a0b35-b0b0-49b8-bfaa-7abd77825119"
* entry[=].resource = Diazepam-AllergyIntolerance
* entry[+].fullUrl = "urn:uuid:0332f541-d3cd-4a00-b705-6440add8f13c"
* entry[=].resource = FluVaccine2015-Immunization
* entry[+].fullUrl = "urn:uuid:9c9b44f3-4605-41df-a8da-75c09b95c096"
* entry[=].resource = PCV13-Immunization
* entry[+].fullUrl = "urn:uuid:80c2c48e-1c7e-4192-af0d-0a999b1a156c"
* entry[=].resource = FluVaccine2019-Immunization
* entry[+].fullUrl = "urn:uuid:5f9711c2-172e-495e-b847-a32fdb94ffb9"
* entry[=].resource = TdapAdult-Immunization
* entry[+].fullUrl = "urn:uuid:c471c5ec-5716-4c02-8ce9-15f97f961f39"
* entry[=].resource = COVID19Dose1-Immunization
* entry[+].fullUrl = "urn:uuid:56edd79b-a901-4940-bc04-f54d883d6d45"
* entry[=].resource = COVID19Dose2-Immunization
* entry[+].fullUrl = "urn:uuid:7bc588b5-5a98-4b7f-bff6-b3eae9e42bad"
* entry[=].resource = HbA1c-Observation
* entry[+].fullUrl = "urn:uuid:35be879f-fc53-4688-8beb-7b2f65f3e8a9"
* entry[=].resource = LDL-Observation
* entry[+].fullUrl = "urn:uuid:76e0d473-d0c6-42e3-adea-0ca40eed7805"
* entry[=].resource = TotalCholesterol-Observation
* entry[+].fullUrl = "urn:uuid:523f36e4-257e-462d-9aa4-226b3dda236f"
* entry[=].resource = HDL-Observation
* entry[+].fullUrl = "urn:uuid:df5983af-87a1-4978-812b-84c99e00ba57"
* entry[=].resource = BloodPressure-Observation
* entry[+].fullUrl = "urn:uuid:b4ae6297-184d-4952-9b5f-111bdca1afe3"
* entry[=].resource = HeartRate-Observation
* entry[+].fullUrl = "urn:uuid:d8c5f3c6-ae7c-479b-b175-5de4bf1288cb"
* entry[=].resource = BodyHeight-Observation
* entry[+].fullUrl = "urn:uuid:1a0994ab-f043-474d-8b11-7860e6c82d84"
* entry[=].resource = BodyWeight-Observation
* entry[+].fullUrl = "urn:uuid:20d75447-07af-488b-aa51-6a49db24eeff"
* entry[=].resource = SmokingStatus-Observation
* entry[+].fullUrl = "urn:uuid:2ccdc880-872a-454a-b295-d0d562e7c831"
* entry[=].resource = CindyFuimaono-RelatedPerson

Instance: IosefaFuimaono-Composition
InstanceOf: Composition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-composition"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* date = "2023-11-26T09:37:18+13:00"
* author.reference = "urn:uuid:7cf77ce3-bf39-4c20-adf9-50628735ed60"
* title = "New Zealand Patient Summary"
* custodian.reference = "urn:uuid:88c23f6b-6912-4ad6-8204-e175f1293c0a"
* section[0].title = "Medications"
* section[=].code = $loinc#10160-0 "History of medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Losartan potassium 50 mg tablet – 1 tablet daily (oral)</li><li>Insulin glargine (Lantus) 100 IU/mL – 20 units per day (injection)</li><li>Dulaglutide 1.5 mg/0.5 mL – 1 injection weekly</li><li>Metformin – twice daily</li><li>Amlodipine 5 mg tablet – 1 tablet daily (oral)</li><li>Aspirin 75 mg – 1 tablet daily (oral)</li><li>Allopurinol 300 mg tablet – 1 tablet nightly (oral)</li></ul></div>"
* section[=].entry[0].reference = "urn:uuid:685e2887-668f-4ee8-aa84-3c4d92be61ab"
* section[=].entry[+].reference = "urn:uuid:f1720983-ec54-418d-b8ff-1069876109d3"
* section[=].entry[+].reference = "urn:uuid:6ed2ce68-70c9-4b1e-a75b-7336db209460"
* section[=].entry[+].reference = "urn:uuid:88683888-e91a-40df-badd-8502af73047b"
* section[=].entry[+].reference = "urn:uuid:bcef6cbf-81a5-4aaa-bd0c-cfed5deb25be"
* section[=].entry[+].reference = "urn:uuid:f558ef12-e86e-4454-af32-2477735fe1e9"
* section[=].entry[+].reference = "urn:uuid:a44f7927-5a4c-4294-bf28-f4683f07d37c"
* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Diazepam – confirmed allergy. Experienced increased confusion and headaches when prescribed for anxiety and difficulty sleeping.</p></div>"
* section[=].entry.reference = "urn:uuid:9e9a0b35-b0b0-49b8-bfaa-7abd77825119"
* section[+].title = "Problems"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Fracture of neck of femur (left hip) – onset June 2019</li><li>Type 2 diabetes mellitus – onset February 2011, on insulin</li><li>Gout – onset March 2015</li><li>Benign essential hypertension (mild) – onset October 2012</li></ul></div>"
* section[=].entry[0].reference = "urn:uuid:111cf42a-02a4-4ced-957f-5f245ab03a5a"
* section[=].entry[+].reference = "urn:uuid:ce6b17dd-3ac7-4ac6-a9d6-fbd24199dd7a"
* section[=].entry[+].reference = "urn:uuid:46a75554-b347-4797-8393-3c2e25dde3c1"
* section[=].entry[+].reference = "urn:uuid:5edc498e-ddad-4aa6-9ee9-e6f1d92bb9d3"
* section[+].title = "Immunizations"
* section[=].code = $loinc#11369-6 "History of Immunization note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Influenza (Flu 65+) – June 2015</li><li>Pneumococcal PCV13 High Risk – July 2015</li><li>Influenza (Flu 65+) – June 2019</li><li>Tdap adult – June 2019</li><li>COVID-19 Comirnaty dose 1 – July 2021</li><li>COVID-19 Comirnaty dose 2 – August 2022</li></ul></div>"
* section[=].entry[0].reference = "urn:uuid:0332f541-d3cd-4a00-b705-6440add8f13c"
* section[=].entry[+].reference = "urn:uuid:9c9b44f3-4605-41df-a8da-75c09b95c096"
* section[=].entry[+].reference = "urn:uuid:80c2c48e-1c7e-4192-af0d-0a999b1a156c"
* section[=].entry[+].reference = "urn:uuid:5f9711c2-172e-495e-b847-a32fdb94ffb9"
* section[=].entry[+].reference = "urn:uuid:c471c5ec-5716-4c02-8ce9-15f97f961f39"
* section[=].entry[+].reference = "urn:uuid:56edd79b-a901-4940-bc04-f54d883d6d45"
* section[+].title = "Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Results from 5 March 2023:</p><ul><li>HbA1c: 60 mmol/mol</li><li>LDL cholesterol: 3.4 mmol/L</li><li>Total cholesterol: 5.1 mmol/L</li><li>HDL cholesterol: 1.5 mmol/L</li></ul></div>"
* section[=].entry[0].reference = "urn:uuid:7bc588b5-5a98-4b7f-bff6-b3eae9e42bad"
* section[=].entry[+].reference = "urn:uuid:35be879f-fc53-4688-8beb-7b2f65f3e8a9"
* section[=].entry[+].reference = "urn:uuid:76e0d473-d0c6-42e3-adea-0ca40eed7805"
* section[=].entry[+].reference = "urn:uuid:523f36e4-257e-462d-9aa4-226b3dda236f"
* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Most recent readings (25 November 2023):</p><ul><li>Blood pressure: 136/88 mmHg</li><li>Heart rate: 84 bpm</li><li>Height: 1.84 m</li><li>Weight: 104 kg (29 September 2023)</li></ul></div>"
* section[=].entry[0].reference = "urn:uuid:df5983af-87a1-4978-812b-84c99e00ba57"
* section[=].entry[+].reference = "urn:uuid:b4ae6297-184d-4952-9b5f-111bdca1afe3"
* section[=].entry[+].reference = "urn:uuid:d8c5f3c6-ae7c-479b-b175-5de4bf1288cb"
* section[=].entry[+].reference = "urn:uuid:1a0994ab-f043-474d-8b11-7860e6c82d84"
* section[+].title = "Past Problems"
* section[=].code = $loinc#11348-0 "History of Past illness note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Primary open reduction and internal fixation of left proximal femoral fracture – June 2019. Concussion symptoms ongoing following fall.</li></ul></div>"
* section[=].entry.reference = "urn:uuid:9f82bb17-176f-43e7-aa4f-25050bc024a5"
* section[+].title = "Functional Status"
* section[=].code = $loinc#47420-5 "Functional status assessment note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Uses a walking frame or electric scooter. Often confused, struggles to communicate in English. Relies on caregiver Cindy for assistance with many activities of daily living. Does not leave the house much. Family arranging transfer to residential care.</p></div>"
* section[=].entry.reference = "urn:uuid:94a68017-b31e-4a64-a66e-33ef5202b922"
* section[+].title = "Patient Story"
* section[=].code = $loinc#81338-6 "Patient Goals, Preferences, and Priorities for Care Experience"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>I prefer to speak Samoan now, as speaking English has been hard for me since my fall.</p><p>I live with my five children. Cindy, my fa'afafine son, used to be a social worker and is now my main support. Cindy is also my \"digital navigator\" and helps me to do things online.</p><p>My aiga is spread across the world, but they all share in my care, economically and practically.</p><p>I was heavily involved in my church. My health makes me feel ashamed to be so dependent on the church, when I used to be the one who gave support. Different church groups still visit me regularly.</p><p>I use a walker or a scooter to get around, but I would prefer not to.</p><p>I struggle to keep track of my medicines and need help with this. I also struggle with monitoring my diabetes and managing my insulin. Cindy helps me with my diabetes test kit.</p><p>We have decided that I will move into residential care. I am nervous about this, but I know my aiga is struggling with my current condition and I want to help them.</p><p>People who are important to me:</p><ul><li>Cindy – my son, my main support and my digital navigator</li><li>My aiga, here and overseas</li><li>My church minister and church community</li><li>My GP, Dr James Test-Smith</li></ul></div>"
* section[=].entry.reference = "urn:uuid:2ccdc880-872a-454a-b295-d0d562e7c831"
* section[=].entry.display = "Cindy Fuimaono"
* section[+].title = "Plan of Care"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No active plan of care recorded.</div>"
* section[=].emptyReason = $list-empty-reason#nilknown "Nil Known"
* section[+].title = "Social History"
* section[=].code = $loinc#29762-2 "Social history note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Ex-smoker. Was smoking 30 packs per year, quit in 2005 (1-9 cigarettes/day, light smoker).</p></div>"
* section[=].entry.reference = "urn:uuid:20d75447-07af-488b-aa51-6a49db24eeff"
* section[+].title = "Advance Directives"
* section[=].code = $loinc#42348-3 "Advance Healthcare Directives"
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
* contact.relationship = $v2-0131#N "Next-of-Kin"
* contact.name.family = "Fuimaono"
* contact.name.given = "Cindy"
* contact.telecom.system = #phone
* contact.telecom.value = "021111111"
* contact.telecom.use = #mobile
* communication.language = urn:ietf:bcp:47#sm "Samoan"
* generalPractitioner.reference = "urn:uuid:7cf77ce3-bf39-4c20-adf9-50628735ed60"
* generalPractitioner.display = "Dr James Test-Smith"

Instance: CindyFuimaono-RelatedPerson
InstanceOf: RelatedPerson
Usage: #inline
Description: "Cindy, Iosefa's son, main support and digital navigator - referenced from the Patient Story section as a person who is important to the patient."
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NzRelatedPerson"
* active = true
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* patient.display = "Iosefa Fuimaono"
* relationship[0] = $v3-RoleCode#CHILD "child"
* relationship[+] = $v2-0131#N "Next-of-Kin"
* name.family = "Fuimaono"
* name.given = "Cindy"
* telecom.system = #phone
* telecom.value = "021111111"
* telecom.use = #mobile

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
* practitioner.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* practitioner.display = "Dr James Test-Smith"
* organization.reference = "urn:uuid:88c23f6b-6912-4ad6-8204-e175f1293c0a"
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
* code = $sct#5913000 "Fracture of neck of femur"
* code.text = "Fracture of neck of femur"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* onsetDateTime = "2019-06-08"
* recordedDate = "2023-11-26T09:58:31+13:00"
* recorder.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* recorder.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* onsetDateTime = "2011-02-05"
* recordedDate = "2023-11-26T10:02:45+13:00"
* recorder.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* recorder.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* onsetDateTime = "2015-03-18"
* recordedDate = "2023-11-26T10:05:13+13:00"
* recorder.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* recorder.display = "Dr James Test-Smith"

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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* onsetDateTime = "2012-10-24"
* recordedDate = "2023-11-26T10:07:25+13:00"
* recorder.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* recorder.display = "Dr James Test-Smith"

Instance: HipFractureRepair-Condition
InstanceOf: Condition
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-problem"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/long-term-condition"
* extension.valueBoolean = true
* clinicalStatus = $condition-clinical#resolved "Resolved"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#391093004 "H/O: hip fracture"
* code.text = "Primary open reduction and internal fixation of proximal femoral fracture"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* onsetDateTime = "2019-06-08"
* recordedDate = "2023-11-26T10:24:06+13:00"
* recorder.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* recorder.display = "Dr James Test-Smith"
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
* code = $sct#365112008 "Walking aid use - finding"
* code.text = "Walking aid use"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* onsetDateTime = "2019-06-30"
* recordedDate = "2023-11-26T10:29:07+13:00"
* recorder.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* recorder.display = "Dr James Test-Smith"
* note.text = "Uses a walker or scooter"

Instance: Losartan-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10195211000116102 "losartan potassium 50 mg tablet"
* medicationCodeableConcept.text = "Losartan potassium 50 mg tablet"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* dateAsserted = "2023-11-25"
* effectivePeriod.start = "2012-11-02"
* informationSource.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* informationSource.display = "Dr James Test-Smith"
* dosage.text = "1 tablet daily"
* dosage.route = $sct#26643006 "Oral route"

Instance: InsulinGlargine-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10368321000116100 "Lantus (insulin glargine 100 international units/mL) injection: solution, 3 mL cartridge"
* medicationCodeableConcept.text = "Lantus – insulin glargine 100 IU/mL injection, 3 mL cartridge"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* dateAsserted = "2023-11-25"
* effectivePeriod.start = "2016-05-12"
* informationSource.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* informationSource.display = "Dr James Test-Smith"
* dosage.text = "20 units per day"
* dosage.route = $sct#34206005 "Subcutaneous route"

Instance: Dulaglutide-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#47230201000116108 "dulaglutide 1.5 mg/0.5 mL injection, prefilled injection device"
* medicationCodeableConcept.text = "Dulaglutide 1.5 mg/0.5 mL injection pen"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* dateAsserted = "2023-11-25"
* effectivePeriod.start = "2021-09-20"
* informationSource.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* informationSource.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* dateAsserted = "2023-11-25"
* effectivePeriod.start = "2011-02-18"
* informationSource.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* informationSource.display = "Dr James Test-Smith"
* dosage.text = "Twice daily – 1 in morning and 1 at night"
* dosage.route = $sct#26643006 "Oral route"

Instance: Amlodipine-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10109621000116108 "amlodipine 5 mg tablet"
* medicationCodeableConcept.text = "Amlodipine 5 mg tablet"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* dateAsserted = "2023-11-25"
* effectivePeriod.start = "2014-03-07"
* informationSource.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* informationSource.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* dateAsserted = "2023-11-25"
* effectivePeriod.start = "2012-11-02"
* informationSource.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* informationSource.display = "Dr James Test-Smith"
* dosage.text = "1 tablet daily – 75 mg"
* dosage.route = $sct#26643006 "Oral route"

Instance: Allopurinol-MedicationStatement
InstanceOf: MedicationStatement
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-medicationstatement"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nzeps-long-term-medication"
* extension.valueBoolean = true
* status = #active
* medicationCodeableConcept = $nzmt#10030521000116104 "allopurinol 300 mg tablet"
* medicationCodeableConcept.text = "Allopurinol 300 mg tablet"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* dateAsserted = "2023-11-25"
* effectivePeriod.start = "2015-04-15"
* informationSource.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* informationSource.display = "Dr James Test-Smith"
* dosage.text = "1 tablet nightly"
* dosage.route = $sct#26643006 "Oral route"

Instance: Diazepam-AllergyIntolerance
InstanceOf: AllergyIntolerance
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-allergyintolerance"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* code = $sct#387264003 "Diazepam"
* code.text = "Diazepam"
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* onsetDateTime = "2023-11-26"
* recordedDate = "2023-11-26T10:34:09+13:00"
* recorder.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* recorder.display = "Dr James Test-Smith"
* note.text = "Prescribed diazepam for anxiety and difficulty sleeping. Experienced increased confusion and headaches, which went away after stopping the drug."

Instance: FluVaccine2015-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#99006 "Influenza"
* vaccineCode.coding[+] = $sct#1181000221105 "Influenza virus antigen only vaccine product"
* vaccineCode.text = "Influenza"
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* occurrenceDateTime = "2015-06-01"
* recorded = "2015-06-01"
* lotNumber = "P9076556"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.actor.display = "Dr James Test-Smith"

Instance: PCV13-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $cvx#133 "Pneumococcal conjugate PCV 13"
* vaccineCode.coding[+] = $sct#1801000221105 "Streptococcus pneumoniae capsular polysaccharide antigen conjugated only vaccine product"
* vaccineCode.text = "Pneumococcal conjugate vaccine, 13 valent"
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* occurrenceDateTime = "2015-07-01"
* recorded = "2015-07-01"
* lotNumber = "U456789"
* site = $v3-ActSite#RA "Right Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.actor.display = "Dr James Test-Smith"

Instance: FluVaccine2019-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#99006 "Influenza"
* vaccineCode.coding[+] = $sct#1181000221105 "Influenza virus antigen only vaccine product"
* vaccineCode.text = "Influenza"
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* occurrenceDateTime = "2019-06-01"
* recorded = "2019-06-01"
* lotNumber = "Y789T75"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.actor.display = "Dr James Test-Smith"

Instance: TdapAdult-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $immunisation-code#99012 "Tdap"
* vaccineCode.coding[+] = $sct#871875004 "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens only vaccine product"
* vaccineCode.text = "Diphtheria adult dosage, Tetanus, acellular Pertussis"
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* occurrenceDateTime = "2019-06-08"
* recorded = "2019-06-08"
* lotNumber = "12345"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.actor.display = "Dr James Test-Smith"

Instance: COVID19Dose1-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $cvx#208 "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose"
* vaccineCode.coding[+] = $sct#1119349007 "COVID-19 mRNA vaccine"
* vaccineCode.text = "COVID-19 Comirnaty (Pfizer/BioNTech)"
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* occurrenceDateTime = "2021-07-14"
* recorded = "2021-07-14"
* lotNumber = "2907888"
* site = $v3-ActSite#LA "Left Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.actor.display = "Dr James Test-Smith"
* note.text = "Dose 1"

Instance: COVID19Dose2-Immunization
InstanceOf: Immunization
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-immunization"
* status = #completed
* vaccineCode.coding[0] = $cvx#208 "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose"
* vaccineCode.coding[+] = $sct#1119349007 "COVID-19 mRNA vaccine"
* vaccineCode.text = "COVID-19 Comirnaty (Pfizer/BioNTech)"
* patient.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* occurrenceDateTime = "2022-08-04"
* recorded = "2022-08-04"
* lotNumber = "56789"
* site = $v3-ActSite#RA "Right Arm"
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* performer.function = $v2-0443#AP "Administering Provider"
* performer.actor.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.actor.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-03-05T10:46:20+13:00"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
* valueQuantity = 60 'mmol/mol' "mmol/mol"

Instance: LDL-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-results-laboratory-pathology"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#18262-6 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay"
* code.coding[+] = $sct#113079009 "Low density lipoprotein cholesterol measurement"
* code.text = "LDL cholesterol"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-03-05T10:46:24+13:00"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-03-05T10:46:26+13:00"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
* valueQuantity = 5.1 'mmol/L' "mmol/L"

Instance: HDL-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-results-laboratory-pathology"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.coding[0] = $loinc#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* code.coding[+] = $sct#28036006 "High density lipoprotein cholesterol measurement"
* code.text = "HDL cholesterol"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-03-05T10:46:27+13:00"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-11-25T14:20:33+13:00"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-11-25T14:20:11+13:00"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-11-25T14:21:02+13:00"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
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
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-09-29"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
* valueQuantity = 104 'kg' "kg"

Instance: SmokingStatus-Observation
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://fhir-ig.digital.health.nz/nzps/StructureDefinition/nzps-observation-smokingstatus"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#72166-2 "Tobacco smoking status"
* code.text = "Tobacco smoking status"
* subject.reference = "urn:uuid:dd47a319-fbd7-4836-ae29-2df9bf080407"
* effectiveDateTime = "2023-11-26"
* performer.reference = "urn:uuid:2ad89f2e-4205-4b68-a7f1-2d012de7e10b"
* performer.display = "Dr James Test-Smith"
* valueCodeableConcept = $sct#8517006 "Ex-smoker"
* valueCodeableConcept.text = "Ex-smoker"
* note.text = "Was smoking 30 packs per year, quit in 2005. Previously 1-9 cigarettes per day (light smoker)."