<p style ="color:#ff0000; padding:10px; border-left:3px solid #ff0000;"> This draft is under active development and may change significantly.</p>

### FHIR NZ Patient Summary (NZPS)

This FHIR implementation guide (IG) defines the draft FHIR translation of the [HISO 10099:2022 NZ International Patient Summary (NZIPS) standard](https://consult.health.govt.nz/hiso/hiso-10099-2022-nzips/supporting_documents/hiso10099nzipsdraft20220509.pdf) published for consultation in May & July 2022. 

The mahi to develop HISO 10099:2022 standard has been guided by an expert advisory group and industry special interest group, comprising health
professionals, software experts and consumer representatives who worked with HISO since October 2021 to review drafts and
provide input.

### About the draft standard

NZPS is a deliverable of the [Interoperability Roadmap 2020](https://www.health.govt.nz/publication/hiso-100832020-interoperability-roadmap) and a standard that will contribute to a more joined-up and equitable health system. NZPS is our adaptation for Aotearoa of the recognised ISO and HL7® International Patient Summary (IPS) standards. 

The Global Digital Health Partnership endorses the IPS and promotes its adoption by member countries, including New Zealand, as a pivotal standard for interoperability at national level and globally. 

NZPS tailors the IPS to New Zealand data standards and use case requirements.

NZPS is principally a standard for the makeup and exchange of a defined core personal health data set. In its first iteration, NZPS
covers the person’s health conditions, immunisations, medicines, allergies and adverse reactions, measurements and vital signs, and
test results.

The standard comprises a data set specification and related data exchange and data portability requirements. The standard provides
a source of requirements for continuity of care, consumer access and patient record transfer use cases, defining the key data
elements and how they are represented. 

### FHIR version

{% include cross-version-analysis.xhtml %}

### Dependencies and relationship to other standards

The profiles in the NZPS are derived from the IPS profiles. The NZPS profiles also conform to constraints expressed in the [FHIR NZBase profiles](https://fhir.org.nz/ig/base/index.html). The IG has dependencies on the following packages: 

{% include dependency-table.xhtml %}