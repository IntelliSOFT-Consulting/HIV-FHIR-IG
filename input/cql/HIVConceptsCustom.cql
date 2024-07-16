library HIVConceptsCustom

codesystem "ConditionCategoryCodes": 'http://terminology.hl7.org/CodeSystem/condition-category'
codesystem "ConditionClinicalStatusCodes": 'http://terminology.hl7.org/CodeSystem/condition-clinical'
codesystem "ObservationCategoryCodes": 'http://terminology.hl7.org/CodeSystem/observation-category'
codesystem "missing concepts": 'missing concepts'
codesystem "Devicestatement-status": 'http://hl7.org/fhir/ValueSet/device-statement-status'

code "encounter-diagnosis": 'encounter-diagnosis' from "ConditionCategoryCodes" display 'Encounter Diagnosis'

// Condition Clinical Status Codes
code "active": 'active' from "ConditionClinicalStatusCodes"
code "recurrence": 'recurrence' from "ConditionClinicalStatusCodes"
code "relapse": 'relapse' from "ConditionClinicalStatusCodes"
code "inactive": 'inactive' from "ConditionClinicalStatusCodes"
code "remission": 'remission' from "ConditionClinicalStatusCodes"
code "resolved": 'resolved' from "ConditionClinicalStatusCodes"

//Observation category codes
code "social-history": 'social-history' from "ObservationCategoryCodes" display 'Social History'

//Device statement status
code "completed": 'completed' from "Devicestatement-status"

//not currently provided
code "needle-syringe": 'needle syringe' from "missing concepts"

