The initial scope of the NZPS covers the content areas shown in the data blocks below.

{% include img.html img="initial-scope.png" caption="Figure 1: The NZPS initial contents" width="70%" %}

In the future, the initial scope will be expanded to include new sections with additional content. The content areas identified to add to this intial scope are shown in the following diagram. 

{% include img.html img="future-scope.png" caption="Figure 1: The NZPS initial contents" width="70%" %}

### FHIR Structure of IPS Payload

The FHIR implementation of the NZPS derives from the [International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips/profiles.html) which is structured as a [FHIR document](https://www.hl7.org/fhir/documents.html). 

The FHIR document consists of a [FHIR Bundle](https://www.hl7.org/fhir/bundle.html) (with its 'type' field set to 'Document' to indicate it is a summary document). The Bundle resource is a 'container' that is used to hold all the other resources that make up the contents of the patient summary in FHIR document form. The first of these resources in a FHIR document is a 'Composition' resource that acts as a document header (or 'table of contents') and contains information about the sections in the patient summary document and references to the resources that have the content for each of those sections. This overall document structure is shown in the diagram below. 

{% include img.html img="document-bundle.png" caption="Figure 2: The FHIR Patient Summary Document bundle" width="70%" %}
