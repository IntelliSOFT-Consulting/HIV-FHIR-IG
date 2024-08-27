Profile: EncounterProfile
Parent: Encounter
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status 1..1 MS
* serviceType 0..1 MS
* subject 0..1 MS
* period 0..1 MS
* length 0..1 MS
* reasonCode 0..1 MS
* appointment 0..1 MS
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* serviceProvider 0..1 MS