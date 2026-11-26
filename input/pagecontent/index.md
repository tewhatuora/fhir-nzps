
### NZ Patient Summary (NZPS)

The NZ Patient Summary (NZPS) is a standardised summary of a person's key health information, such as their current problems, medicines, allergies and immunisations, that can be shared between systems. It adapts the [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/) for Aotearoa New Zealand, and implements the [HISO 10099:2022 NZ International Patient Summary (NZIPS)](https://consult.health.govt.nz/hiso/hiso-10099-2022-nzips/supporting_documents/hiso10099nzipsdraft20220509.pdf) draft standard.

This FHIR implementation guide (IG) defines how an NZ Patient Summary is represented in HL7® FHIR®.

### About this guide

- [The NZPS](the-nzps.html): what the NZPS is, what it's for, what it contains, and its background as a HISO standard.
- [General Guidance](general-guidance.html): the approach of this guide, including how NZPS profiles relate to NZ Base and IPS.
- [NZPS Structure](nzps-structure.html): how an NZ Patient Summary is structured as a FHIR document.
- [NZPS Mapping to FHIR](mapping.html): the FHIR profiles used for each content area.
- [NZPS Library](artifacts.html): the profiles, terminology and examples defined by this guide.

### FHIR version

{% include cross-version-analysis.xhtml %}

### Relationship to other standards

NZPS localises the [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/) 2.0.1 for Aotearoa New Zealand. Where [NZ Base](https://fhir.org.nz/ig/base/) defines a profile for a resource (for example Patient, Condition, Medication, Practitioner and Organization), the NZPS profile is derived from the NZ Base profile and declares that it also complies with the corresponding IPS profile. Where NZ Base has no profile, the NZPS profile is derived from the base FHIR resource, applies the requirements of the IPS profile, and declares that it complies with the IPS profile. This means an NZPS profile can move to an NZ Base parent if NZ Base adds a profile for that resource later. The NZPS Composition and Bundle are also derived from the base FHIR resources and apply the IPS requirements, so that they can reference the NZPS profiles.

The IG has dependencies on the following packages:

{% include dependency-table.xhtml %}

### Intellectual property statements

{% include ip-statements.xhtml %}

### Global profiles

{% include globals-table.xhtml %}