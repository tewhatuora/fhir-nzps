### Overview

The NZ Patient Summary (NZPS) is a standardised summary of a person's key health information. It brings together the information a health professional most needs to know about a person, such as their current problems, medicines, allergies and immunisations, in a form that can be shared between systems and understood by its readers.

The NZPS is minimal and non-exhaustive: it contains the essential information rather than the whole health record. It is specialty-agnostic and condition-independent.

The NZPS is based on the [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/), the ISO and HL7® international standard for patient summaries, and adapts it for Aotearoa New Zealand. An NZ Patient Summary uses New Zealand identifiers and terminology, such as the National Health Index (NHI) number and the NZ Medicines Terminology (NZMT), and builds on the [NZ Base](https://fhir.org.nz/ig/base/) FHIR profiles. Because it complies with the IPS, an NZ Patient Summary can also be used where an IPS is expected.

### What it's for

This guide defines the NZPS as a FHIR document: a summary put together at a point in time, which can be sent, stored and read on its own. That suits situations where care moves from one provider to another and the receiving clinician needs a quick picture of the person, such as a referral, a transfer of care, or unplanned or emergency care where the person isn't known to the provider.

A document isn't the right fit for every use of the NZPS data set. Giving people access to their own health information, for example, is usually better served by an API onto current data than by a static summary. Moving a person's whole record between providers needs the full record, not a minimal summary, although an NZPS can go with it. 

The NZPS follows the IPS in treating the summary as information for the next provider, not a set of instructions. Prescriptions, dispensings and care plans in an NZ Patient Summary describe the person's care; they are not orders, and shouldn't be filled or acted on from the summary. The IPS notes that summaries are often used beyond this purpose and plans further guidance in [Context and usage of patient summaries](https://hl7.org/fhir/uv/ips/2.0.1/General-Principles.html#context-and-usage-of-patient-summaries).

### What it contains

An NZ Patient Summary identifies the person it is about and who wrote it, and is organised into sections, one for each content area. The sections follow the IPS, which classifies each as **required**, **recommended** or **optional**, and the NZPS adds one New Zealand section. A required section is always present, even if only to say that there is nothing to record. Recommended and optional sections are included when there is information to share.

How the summary is structured as a FHIR document is described on the [NZPS Structure](nzps-structure.html) page, and the FHIR profiles used for each content area are listed on the [NZPS Mapping to FHIR](mapping.html) page.

#### About the person and the summary

| Content area | What it contains |
|---|---|
| Demographics | The person's identity and demographic details, including their NHI number, name, date of birth, gender, contact details and ethnicity. |
| Author | Who wrote the summary and when, and the organisation responsible for it. |
{:.grid}

#### Required sections

| Content area | What it contains |
|---|---|
| Problems | The person's current problems and conditions, including long-term conditions and other current health issues. |
| Allergies & intolerances | Each known allergy or intolerance: the substance (such as a medicine, food or other substance), the reaction and its severity. |
| Medications | The medicines the person is currently taking or has recently taken, with their dosage. Medicines are coded using NZMT where possible, and can be recorded as what the person is taking, as prescriptions or as dispensings. Over-the-counter medicines and supplements can be included. |
{:.grid}

#### Recommended sections

| Content area | What it contains |
|---|---|
| Immunisations | The person's vaccinations, as complete a history as is known: the vaccine, the date and the disease it protects against. |
| Diagnostic results | Test results relevant to the person's health, such as laboratory and pathology results, radiology and imaging results, and diagnostic reports. |
| Procedures | Past procedures relevant to the summary, such as operations. |
| Medical devices | Medical devices and implants the person uses or has. |
{:.grid}

#### Optional sections

| Content area | What it contains |
|---|---|
| Alerts | Information that warns of a potential danger to or from the person, or of a potential obstacle to care. |
| Functional status | The person's ability to carry out the activities of daily living, including any disabilities and the results of functional assessments. |
| Past problems | Problems and conditions that have resolved or are no longer active. |
| Pregnancy | Current pregnancy status, the expected delivery date, and the outcomes of previous pregnancies. |
| Patient story | In the person's own words or as recorded with them: what matters to them, their goals and preferences for care, and the people who are important to them. |
| Care plans | Plans for the person's care, including planned activities such as tests, treatments and immunisations. |
| Smoking, vaping & alcohol use | The person's smoking status, vaping status and alcohol use. |
| Measurements & vital signs | Measurements such as height, weight, body mass index, blood pressure, heart rate, respiratory rate, body temperature, oxygen saturation and head circumference. |
| Advance directives | Decisions the person has made about their future care, in case they become unable to make those decisions. These can be recorded as structured information or as a reference to a document, such as a living will. |
{:.grid}

#### New Zealand section

| Content area | What it contains |
|---|---|
| Encounters | The person's recent encounters with health providers and the health system, planned and unplanned, in person and online, such as GP visits, specialist appointments and hospital admissions. |
{:.grid}

### HISO 10099 NZ Patient Summary standard

The NZPS was developed as the [HISO 10099:2022 NZ International Patient Summary (NZIPS) standard](https://consult.health.govt.nz/hiso/hiso-10099-2022-nzips/supporting_documents/hiso10099nzipsdraft20220509.pdf), which was published as a draft for consultation in May and July 2022. The mahi to develop the standard was guided by an expert advisory group and an industry special interest group, made up of health professionals, software experts and consumer representatives, who worked with HISO from October 2021 to review drafts and provide input.

The NZPS is a deliverable of the [Interoperability Roadmap 2020](https://www.health.govt.nz/publication/hiso-100832020-interoperability-roadmap), and a standard that will contribute to a more joined-up and equitable health system. The Global Digital Health Partnership endorses the IPS and promotes its adoption by member countries, including New Zealand, as a pivotal standard for interoperability at national level and globally.

The standard comprises a data set specification and related data exchange and data portability requirements, and was written with continuity of care, consumer access and patient record transfer in mind. This implementation guide covers the FHIR representation of the patient summary document. 
