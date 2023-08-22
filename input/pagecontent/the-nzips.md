The initial scope of the NZIPS covers the content areas shown in the data blocks below.

{% include img.html img="nzips-initial-scope.png" caption="Figure 1: The NZIPS initial contents" width="70%" %}

### FHIR Structure of IPS Payload

The FHIR implementation of the NZIPS is derived from the [International Patient Summary FHIR](https://build.fhir.org/ig/HL7/fhir-ips/profiles.html) which is structured as a [FHIR document](https://www.hl7.org/fhir/documents.html). 

The FHIR document consists of a [FHIR Bundle](https://www.hl7.org/fhir/bundle.html) (with its 'type' field set to 'Document' to indicate what it is). The Bundle resource is a 'container' that is used to hold all the other resources that make up the contents of the FHIR  . The first of these resources in a FHIR document is a 'Composition' resource that acts as a document header (or table of contents) and contains information about the sections in the patient summary document and references to the resources that make up the summary. 

{% include img.html img="document-bundle.png" caption="Figure 2: The FHIR Patient Summary Document bundle" width="70%" %}
