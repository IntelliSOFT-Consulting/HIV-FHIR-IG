Profile: ObservationProfile
Parent: Observation
Id: ObservationProfile
Title: "ObservationProfile"
Description: "ObservationProfile"
* identifier 0..* MS
* identifier.system 1..1  MS
* identifier.value 1..1   MS
* status 1..1 MS
* category 0..*   MS
* code 1..1   MS
* subject 0..1 MS
* subject only Reference(Patient)
* effective[x] 0..1   MS
* effectiveDateTime   MS
* effectivePeriod MS
* issued 0..1 MS
* value[x] 0..1 MS
* valueQuantity  MS
* valueCodeableConcept MS
* valueString MS
* valueBoolean MS
* valueInteger MS
* valueRange MS
* valueTime MS
* valueDateTime MS
* valuePeriodMS
* interpretation 0..* MS
* bodySite 0..1 MS
* method 0..1 MS
* referenceRange 0..* MS
* component.code 1..1 MS
* component.value[x] 0..1 MS
* interpretation 0..* MS
* dataAbsentReason 0..1   MS