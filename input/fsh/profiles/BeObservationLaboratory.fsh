Profile: BeObservationLaboratory
Parent: BeObservation
Id: be-observation-laboratory
Title: "BeObservationLaboratory"
Description: "Belgian profile for an observation in a laboratory report"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-observation-laboratory"
* ^version = "0.0.7"
* ^status = #draft
* ^date = "2021-11-08T16:57:45+01:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7belgium.org"
* ^jurisdiction = $m49.htm#001
* language MS
* identifier MS
* basedOn ^mustSupport = false
* partOf ^mustSupport = false
* status MS
* category MS
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nThe implementer SHALL adhere to the preferred codes to use.\r\nThe recommended codification used is LOINC as per the subset defined by the FPS Health, for the majority of commonly used lab measurements and demands. This subset is available on https://www.vas.ehealth.fgov.be/webretam/retam/home.htm\r\n\r\nIt is allowed to use multiple codes within the FHIR CodeableConcept datatype. But the first code given must follow the following rules.(Other codes given will be for information purposes.)\r\n\r\nThe actual observation is preferably coded in LOINC (subset as defined by FPS Health)\r\n\r\nIf that is not possible , ALBERT codes are used (subset as defined by FPS Health.) \r\n\r\nIf that is not possible,laboratory may send its own code plus obligatory a text element to further explain. \r\n\r\nIf that is not possible the kind of observation is expressed only in text (allowed but NOT RECOMMENDED)"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* subject only Reference(Group or Device or Location or BePatient)
* subject MS
* subject ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BePatient."
* effective[x] MS
* issued MS
* performer only Reference(CareTeam or RelatedPerson or BePatient or BeOrganization or BePractitionerRole or BePractitioner)
* performer MS
* performer ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BeOrganization or BePractitioner"
* value[x] MS
* dataAbsentReason MS
* interpretation MS
* note MS
* bodySite MS
* method MS
* specimen only Reference(BeSpecimenLaboratory)
* specimen MS
* device ^mustSupport = false
* referenceRange MS
* hasMember only Reference(QuestionnaireResponse or MolecularSequence or BeObservationLaboratory)
* hasMember MS
* hasMember ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BeObservationLaboratory"
* derivedFrom only Reference(DocumentReference or ImagingStudy or Media or QuestionnaireResponse or MolecularSequence or BeObservationLaboratory)
* derivedFrom MS
* derivedFrom ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BeObservationLaboratory"
* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component contains
    relativeTimeQualifier 0..1 and
    substanceAmountQualifier 0..1 and
    productNameQualifier 0..1
* component[relativeTimeQualifier] ^short = "If a testing code does not include a time interval but needs one to qualify the code."
* component[relativeTimeQualifier].code.coding.system 1..
* component[relativeTimeQualifier].code.coding.system = "http://snomed.info/sct" (exactly)
* component[relativeTimeQualifier].code.coding.code 1..
* component[relativeTimeQualifier].code.coding.code = #118578006 (exactly)
* component[relativeTimeQualifier].code.coding.display 1..
* component[relativeTimeQualifier].code.coding.display = "Relative time" (exactly)
* component[relativeTimeQualifier].value[x] 1..
* component[relativeTimeQualifier].value[x] only Quantity
* component[relativeTimeQualifier].value[x] ^short = "UCUM"
* component[substanceAmountQualifier] ^short = "If a testing code does not include a substance amount but needs one to qualify the code"
* component[substanceAmountQualifier].code.coding.system 1..
* component[substanceAmountQualifier].code.coding.system = "http://snomed.info/sct" (exactly)
* component[substanceAmountQualifier].code.coding.code 1..
* component[substanceAmountQualifier].code.coding.code = #118555000 (exactly)
* component[substanceAmountQualifier].code.coding.display 1..
* component[substanceAmountQualifier].code.coding.display = "Substance amount" (exactly)
* component[substanceAmountQualifier].value[x] 1..
* component[substanceAmountQualifier].value[x] only Quantity
* component[substanceAmountQualifier].value[x] ^short = "UCUM"
* component[productNameQualifier] ^short = "If a testing code does not include a product name but needs one to qualify the code"
* component[productNameQualifier].code.coding.system 1..
* component[productNameQualifier].code.coding.system = "http://snomed.info/sct" (exactly)
* component[productNameQualifier].code.coding.code 1..
* component[productNameQualifier].code.coding.code = #774167006 (exactly)
* component[productNameQualifier].code.coding.display 1..
* component[productNameQualifier].code.coding.display = "Product name" (exactly)
* component[productNameQualifier].value[x] 1..
* component[productNameQualifier].value[x] only CodeableConcept or string