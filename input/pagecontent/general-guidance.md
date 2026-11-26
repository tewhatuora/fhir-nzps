### Approach of this Implementation Guide

The NZ Patient Summary (NZPS) Implementation Guide supports the use of patient summaries in HL7 FHIR in Aotearoa New Zealand. It is based on the [International Patient Summary (IPS) 2.0.1](https://hl7.org/fhir/uv/ips/2.0.1/) and [NZ Base](https://fhir.org.nz/ig/base/), and defines the minimum conformance expectations for an NZ Patient Summary.

By design, the NZPS:

- complies with IPS and with NZ Base
- adds the New Zealand requirements that have been agreed as necessary for a patient summary (see [The NZPS](the-nzps.html))
- supports a range of stakeholders, including policy makers, implementers, developers of tools, testers and the authors of other implementation guides.

The NZPS defines a *minimum* set of requirements as open templates. A profile defines the content that SHALL *at least* be supported; it does not limit the business rules or workflows of an implementation. Implementations may use additional elements, extensions, resources, search parameters, operations and terminology, provided the minimum requirements are met.

Extensions, search parameters and operations used by the NZPS are taken from the following sources, in order of preference:

1. the FHIR standard, including the [FHIR Extensions Pack](https://hl7.org/fhir/extensions/)
2. [NZ Base](https://fhir.org.nz/ig/base/)
3. this implementation guide
4. a local implementation guide, only where necessary.

#### Scope of NZPS FHIR Artefacts

This version of the NZPS defines:

- **resource profiles**, which set the minimum expectations for the resources in an NZ Patient Summary (see [Resource Profile Approach](#resource-profile-approach))
- a small number of **terminology artefacts** (see [Terminology Approach](#terminology-approach)).

It does not define actors, extensions, search parameters, operations or capability statements. These may be added in future versions.

#### Extension Approach

The NZPS does not define any new extensions. The extensions used in NZPS profiles are defined in the [FHIR Extensions Pack](https://hl7.org/fhir/extensions/) or in [NZ Base](https://fhir.org.nz/ig/base/). For example, [NZPS Patient](StructureDefinition-nzps-patient.html) uses the NZ Base ethnicity and Māori descent extensions, and the gender identity and pronouns extensions required by IPS.

#### Terminology Approach

The NZPS uses terminology defined in NZ Base, the FHIR standard, [HL7 Terminology](https://terminology.hl7.org/), IPS, and New Zealand terminology published by Health New Zealand \| Te Whatu Ora, including terminology available from the [New Zealand Health Terminology Service](https://nzhts.digital.health.nz/).

The NZPS defines the following terminology artefacts:

- the [NZPS list empty reason](ValueSet-nzps-list-empty-reason-vs.html) value set and its [code system](CodeSystem-nzps-list-empty-reason-cs.html), for the reason a Composition section has no entries
- the [vaping status](ValueSet-nzps-vaping-current-status.html) value set, used by [NZPS Vaping Status Observation](StructureDefinition-nzps-observation-vapingstatus.html). This value set is expected to be replaced by a value set based on the SNOMED CT New Zealand vaping status reference set.

Where an NZPS profile is derived from an NZ Base profile, it inherits the NZ Base terminology bindings. For example, the NZ Medicines Terminology (NZMT) binding on medicines is retained in place of the IPS binding.

Most coded elements bind a single value set. Where a coded element supports more than one value set, each is represented as a slice on the element's `coding`. These slices do not stop a system from sending only `text` where no suitable code is available.

#### Resource Profile Approach

##### NZPS Profile Design Principles

NZPS profiles are designed to comply with both NZ Base and IPS. The design principles are:

- NZPS profiles SHALL ensure that a conformant resource also validates against the IPS profile and the NZ Base profile, where both exist. This covers:
  - cardinality
  - fixed values and patterns
  - data type sub-elements and profiles
  - choices of data type, and reference targets
  - invariants
  - Must Support
  - terminology bindings.
- References SHALL be constrained to NZPS profiles where they exist. Otherwise the IPS profile, then the NZ Base profile, is used. Reference targets need not be constrained on elements that are not Must Support.
- Where NZ Base and IPS both bind a value set to an element:
  - for a *required* binding, the element SHALL be constrained to codes that are in both value sets
  - for a weaker binding (*extensible*, *preferred* or *example*), the NZ Base value set and binding strength are used where the NZ Base binding is equal to or stronger than the IPS binding. Otherwise the IPS value set and binding strength are used.
- NZPS profiles SHALL inherit the IPS obligations. A profile MAY strengthen an obligation, or add obligations, but SHALL NOT weaken one.
- Where only one of NZ Base or IPS defines a profile for a resource, the NZPS profile SHALL validate against that profile.

##### Profiling Approach

NZPS profiles:

- are derived from NZ Base profiles where they exist, so that they inherit the New Zealand terminology, identifiers and extensions
- add constraints (on cardinality, references, terminology or extensions) only where the constraint is agreed nationally as a minimum requirement
- mark the elements and extensions that make up the minimum requirements as Must Support
- do not further constrain elements that are not Must Support
- are open: they allow additional elements, extensions and rules. Systems need to decide how they handle content that a profile does not describe (see [Extensibility – 'Additional' Sections or Elements](#extensibility--additional-sections-or-elements)).

When modelling NZPS profiles, a profile:

- is derived from the NZ Base profile for the resource where one exists. Where there is no NZ Base profile, it is derived from the base FHIR resource, so that it can move to an NZ Base parent if NZ Base adds a profile later
- applies the requirements of the IPS profile, following the [NZPS Profile Design Principles](#nzps-profile-design-principles)
- applies any further requirements agreed for the NZPS (for example the [NZPS Encounter](StructureDefinition-nzps-encounter.html) profile and the Encounters section)
- uses the [compliesWithProfile](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-compliesWithProfile.html) extension to declare compliance with the IPS profile, where an IPS profile exists and the NZPS profile is not derived from it.

<figure>
  <img src="nzps-profile-architecture.svg" alt="NZPS profile architecture" style="width:100%; max-width:900px;"/>
  <figcaption>Figure 1: NZPS profile architecture</figcaption>
</figure>

Derivation manages compliance with NZ Base. The *Differential Table* of a profile derived from NZ Base shows only the requirements that the NZPS adds to NZ Base, which are mostly the IPS requirements and obligations. For example, [NZPS Organization](StructureDefinition-nzps-organization.html) adds Must Support and the IPS obligations on `name`, `telecom` and `address`.

<figure>
  <img src="nzps-patient-profile.svg" alt="NZPS Patient profiling approach" style="width:100%; max-width:900px;"/>
  <figcaption>Figure 2: Profiling approach for the NZPS Patient profile</figcaption>
</figure>

NZ Base has no Bundle or Composition profile, so the [NZPS Bundle](StructureDefinition-nzps-bundle.html) and [NZPS Composition](StructureDefinition-nzps-composition.html) profiles:

- are derived from the base FHIR Bundle and Composition resources
- apply the requirements of [Bundle (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Bundle-uv-ips.html) and [Composition (IPS)](https://hl7.org/fhir/uv/ips/2.0.1/StructureDefinition-Composition-uv-ips.html)
- apply any further NZPS requirements, such as constraining the entries and section references to NZPS profiles
- use compliesWithProfile to declare compliance with the IPS profiles.

<figure>
  <img src="nzps-bundle-profile.svg" alt="NZPS Bundle profiling approach" style="width:100%; max-width:900px;"/>
  <figcaption>Figure 3: Profiling approach for the NZPS Bundle profile</figcaption>
</figure>

The NZPS Bundle and Composition are derived from the base resources rather than from Bundle (IPS) and Composition (IPS). A profile derived from an IPS profile can only narrow the reference targets that IPS allows. NZPS profiles are not derived from the IPS profiles, so tools cannot recognise them as meeting the IPS reference targets, and the Bundle and Composition could not reference them.

The structure of the NZPS document is described on the [NZPS Structure](nzps-structure.html) page.

###### Use of Must Support and Obligations

Must Support identifies the elements and extensions that make up the minimum requirements of the NZPS. Systems that produce or consume an NZ Patient Summary SHALL support these elements in some meaningful way. FHIR does not define what 'meaningful' support is, so a profile has to say what support is required.

The Must Support elements in NZPS profiles are the union of the Must Support elements of the IPS profile and any Must Support elements of the NZ Base profile, together with any added for the NZPS. By convention, mandatory elements are also Must Support, unless they are nested under an optional element.

The meaning of Must Support for an element is described by:

- the narrative of this implementation guide
- the [obligation](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) extension on each Must Support element. NZPS profiles carry the obligations that IPS defines for its [Creator](https://hl7.org/fhir/uv/ips/2.0.1/ActorDefinition-Creator.html) and [Consumer](https://hl7.org/fhir/uv/ips/2.0.1/ActorDefinition-Consumer.html) actors. For example, most Must Support elements have the obligations Creator SHALL:populate-if-known, and Consumer SHALL:handle and SHOULD:display.
- the implementation guidance in each profile.

###### Potential Profiling Options

FHIR has several mechanisms for relating one profile to another:

1. [Derivation](https://hl7.org/fhir/R4/structuredefinition-definitions.html#StructureDefinition.baseDefinition) (`baseDefinition`)
2. informal alignment: the rules of one profile are written into another by hand
3. [compliesWithProfile](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-compliesWithProfile.html)
4. [imposeProfile](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-imposeProfile.html) (dependent profiles).

Each mechanism has different capabilities. NZPS profiles normally use derivation, as shown in Figure 2. Because NZPS profiles need to comply with both NZ Base and IPS, a second mechanism is needed for one of them. In this version, the IPS requirements are added to NZPS profiles by informal alignment, and compliance with the IPS profile is declared using compliesWithProfile.

Compared with imposeProfile, this approach:

- relies on the authors of the NZPS to keep the IPS requirements up to date in NZPS profiles
- shows the IPS requirements in the NZPS profiles themselves, so readers do not need to read the IPS profile as well.

Using imposeProfile, NZPS profiles could be derived from NZ Base, with the IPS profile imposed. However, the requirements imposed by IPS (such as cardinality, terminology and Must Support) would not then appear in the formal views of this guide. Copying the IPS constraints into the NZPS profiles as well would duplicate the validation, and add to the maintenance burden.

### Extensibility – 'Additional' Sections or Elements

As in IPS, a producer of an NZ Patient Summary may include elements in addition to the Must Support elements, and sections in addition to those defined in the [NZPS Composition](StructureDefinition-nzps-composition.html) profile.

Additional content may be used for local requirements or to give context about the workflow. Extensibility is generally encouraged and expected. Only profiles for some uncommon use cases need tighter rules on additional content.

Implementers who include a resource type that the NZPS does not profile (for example MedicationAdministration) should check whether NZ Base defines a profile for that resource type, and use it where it does.

#### Extensibility – 'Additional' Sections

The rules on `Composition.section` in the NZPS Composition profile apply to all sections, whether the NZPS defines them or not. The following elements are mandatory, and have obligations for both producers and consumers:

- `Composition.section.title`
- `Composition.section.code`
- `Composition.section.text`.

Where a producer populates additional sections, a specification describing their intended content and use should be available.

#### Extensibility – 'Additional' Elements

To support interoperability and reuse, authors of specifications based on the NZPS are encouraged not to reduce the cardinality of elements.

A consumer may ignore additional elements, use them only for display, or recognise and use them, depending on local requirements.

### Structuring Terminology Choices

The NZPS has the same structure as IPS: sections contain coded elements, organised in reusable 'minimal' data blocks.

The main terminologies used in the NZPS are:

- SNOMED CT (New Zealand Edition) for clinical concepts, such as problems, allergies and procedures
- the [NZ Medicines Terminology (NZMT)](https://www.nzulm.org.nz/nzmt) for medicines
- LOINC for observations, such as laboratory results and vital signs, and for document and section codes
- UCUM for units of measure
- ISO 3166 for countries
- New Zealand code systems published by Health New Zealand | Te Whatu Ora, such as the ethnicity codes
- code systems defined by FHIR and by HL7 Terminology.

Where a New Zealand value set exists, it is preferred over the IPS value set for New Zealand use.

For how IPS handles differences between SNOMED CT value sets, using the 'common proximal ancestor' approach, see [Structuring terminology choices](https://hl7.org/fhir/uv/ips/2.0.1/General-Principles.html#structuring-terminology-choices) in IPS.

### Patient Safety in IPS Context

See [Patient safety in IPS context](https://hl7.org/fhir/uv/ips/2.0.1/General-Principles.html#patient-safety-in-ips-context) in IPS.

### Medicinal Product Identification

Medicines in the NZPS are identified using NZMT codes. The NZPS medication profiles are derived from the NZ Base [Medication](https://fhir.org.nz/ig/base/StructureDefinition-NzMedication.html), [MedicationStatement](https://fhir.org.nz/ig/base/StructureDefinition-NzMedicationStatement.html), [MedicationRequest](https://fhir.org.nz/ig/base/StructureDefinition-NzMedicationRequest.html) and [MedicationDispense](https://fhir.org.nz/ig/base/StructureDefinition-NzMedicationDispense.html) profiles, and keep their NZMT bindings. Other codings, such as a GTIN for a medicine package, may be included alongside the NZMT code.

### Representing Body Site, Which May Include Laterality

Where a profile includes `bodySite` (for example [NZPS Problem](StructureDefinition-nzps-problem.html)), the body site should be coded using SNOMED CT. Where laterality is needed, a SNOMED CT concept that includes the laterality should be used where one is available.

### Provenance

See [Provenance](https://hl7.org/fhir/uv/ips/2.0.1/Design-Conventions.html#provenance) in the IPS Design Conventions.
