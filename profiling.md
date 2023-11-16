# NZIPS Profiling

## To do / clarify by content area

### All profiles

Add NZPS Referencess where appropriate. 

### functional status



### advance directive

* include documentReference entry slice - entry:advanceDirectivesDocumentReference

### Demographics

* NZ Ethnicity - should be moved to new NZbase version of ethnicity extension / valueset since we know it will change
* Gender description - needs reconcile with NHI extension / adding to NZ base
* birthPlace extension - use NHI (country/placeofbirth/source) or HL7 birthplace
* residential country code - needs adding / clarity on how to handle. 

### Problems

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


To do/clarify

* add nzmt
* gtin
* Vaccination country code - on location?
* need org? use nzbase? or nzps profile?

### Vital Signs

* check terminology 

### Diagnostic results

FHIR Resources used

* DiagnosticReport
* Observation

To do / clarify

* Terminology reconcile

### Careplan

* Terminology reconicile
* reference typing?

### Encounters

* Create slice/section in Composition
* Identify section loinc code

### Composition

To do / clarify
* add sectionSocialHistory slice for entry for vaping
* add encounter section