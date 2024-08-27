Profile: MedicationProfile
Parent: Medication
Description: "This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* identifier MS
* code 0..1 MS
* status 0..1 MS
* form 0..1 MS
* amount 0..1 MS
* ingredient 0..* MS
* ingredient.item[x] 1..1 MS
* batch 0..1 MS
* batch.lotNumber 0..1 MS
* batch.expirationDate 0..1 MS