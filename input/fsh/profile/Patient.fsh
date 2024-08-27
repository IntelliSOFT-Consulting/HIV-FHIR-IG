// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PatientProfile
Parent: Patient
Description: "An example profile of the Patient resource."
* identifier 0..* MS
* identifier.system MS
* identifier.value 1..1 MS
* name 1..1 MS
* active MS
* birthDate MS
* maritalStatus MS 
* telecom 0..* MS
* telecom MS
* address MS
* contact.relationship MS
* contact 0..* MS
* contact.name MS
* contact.telecom MS
* contact.gender MS

Instance: PatientProfileExample
InstanceOf: PatientProfile
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"