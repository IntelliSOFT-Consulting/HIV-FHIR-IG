Profile: ConditionProfile
Parent: Condition
Id: ConditionProfile
Title: "ConditionProfile"
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
* identifier 0..* MS
* clinicalStatus 0..1 MS
* verificationStatus 0..1 MS
* category 0..* MS
* severity 0..1 MS
* code 0..1 MS
* bodySite 0..* MS
* subject MS
* encounter MS
* recordedDate 0..1 MS
* recorder MS
* asserter MS
* evidence 0..* MS
* evidence.code 0..* MS
* evidence.detail 0..* MS
* note 0..* MS 