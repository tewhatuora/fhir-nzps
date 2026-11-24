// ---------------------------------------------------------------------------------------------
// Rule sets used to carry IPS requirements into NZPS profiles that are based on NZ Base.
//
// Approach (aligned with AU PS): where an NZ Base profile exists, the NZPS profile is derived from
// it and applies the additional requirements of the corresponding IPS 2.0.1 profile (cardinality,
// Must Support, types, invariants, obligations). Compliance with the IPS profile is asserted using
// the structuredefinition-compliesWithProfile extension. NZPS profiles inherit the IPS obligations
// and may strengthen, but not weaken, them.
// ---------------------------------------------------------------------------------------------

// Assert that this profile complies with an IPS profile, e.g. * insert CompliesWithIPS(Patient-uv-ips)
RuleSet: CompliesWithIPS(ipsProfileId)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/StructureDefinition/{ipsProfileId}|2.0.1"

// Single IPS obligation on an element: * insert IPSObligation(name, Creator, #SHALL:populate-if-known)
RuleSet: IPSObligation(path, actor, code)
* {path} ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* {path} ^extension[=].extension[0].url = "code"
* {path} ^extension[=].extension[0].valueCode = {code}
* {path} ^extension[=].extension[1].url = "actor"
* {path} ^extension[=].extension[1].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/{actor}|2.0.1"

// IPS pattern used on most Must Support elements:
// Creator SHALL:populate-if-known; Consumer SHALL:handle, SHOULD:display
RuleSet: IPSObligationsMS(path)
* insert IPSObligation({path}, Creator, #SHALL:populate-if-known)
* insert IPSObligation({path}, Consumer, #SHALL:handle)
* insert IPSObligation({path}, Consumer, #SHOULD:display)

// IPS pattern used on reference elements (e.g. subject.reference):
// Creator SHALL:populate-if-known; Consumer SHALL:handle
RuleSet: IPSObligationsReference(path)
* insert IPSObligation({path}, Creator, #SHALL:populate-if-known)
* insert IPSObligation({path}, Consumer, #SHALL:handle)

// IPS pattern used on the main date element (e.g. onsetDateTime, effectiveDateTime):
// Creator SHOULD:able-to-populate; Consumer SHALL:handle, SHOULD:display
RuleSet: IPSObligationsDate(path)
* insert IPSObligation({path}, Creator, #SHOULD:able-to-populate)
* insert IPSObligation({path}, Consumer, #SHALL:handle)
* insert IPSObligation({path}, Consumer, #SHOULD:display)
