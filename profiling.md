# NZIPS Profiling

## Content areas

### Demographics

FHIR Resources used
* Patient

To do/clarify:
* NZ Ethnicity - should be moved to new NZbase version of ethnicity extension / valueset since we know it will change
* Gender description - needs reconcile with NHI extension / adding to NZ base
* birthPlace extension - use NHI (country/placeofbirth/source) or HL7 birthplace
* residential country code - needs adding / clarity on how to handle. 

### Problems

FHIR Resources used
* Condition

To do/clarify
* check terminology lines up

### Medications

FHIR Resources used
* MedicationStatement
* Medication

To do/clarify: 
* needs Medication resource profile for med batch number / expiry date

### Allergies and adverse reactions

FHIR Resources used
* AllergyIntolerance
* do we need AdverseEvent?

To do/clarify 
* IPS doesn't include AdverseEvent. Some of our info sounds like it is from adverseEvent resource
* terminology review


### Immunisations

Resources
* Immunization
* organisation / practitioner/role / location

To do/clarify

* add nzmt
* gtin
* Vaccination country code - on location?

### Vital Signs

To do/clarify
* check terminology 

### Diagnostic results

FHIR Resources used

* DiagnosticReport
* Observation

To do / clarify

* Terminology reconcile

### Careplan

To do / clarify
* Terminology reconicile
* slice for HPI

### Encounters

FHIR Resources used
* Encounter

To do / clarify
* Create profile
* Create slice/section in Composition
* Identify section loinc code

### Composition

To do / clarify
* add sectionSocialHistory slice for entry for vaping
* add encounter section