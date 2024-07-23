library HIVEncounterElements

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRCommon called FC
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include HIVConcepts called Concepts
include HIVCommon called Common
include HIVElements called Elements

parameter Today Date default Today()
parameter EncounterId String

context Patient

/**
 * HIV Elements
 */

// Auto-generated Elements from DAK Data Dictionary
//   Entries based on DAK Data Dictionary for Data Elements marked as used
//   in at least one Decision Support Table or Aggregate Indicator

/*
@dataElement: HIV.A.DE16 - Estimated age (Registration)
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: If DOB is unknown, enter the client's estimated age. Display client's age in number of years.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Estimated age (Registration)":
  Elements."Estimated age (Registration)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Estimated age (Registration) Value":
  "Estimated age (Registration)" O
  return O.value
/* End of Estimated age (Registration) */

/*
@dataElement: HIV.B.DE1 - Reason for visit (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Reason for HIV testing services visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason for visit (HTS)":
  exists "Reason for visit (HTS) Observation"
define "Reason for visit (HTS) Observation":
  Elements."Reason for visit (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reason for visit (HTS) */

/*
@dataElement: HIV.B.DE2 - First-time HIV test (HTS)
@activity: HIV.B1 Determine reason for visit
@description: First encounter for screening for human immunodeficiency virus
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-time HIV test (HTS)":
  exists "First-time HIV test (HTS) Condition"
    or exists "First-time HIV test (HTS) Observation"
define "First-time HIV test (HTS) Condition":
  Elements."First-time HIV test (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "First-time HIV test (HTS) Observation":
  Elements."First-time HIV test (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of First-time HIV test (HTS) */

/*
@dataElement: HIV.B.DE3 - Retesting for HIV (HTS|BDE3)
@activity: HIV.B1 Determine reason for visit
@description: Retesting for human immunodeficiency virus
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retesting for HIV (HTS|BDE3)":
  exists "Retesting for HIV (HTS|BDE3) Condition"
    or exists "Retesting for HIV (HTS|BDE3) Observation"
define "Retesting for HIV (HTS|BDE3) Condition":
  Elements."Retesting for HIV (HTS|BDE3) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Retesting for HIV (HTS|BDE3) Observation":
  Elements."Retesting for HIV (HTS|BDE3) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Retesting for HIV (HTS|BDE3) */

/*
@dataElement: HIV.B.DE4 - HIV testing services visit (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Client attending facility for HIV testing services visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing services visit (HTS)":
  exists "HIV testing services visit (HTS) Condition"
    or exists "HIV testing services visit (HTS) Observation"
define "HIV testing services visit (HTS) Condition":
  Elements."HIV testing services visit (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV testing services visit (HTS) Observation":
  Elements."HIV testing services visit (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV testing services visit (HTS) */

/*
@dataElement: HIV.B.DE14 - Date/time of suspected exposure to HIV (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Date and time when the client had suspected exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of suspected exposure to HIV (HTS)":
  Elements."Date/time of suspected exposure to HIV (HTS)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Date/time of suspected exposure to HIV (HTS) Value":
  "Date/time of suspected exposure to HIV (HTS)" O
  return O.value
/* End of Date/time of suspected exposure to HIV (HTS) */

/*
@dataElement: HIV.B.DE49 - Key population member* (HTS)
@activity: HIV.B6 Capture or update client history
@description: Client is a member of a key population that has an increased risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Key population member* (HTS)":
  exists "Key population member* (HTS) Observation"
define "Key population member* (HTS) Observation":
  Elements."Key population member* (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Key population member* (HTS) */

/*
@dataElement: HIV.B.DE80 - HIV test conducted (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: An HIV test was performed on the client during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test conducted (HTS)":
  exists "HIV test conducted (HTS) Observation"
define "HIV test conducted (HTS) Observation":
  Elements."HIV test conducted (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV test conducted (HTS) */

/*
@dataElement: HIV.B.DE88 - Assay number in testing strategy (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The number of the assay (test kit) in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay number in testing strategy (HTS)":
  exists "Assay number in testing strategy (HTS) Observation"
define "Assay number in testing strategy (HTS) Observation":
  Elements."Assay number in testing strategy (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay number in testing strategy (HTS) */

/*
@dataElement: HIV.B.DE89 - Assay 0 (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: A community outreach test-for-triage or self-test which is not included in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 0 (HTS)":
  exists "Assay 0 (HTS) Condition"
    or exists "Assay 0 (HTS) Observation"
define "Assay 0 (HTS) Condition":
  Elements."Assay 0 (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 0 (HTS) Observation":
  Elements."Assay 0 (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 0 (HTS) */

/*
@dataElement: HIV.B.DE90 - Assay 1 (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 (HTS)":
  exists "Assay 1 (HTS) Condition"
    or exists "Assay 1 (HTS) Observation"
define "Assay 1 (HTS) Condition":
  Elements."Assay 1 (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 1 (HTS) Observation":
  Elements."Assay 1 (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 1 (HTS) */

/*
@dataElement: HIV.B.DE91 - Assay 2 (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The second test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 2 (HTS)":
  exists "Assay 2 (HTS) Condition"
    or exists "Assay 2 (HTS) Observation"
define "Assay 2 (HTS) Condition":
  Elements."Assay 2 (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 2 (HTS) Observation":
  Elements."Assay 2 (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 2 (HTS) */

/*
@dataElement: HIV.B.DE92 - Assay 3 (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The third test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 3 (HTS)":
  exists "Assay 3 (HTS) Condition"
    or exists "Assay 3 (HTS) Observation"
define "Assay 3 (HTS) Condition":
  Elements."Assay 3 (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 3 (HTS) Observation":
  Elements."Assay 3 (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 3 (HTS) */

/*
@dataElement: HIV.B.DE93 - Assay 1 repeated (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 repeated (HTS)":
  exists "Assay 1 repeated (HTS) Condition"
    or exists "Assay 1 repeated (HTS) Observation"
define "Assay 1 repeated (HTS) Condition":
  Elements."Assay 1 repeated (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 1 repeated (HTS) Observation":
  Elements."Assay 1 repeated (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 1 repeated (HTS) */

/*
@dataElement: HIV.B.DE94 - Test result of HIV assay 1 (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 (HTS)":
  exists "Test result of HIV assay 1 (HTS) Observation"
define "Test result of HIV assay 1 (HTS) Observation":
  Elements."Test result of HIV assay 1 (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 1 (HTS) */

/*
@dataElement: HIV.B.DE95 - Reactive (HTS|BDE95)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE95)":
  exists "Reactive (HTS|BDE95) Condition"
    or exists "Reactive (HTS|BDE95) Observation"
define "Reactive (HTS|BDE95) Condition":
  Elements."Reactive (HTS|BDE95) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (HTS|BDE95) Observation":
  Elements."Reactive (HTS|BDE95) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (HTS|BDE95) */

/*
@dataElement: HIV.B.DE96 - Non-reactive (HTS|BDE96)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE96)":
  exists "Non-reactive (HTS|BDE96) Condition"
    or exists "Non-reactive (HTS|BDE96) Observation"
define "Non-reactive (HTS|BDE96) Condition":
  Elements."Non-reactive (HTS|BDE96) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (HTS|BDE96) Observation":
  Elements."Non-reactive (HTS|BDE96) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (HTS|BDE96) */

/*
@dataElement: HIV.B.DE97 - Invalid (HTS|BDE97)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE97)":
  exists "Invalid (HTS|BDE97) Condition"
    or exists "Invalid (HTS|BDE97) Observation"
define "Invalid (HTS|BDE97) Condition":
  Elements."Invalid (HTS|BDE97) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (HTS|BDE97) Observation":
  Elements."Invalid (HTS|BDE97) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (HTS|BDE97) */

/*
@dataElement: HIV.B.DE98 - Test result of HIV assay 2 (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the second HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 2 (HTS)":
  exists "Test result of HIV assay 2 (HTS) Observation"
define "Test result of HIV assay 2 (HTS) Observation":
  Elements."Test result of HIV assay 2 (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 2 (HTS) */

/*
@dataElement: HIV.B.DE99 - Reactive (HTS|BDE99)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE99)":
  exists "Reactive (HTS|BDE99) Condition"
    or exists "Reactive (HTS|BDE99) Observation"
define "Reactive (HTS|BDE99) Condition":
  Elements."Reactive (HTS|BDE99) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (HTS|BDE99) Observation":
  Elements."Reactive (HTS|BDE99) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (HTS|BDE99) */

/*
@dataElement: HIV.B.DE100 - Non-reactive (HTS|BDE100)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE100)":
  exists "Non-reactive (HTS|BDE100) Condition"
    or exists "Non-reactive (HTS|BDE100) Observation"
define "Non-reactive (HTS|BDE100) Condition":
  Elements."Non-reactive (HTS|BDE100) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (HTS|BDE100) Observation":
  Elements."Non-reactive (HTS|BDE100) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (HTS|BDE100) */

/*
@dataElement: HIV.B.DE101 - Invalid (HTS|BDE101)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE101)":
  exists "Invalid (HTS|BDE101) Condition"
    or exists "Invalid (HTS|BDE101) Observation"
define "Invalid (HTS|BDE101) Condition":
  Elements."Invalid (HTS|BDE101) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (HTS|BDE101) Observation":
  Elements."Invalid (HTS|BDE101) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (HTS|BDE101) */

/*
@dataElement: HIV.B.DE102 - Test result of HIV assay 3 (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the third HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 3 (HTS)":
  exists "Test result of HIV assay 3 (HTS) Observation"
define "Test result of HIV assay 3 (HTS) Observation":
  Elements."Test result of HIV assay 3 (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 3 (HTS) */

/*
@dataElement: HIV.B.DE103 - Reactive (HTS|BDE103)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE103)":
  exists "Reactive (HTS|BDE103) Condition"
    or exists "Reactive (HTS|BDE103) Observation"
define "Reactive (HTS|BDE103) Condition":
  Elements."Reactive (HTS|BDE103) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (HTS|BDE103) Observation":
  Elements."Reactive (HTS|BDE103) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (HTS|BDE103) */

/*
@dataElement: HIV.B.DE104 - Non-reactive (HTS|BDE104)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE104)":
  exists "Non-reactive (HTS|BDE104) Condition"
    or exists "Non-reactive (HTS|BDE104) Observation"
define "Non-reactive (HTS|BDE104) Condition":
  Elements."Non-reactive (HTS|BDE104) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (HTS|BDE104) Observation":
  Elements."Non-reactive (HTS|BDE104) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (HTS|BDE104) */

/*
@dataElement: HIV.B.DE105 - Invalid (HTS|BDE105)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE105)":
  exists "Invalid (HTS|BDE105) Condition"
    or exists "Invalid (HTS|BDE105) Observation"
define "Invalid (HTS|BDE105) Condition":
  Elements."Invalid (HTS|BDE105) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (HTS|BDE105) Observation":
  Elements."Invalid (HTS|BDE105) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (HTS|BDE105) */

/*
@dataElement: HIV.B.DE106 - Test result of HIV assay 1 repeated (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the repeated first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 repeated (HTS)":
  exists "Test result of HIV assay 1 repeated (HTS) Observation"
define "Test result of HIV assay 1 repeated (HTS) Observation":
  Elements."Test result of HIV assay 1 repeated (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 1 repeated (HTS) */

/*
@dataElement: HIV.B.DE107 - Reactive (HTS|BDE107)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE107)":
  exists "Reactive (HTS|BDE107) Condition"
    or exists "Reactive (HTS|BDE107) Observation"
define "Reactive (HTS|BDE107) Condition":
  Elements."Reactive (HTS|BDE107) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (HTS|BDE107) Observation":
  Elements."Reactive (HTS|BDE107) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (HTS|BDE107) */

/*
@dataElement: HIV.B.DE108 - Non-reactive (HTS|BDE108)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE108)":
  exists "Non-reactive (HTS|BDE108) Condition"
    or exists "Non-reactive (HTS|BDE108) Observation"
define "Non-reactive (HTS|BDE108) Condition":
  Elements."Non-reactive (HTS|BDE108) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (HTS|BDE108) Observation":
  Elements."Non-reactive (HTS|BDE108) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (HTS|BDE108) */

/*
@dataElement: HIV.B.DE109 - Invalid (HTS|BDE109)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE109)":
  exists "Invalid (HTS|BDE109) Condition"
    or exists "Invalid (HTS|BDE109) Observation"
define "Invalid (HTS|BDE109) Condition":
  Elements."Invalid (HTS|BDE109) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (HTS|BDE109) Observation":
  Elements."Invalid (HTS|BDE109) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (HTS|BDE109) */

/*
@dataElement: HIV.B.DE141 - Partner virally suppressed on ART (HTS)
@activity: HIV.B6 Capture or update client history
@description: ART and virally suppression status of a partner of the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner virally suppressed on ART (HTS)":
  exists "Partner virally suppressed on ART (HTS) Observation"
define "Partner virally suppressed on ART (HTS) Observation":
  Elements."Partner virally suppressed on ART (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Partner virally suppressed on ART (HTS) */

/*
@dataElement: HIV.B.DE142 - Counselling provided (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Counselling provided (HTS)":
  exists "Counselling provided (HTS) Observation"
define "Counselling provided (HTS) Observation":
  Elements."Counselling provided (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Counselling provided (HTS) */

/*
@dataElement: HIV.B.DE143 - HIV-positive counselling conducted (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client who has been diagnosed with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive counselling conducted (HTS)":
  exists "HIV-positive counselling conducted (HTS) Condition"
    or exists "HIV-positive counselling conducted (HTS) Observation"
define "HIV-positive counselling conducted (HTS) Condition":
  Elements."HIV-positive counselling conducted (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV-positive counselling conducted (HTS) Observation":
  Elements."HIV-positive counselling conducted (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV-positive counselling conducted (HTS) */

/*
@dataElement: HIV.B.DE144 - Hepatitis B positive counselling conducted (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client who has been diagnosed with hepatitis B
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B positive counselling conducted (HTS)":
  exists "Hepatitis B positive counselling conducted (HTS) Condition"
    or exists "Hepatitis B positive counselling conducted (HTS) Observation"
define "Hepatitis B positive counselling conducted (HTS) Condition":
  Elements."Hepatitis B positive counselling conducted (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Hepatitis B positive counselling conducted (HTS) Observation":
  Elements."Hepatitis B positive counselling conducted (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Hepatitis B positive counselling conducted (HTS) */

/*
@dataElement: HIV.B.DE145 - Hepatitis C positive counselling conducted (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client who has been diagnosed with hepatitis C
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis C positive counselling conducted (HTS)":
  exists "Hepatitis C positive counselling conducted (HTS) Condition"
    or exists "Hepatitis C positive counselling conducted (HTS) Observation"
define "Hepatitis C positive counselling conducted (HTS) Condition":
  Elements."Hepatitis C positive counselling conducted (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Hepatitis C positive counselling conducted (HTS) Observation":
  Elements."Hepatitis C positive counselling conducted (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Hepatitis C positive counselling conducted (HTS) */

/*
@dataElement: HIV.B.DE146 - Syphilis counselling, treatment and further testing (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling and treatment was provided to a client who has been diagnosed with syphilis. Additional testing (RPR test) recommended.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis counselling, treatment and further testing (HTS)":
  exists "Syphilis counselling, treatment and further testing (HTS) Condition"
    or exists "Syphilis counselling, treatment and further testing (HTS) Observation"
define "Syphilis counselling, treatment and further testing (HTS) Condition":
  Elements."Syphilis counselling, treatment and further testing (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Syphilis counselling, treatment and further testing (HTS) Observation":
  Elements."Syphilis counselling, treatment and further testing (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Syphilis counselling, treatment and further testing (HTS) */

/*
@dataElement: HIV.B.DE147 - Linked to enrolment in care and ART initiation (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Linkage made from HIV testing to enrolment in care following an HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Linked to enrolment in care and ART initiation (HTS)":
  exists "Linked to enrolment in care and ART initiation (HTS) Condition"
    or exists "Linked to enrolment in care and ART initiation (HTS) Observation"
define "Linked to enrolment in care and ART initiation (HTS) Condition":
  Elements."Linked to enrolment in care and ART initiation (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Linked to enrolment in care and ART initiation (HTS) Observation":
  Elements."Linked to enrolment in care and ART initiation (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Linked to enrolment in care and ART initiation (HTS) */

/*
@dataElement: HIV.B.DE148 - VMMC counselling provided (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling for voluntary medical male circumcision (VMMC) was provided following an HIV-negative test
*/
// TODO: Replace placeholder with relevant CQL logic
define "VMMC counselling provided (HTS)":
  exists "VMMC counselling provided (HTS) Condition"
    or exists "VMMC counselling provided (HTS) Observation"
define "VMMC counselling provided (HTS) Condition":
  Elements."VMMC counselling provided (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "VMMC counselling provided (HTS) Observation":
  Elements."VMMC counselling provided (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of VMMC counselling provided (HTS) */

/*
@dataElement: HIV.B.DE149 - Prevention services offered and referrals (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention services offered and referrals (HTS)":
  exists "Prevention services offered and referrals (HTS) Observation"
define "Prevention services offered and referrals (HTS) Observation":
  Elements."Prevention services offered and referrals (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Prevention services offered and referrals (HTS) */

/*
@dataElement: HIV.B.DE150 - Offer male and female condoms and condom-compatible lubricants (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer male and female condoms and condom-compatible lubricants
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer male and female condoms and condom-compatible lubricants (HTS)":
  exists "Offer male and female condoms and condom-compatible lubricants (HTS) Condition"
    or exists "Offer male and female condoms and condom-compatible lubricants (HTS) Observation"
define "Offer male and female condoms and condom-compatible lubricants (HTS) Condition":
  Elements."Offer male and female condoms and condom-compatible lubricants (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Offer male and female condoms and condom-compatible lubricants (HTS) Observation":
  Elements."Offer male and female condoms and condom-compatible lubricants (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Offer male and female condoms and condom-compatible lubricants (HTS) */

/*
@dataElement: HIV.B.DE151 - Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer pre-exposure prophylaxis (PrEP) to people with substantial ongoing risk of HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS)":
  exists "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Condition"
    or exists "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Observation"
define "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Condition":
  Elements."Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Observation":
  Elements."Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) */

/*
@dataElement: HIV.B.DE152 - Offer post-exposure prophylaxis PEP following suspected exposure (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer client for PEP following suspected exposure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer post-exposure prophylaxis PEP following suspected exposure (HTS)":
  exists "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Condition"
    or exists "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Observation"
define "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Condition":
  Elements."Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Observation":
  Elements."Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Offer post-exposure prophylaxis PEP following suspected exposure (HTS) */

/*
@dataElement: HIV.B.DE153 - Voluntary medical male circumcision VMMC (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer referral for VMMC services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Voluntary medical male circumcision VMMC (HTS)":
  exists "Voluntary medical male circumcision VMMC (HTS) Condition"
    or exists "Voluntary medical male circumcision VMMC (HTS) Observation"
define "Voluntary medical male circumcision VMMC (HTS) Condition":
  Elements."Voluntary medical male circumcision VMMC (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Voluntary medical male circumcision VMMC (HTS) Observation":
  Elements."Voluntary medical male circumcision VMMC (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Voluntary medical male circumcision VMMC (HTS) */

/*
@dataElement: HIV.B.DE154 - Harm reduction for people who inject drugs (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to harm reduction services for people who inject drugs (needle and syringe programmes, opioid substitution therapy, other drug-dependence treatment and opioid overdose prevention and management)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Harm reduction for people who inject drugs (HTS)":
  exists "Harm reduction for people who inject drugs (HTS) Condition"
    or exists "Harm reduction for people who inject drugs (HTS) Observation"
define "Harm reduction for people who inject drugs (HTS) Condition":
  Elements."Harm reduction for people who inject drugs (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Harm reduction for people who inject drugs (HTS) Observation":
  Elements."Harm reduction for people who inject drugs (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Harm reduction for people who inject drugs (HTS) */

/*
@dataElement: HIV.B.DE155 - Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations
*/
// TODO: Replace placeholder with relevant CQL logic
define "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS)":
  exists "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Condition"
    or exists "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Observation"
define "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Condition":
  Elements."Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Observation":
  Elements."Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) */

/*
@dataElement: HIV.B.DE156 - HIV testing for partners and biological children (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer voluntary testing for all partners and biological children of positive cases (includes partner services and index case testing), as welll as partners and social contacts of people from key populations, where appropriate
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing for partners and biological children (HTS)":
  exists "HIV testing for partners and biological children (HTS) Condition"
    or exists "HIV testing for partners and biological children (HTS) Observation"
define "HIV testing for partners and biological children (HTS) Condition":
  Elements."HIV testing for partners and biological children (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV testing for partners and biological children (HTS) Observation":
  Elements."HIV testing for partners and biological children (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV testing for partners and biological children (HTS) */

/*
@dataElement: HIV.B.DE157 - HIV testing for partners and social contacts of people from key populations, where appropriate (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer voluntary testing for partners and social contacts of people from key populations, where appropriate
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS)":
  exists "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Condition"
    or exists "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Observation"
define "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Condition":
  Elements."HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Observation":
  Elements."HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) */

/*
@dataElement: HIV.B.DE158 - Sexual and reproductive health integrated services (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to sexual and reproductive health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual and reproductive health integrated services (HTS)":
  exists "Sexual and reproductive health integrated services (HTS) Observation"
define "Sexual and reproductive health integrated services (HTS) Observation":
  Elements."Sexual and reproductive health integrated services (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sexual and reproductive health integrated services (HTS) */

/*
@dataElement: HIV.B.DE159 - Contraception and family planning (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer contraception and family planning services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraception and family planning (HTS)":
  exists "Contraception and family planning (HTS) Condition"
    or exists "Contraception and family planning (HTS) Observation"
define "Contraception and family planning (HTS) Condition":
  Elements."Contraception and family planning (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Contraception and family planning (HTS) Observation":
  Elements."Contraception and family planning (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Contraception and family planning (HTS) */

/*
@dataElement: HIV.B.DE160 - Check pregnancy status (HTS)
@activity: HIV.B9 Determine recommended services
@description: Check women's pregnancy status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Check pregnancy status (HTS)":
  exists "Check pregnancy status (HTS) Condition"
    or exists "Check pregnancy status (HTS) Observation"
define "Check pregnancy status (HTS) Condition":
  Elements."Check pregnancy status (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Check pregnancy status (HTS) Observation":
  Elements."Check pregnancy status (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Check pregnancy status (HTS) */

/*
@dataElement: HIV.B.DE161 - Prevention of mother-to-child transmission counselling (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer services for prevention of mother-to-child transmission (counselling)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention of mother-to-child transmission counselling (HTS)":
  exists "Prevention of mother-to-child transmission counselling (HTS) Condition"
    or exists "Prevention of mother-to-child transmission counselling (HTS) Observation"
define "Prevention of mother-to-child transmission counselling (HTS) Condition":
  Elements."Prevention of mother-to-child transmission counselling (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Prevention of mother-to-child transmission counselling (HTS) Observation":
  Elements."Prevention of mother-to-child transmission counselling (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Prevention of mother-to-child transmission counselling (HTS) */

/*
@dataElement: HIV.B.DE162 - Cervical cancer screening and treatment counselling (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer cervical cancer screening and treatment counselling and services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening and treatment counselling (HTS)":
  exists "Cervical cancer screening and treatment counselling (HTS) Condition"
    or exists "Cervical cancer screening and treatment counselling (HTS) Observation"
define "Cervical cancer screening and treatment counselling (HTS) Condition":
  Elements."Cervical cancer screening and treatment counselling (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cervical cancer screening and treatment counselling (HTS) Observation":
  Elements."Cervical cancer screening and treatment counselling (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cervical cancer screening and treatment counselling (HTS) */

/*
@dataElement: HIV.B.DE163 - Anal cancer screening for men who have sex with men (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer services for anal cancer screening (for men who have sex with men)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anal cancer screening for men who have sex with men (HTS)":
  exists "Anal cancer screening for men who have sex with men (HTS) Condition"
    or exists "Anal cancer screening for men who have sex with men (HTS) Observation"
define "Anal cancer screening for men who have sex with men (HTS) Condition":
  Elements."Anal cancer screening for men who have sex with men (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Anal cancer screening for men who have sex with men (HTS) Observation":
  Elements."Anal cancer screening for men who have sex with men (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Anal cancer screening for men who have sex with men (HTS) */

/*
@dataElement: HIV.B.DE164 - STI testing and treatment services (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer sexually transmitted infection (STI) testing and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI testing and treatment services (HTS)":
  exists "STI testing and treatment services (HTS) Condition"
    or exists "STI testing and treatment services (HTS) Observation"
define "STI testing and treatment services (HTS) Condition":
  Elements."STI testing and treatment services (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "STI testing and treatment services (HTS) Observation":
  Elements."STI testing and treatment services (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of STI testing and treatment services (HTS) */

/*
@dataElement: HIV.B.DE165 - Offer other clinical services (HTS)
@activity: HIV.B9 Determine recommended services
@description: Other clinical services offered or referrals given to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer other clinical services (HTS)":
  exists "Offer other clinical services (HTS) Observation"
define "Offer other clinical services (HTS) Observation":
  Elements."Offer other clinical services (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Offer other clinical services (HTS) */

/*
@dataElement: HIV.B.DE166 - Assessment and provision of vaccinations (HTS)
@activity: HIV.B9 Determine recommended services
@description: Assessment and provision of vaccinations, such as for people from key populations, pregnant women and infants; and, where appropriate, tetanus vaccination for adolescent boys and men receiving VMMC
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assessment and provision of vaccinations (HTS)":
  exists "Assessment and provision of vaccinations (HTS) Condition"
    or exists "Assessment and provision of vaccinations (HTS) Observation"
define "Assessment and provision of vaccinations (HTS) Condition":
  Elements."Assessment and provision of vaccinations (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assessment and provision of vaccinations (HTS) Observation":
  Elements."Assessment and provision of vaccinations (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assessment and provision of vaccinations (HTS) */

/*
@dataElement: HIV.B.DE167 - Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for HBV and/or HCV testing and treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS)":
  exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Condition"
    or exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Observation"
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Condition":
  Elements."Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Observation":
  Elements."Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) */

/*
@dataElement: HIV.B.DE168 - Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS)":
  exists "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Condition"
    or exists "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Observation"
define "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Condition":
  Elements."Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Observation":
  Elements."Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) */

/*
@dataElement: HIV.B.DE169 - Intensified TB case finding and linkage to TB treatment provided (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for intensified TB case finding and linkage to TB treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intensified TB case finding and linkage to TB treatment provided (HTS)":
  exists "Intensified TB case finding and linkage to TB treatment provided (HTS) Condition"
    or exists "Intensified TB case finding and linkage to TB treatment provided (HTS) Observation"
define "Intensified TB case finding and linkage to TB treatment provided (HTS) Condition":
  Elements."Intensified TB case finding and linkage to TB treatment provided (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Intensified TB case finding and linkage to TB treatment provided (HTS) Observation":
  Elements."Intensified TB case finding and linkage to TB treatment provided (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Intensified TB case finding and linkage to TB treatment provided (HTS) */

/*
@dataElement: HIV.B.DE170 - Provision of isoniazid preventive therapy if person does not have TB (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for provision of isoniazid preventive therapy if person does not have TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Provision of isoniazid preventive therapy if person does not have TB (HTS)":
  exists "Provision of isoniazid preventive therapy if person does not have TB (HTS) Condition"
    or exists "Provision of isoniazid preventive therapy if person does not have TB (HTS) Observation"
define "Provision of isoniazid preventive therapy if person does not have TB (HTS) Condition":
  Elements."Provision of isoniazid preventive therapy if person does not have TB (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Provision of isoniazid preventive therapy if person does not have TB (HTS) Observation":
  Elements."Provision of isoniazid preventive therapy if person does not have TB (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Provision of isoniazid preventive therapy if person does not have TB (HTS) */

/*
@dataElement: HIV.B.DE171 - Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for malaria prevention (such as bed nets and prophylaxis), depending on epidemiology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS)":
  exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Condition"
    or exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Observation"
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Condition":
  Elements."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Observation":
  Elements."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) */

/*
@dataElement: HIV.B.DE172 - Other support services (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for other support services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other support services (HTS)":
  exists "Other support services (HTS) Observation"
define "Other support services (HTS) Observation":
  Elements."Other support services (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other support services (HTS) */

/*
@dataElement: HIV.B.DE173 - Mental health services (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for mental health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mental health services (HTS)":
  exists "Mental health services (HTS) Condition"
    or exists "Mental health services (HTS) Observation"
define "Mental health services (HTS) Condition":
  Elements."Mental health services (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Mental health services (HTS) Observation":
  Elements."Mental health services (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Mental health services (HTS) */

/*
@dataElement: HIV.B.DE174 - Psychosocial counselling, support and treatment adherence counselling (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for psychosocial counselling, support and treatment adherence counselling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Psychosocial counselling, support and treatment adherence counselling (HTS)":
  exists "Psychosocial counselling, support and treatment adherence counselling (HTS) Condition"
    or exists "Psychosocial counselling, support and treatment adherence counselling (HTS) Observation"
define "Psychosocial counselling, support and treatment adherence counselling (HTS) Condition":
  Elements."Psychosocial counselling, support and treatment adherence counselling (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Psychosocial counselling, support and treatment adherence counselling (HTS) Observation":
  Elements."Psychosocial counselling, support and treatment adherence counselling (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Psychosocial counselling, support and treatment adherence counselling (HTS) */

/*
@dataElement: HIV.B.DE175 - Support for disclosure and partner services (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for support for disclosure and partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Support for disclosure and partner services (HTS)":
  exists "Support for disclosure and partner services (HTS) Condition"
    or exists "Support for disclosure and partner services (HTS) Observation"
define "Support for disclosure and partner services (HTS) Condition":
  Elements."Support for disclosure and partner services (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Support for disclosure and partner services (HTS) Observation":
  Elements."Support for disclosure and partner services (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Support for disclosure and partner services (HTS) */

/*
@dataElement: HIV.B.DE176 - Legal and social services (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for legal and social services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Legal and social services (HTS)":
  exists "Legal and social services (HTS) Condition"
    or exists "Legal and social services (HTS) Observation"
define "Legal and social services (HTS) Condition":
  Elements."Legal and social services (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Legal and social services (HTS) Observation":
  Elements."Legal and social services (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Legal and social services (HTS) */

/*
@dataElement: HIV.B.DE177 - Services for responding to violence against women (HTS)
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for services for responding to violence against women, including first-line support and psychosocial support, post-rape care and other support services including shelters, legal services and women and child protection services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Services for responding to violence against women (HTS)":
  exists "Services for responding to violence against women (HTS) Condition"
    or exists "Services for responding to violence against women (HTS) Observation"
define "Services for responding to violence against women (HTS) Condition":
  Elements."Services for responding to violence against women (HTS) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Services for responding to violence against women (HTS) Observation":
  Elements."Services for responding to violence against women (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Services for responding to violence against women (HTS) */

/*
@dataElement: HIV.B.DE191 - Type of follow-up appointment (HTS)
@activity: HIV.B20 Schedule retest
@description: Type of follow-up appointment for testing services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of follow-up appointment (HTS)":
  exists "Type of follow-up appointment (HTS) Observation"
define "Type of follow-up appointment (HTS) Observation":
  Elements."Type of follow-up appointment (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Type of follow-up appointment (HTS) */

/*
@dataElement: HIV.B.DE192 - Retesting for HIV (HTS|BDE192)
@activity: HIV.B20 Schedule retest
@description: Retesting follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retesting for HIV (HTS|BDE192)":
  exists "Retesting for HIV (HTS|BDE192) Condition"
    or exists "Retesting for HIV (HTS|BDE192) Observation"
define "Retesting for HIV (HTS|BDE192) Condition":
  Elements."Retesting for HIV (HTS|BDE192) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Retesting for HIV (HTS|BDE192) Observation":
  Elements."Retesting for HIV (HTS|BDE192) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Retesting for HIV (HTS|BDE192) */

/*
@dataElement: HIV.B.DE193 - Other (HTS|BDE193)
@activity: HIV.B20 Schedule retest
@description: Other reason for the follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE193)":
  exists "Other (HTS|BDE193) Condition"
    or exists "Other (HTS|BDE193) Observation"
define "Other (HTS|BDE193) Condition":
  Elements."Other (HTS|BDE193) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other (HTS|BDE193) Observation":
  Elements."Other (HTS|BDE193) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other (HTS|BDE193) */

/*
@dataElement: HIV.B.DE195 - Date/time of follow-up appointment (HTS)
@activity: HIV.B20 Schedule retest
@description: Date the patient is to return for monitoring, re-supply or any other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of follow-up appointment (HTS)":
  Elements."Date/time of follow-up appointment (HTS)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Date/time of follow-up appointment (HTS) Value":
  "Date/time of follow-up appointment (HTS)" O
  return O.value
/* End of Date/time of follow-up appointment (HTS) */

/*
@dataElement: HIV.B.DE224 - HIV retest prior to starting ART conducted (HTS)
@activity: HIV.B20 Schedule retest
@description: HIV retest prior to starting ART conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV retest prior to starting ART conducted (HTS)":
  exists "HIV retest prior to starting ART conducted (HTS) Observation"
define "HIV retest prior to starting ART conducted (HTS) Observation":
  Elements."HIV retest prior to starting ART conducted (HTS) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV retest prior to starting ART conducted (HTS) */

/*
@dataElement: HIV.C.DE9 - Date/time of suspected exposure to HIV (PrEP)
@activity: HIV.C3 Capture or update client history
@description: When the suspect exposure to HIV took place
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of suspected exposure to HIV (PrEP)":
  Elements."Date/time of suspected exposure to HIV (PrEP)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Date/time of suspected exposure to HIV (PrEP) Value":
  "Date/time of suspected exposure to HIV (PrEP)" O
  return O.value
/* End of Date/time of suspected exposure to HIV (PrEP) */

/*
@dataElement: HIV.C.DE10 - Currently on PrEP (PrEP)
@activity: HIV.C3 Capture or update client history
@description: The client is currently taking PrEP. Oral pre-exposure prophylaxis (PrEP) of HIV is the use of ARV drugs by people who are not infected with HIV to block the acquisition of HIV.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently on PrEP (PrEP)":
  exists "Currently on PrEP (PrEP) Observation"
define "Currently on PrEP (PrEP) Observation":
  Elements."Currently on PrEP (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Currently on PrEP (PrEP) */

/*
@dataElement: HIV.C.DE17 - Current PrEP regimen (PrEP)
@activity: HIV.C3 Capture or update client history
@description: HIV pre-exposure prophylaxis (PrEP) regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current PrEP regimen (PrEP)":
  exists "Current PrEP regimen (PrEP) Observation"
define "Current PrEP regimen (PrEP) Observation":
  Elements."Current PrEP regimen (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Current PrEP regimen (PrEP) */

/*
@dataElement: HIV.C.DE18 - TDF + FTC (PrEP|CDE18)
@activity: HIV.C3 Capture or update client history
@description: Treated with tenofovir disoproxil fumarate (TDF) and emtricitabine (FTC) pre-exposure prophylaxis (PrEP) regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + FTC (PrEP|CDE18)":
  exists "TDF + FTC (PrEP|CDE18) Condition"
    or exists "TDF + FTC (PrEP|CDE18) Observation"
define "TDF + FTC (PrEP|CDE18) Condition":
  Elements."TDF + FTC (PrEP|CDE18) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF + FTC (PrEP|CDE18) Observation":
  Elements."TDF + FTC (PrEP|CDE18) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF + FTC (PrEP|CDE18) */

/*
@dataElement: HIV.C.DE19 - TDF (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Treated with single-agent tenofovir disoproxil fumarate (TDF) pre-exposure prophylaxis (PrEP) regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF (PrEP)":
  exists "TDF (PrEP) Condition"
    or exists "TDF (PrEP) Observation"
define "TDF (PrEP) Condition":
  Elements."TDF (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF (PrEP) Observation":
  Elements."TDF (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF (PrEP) */

/*
@dataElement: HIV.C.DE20 - TDF + 3TC (PrEP|CDE20)
@activity: HIV.C3 Capture or update client history
@description: Treated with tenofovir disoproxil fumarate (TDF) and lamivudine (3TC) pre-exposure prophylaxis (PrEP) regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + 3TC (PrEP|CDE20)":
  exists "TDF + 3TC (PrEP|CDE20) Condition"
    or exists "TDF + 3TC (PrEP|CDE20) Observation"
define "TDF + 3TC (PrEP|CDE20) Condition":
  Elements."TDF + 3TC (PrEP|CDE20) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF + 3TC (PrEP|CDE20) Observation":
  Elements."TDF + 3TC (PrEP|CDE20) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF + 3TC (PrEP|CDE20) */

/*
@dataElement: HIV.C.DE21 - Other TDF-based regimen (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Treated with other tenofovir disoproxil fumarate (TDF)-based regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other TDF-based regimen (PrEP)":
  exists "Other TDF-based regimen (PrEP) Condition"
    or exists "Other TDF-based regimen (PrEP) Observation"
define "Other TDF-based regimen (PrEP) Condition":
  Elements."Other TDF-based regimen (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other TDF-based regimen (PrEP) Observation":
  Elements."Other TDF-based regimen (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other TDF-based regimen (PrEP) */

/*
@dataElement: HIV.C.DE22 - Dapivirine vaginal ring DVR (PrEP|CDE22)
@activity: HIV.C3 Capture or update client history
@description: Dapivirine vaginal ring (DVR) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dapivirine vaginal ring DVR (PrEP|CDE22)":
  exists "Dapivirine vaginal ring DVR (PrEP|CDE22) Condition"
    or exists "Dapivirine vaginal ring DVR (PrEP|CDE22) Observation"
define "Dapivirine vaginal ring DVR (PrEP|CDE22) Condition":
  Elements."Dapivirine vaginal ring DVR (PrEP|CDE22) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Dapivirine vaginal ring DVR (PrEP|CDE22) Observation":
  Elements."Dapivirine vaginal ring DVR (PrEP|CDE22) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Dapivirine vaginal ring DVR (PrEP|CDE22) */

/*
@dataElement: HIV.C.DE23 - CAB-LA (PrEP|CDE23)
@activity: HIV.C3 Capture or update client history
@description: Long-acting injectable cabotegravir
*/
// TODO: Replace placeholder with relevant CQL logic
define "CAB-LA (PrEP|CDE23)":
  exists "CAB-LA (PrEP|CDE23) Condition"
    or exists "CAB-LA (PrEP|CDE23) Observation"
define "CAB-LA (PrEP|CDE23) Condition":
  Elements."CAB-LA (PrEP|CDE23) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "CAB-LA (PrEP|CDE23) Observation":
  Elements."CAB-LA (PrEP|CDE23) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of CAB-LA (PrEP|CDE23) */

/*
@dataElement: HIV.C.DE31 - PEP history (PrEP)
@activity: HIV.C3 Capture or update client history
@description: The client's history in taking post-exposure prophylaxis (PEP) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "PEP history (PrEP)":
  exists "PEP history (PrEP) Observation"
define "PEP history (PrEP) Observation":
  Elements."PEP history (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of PEP history (PrEP) */

/*
@dataElement: HIV.C.DE32 - First-time user (PrEP|CDE32)
@activity: HIV.C3 Capture or update client history
@description: The client has never used post-exposure prophylaxis (PEP) before
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-time user (PrEP|CDE32)":
  exists "First-time user (PrEP|CDE32) Condition"
    or exists "First-time user (PrEP|CDE32) Observation"
define "First-time user (PrEP|CDE32) Condition":
  Elements."First-time user (PrEP|CDE32) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "First-time user (PrEP|CDE32) Observation":
  Elements."First-time user (PrEP|CDE32) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of First-time user (PrEP|CDE32) */

/*
@dataElement: HIV.C.DE33 - Repeat user (PrEP)
@activity: HIV.C3 Capture or update client history
@description: The client has used post-exposure prophylaxis (PEP) before
*/
// TODO: Replace placeholder with relevant CQL logic
define "Repeat user (PrEP)":
  exists "Repeat user (PrEP) Condition"
    or exists "Repeat user (PrEP) Observation"
define "Repeat user (PrEP) Condition":
  Elements."Repeat user (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Repeat user (PrEP) Observation":
  Elements."Repeat user (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Repeat user (PrEP) */

/*
@dataElement: HIV.C.DE36 - Signs of substantial risk of HIV infection (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Signs the client is at a substantial risk of HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Signs of substantial risk of HIV infection (PrEP)":
  exists "Signs of substantial risk of HIV infection (PrEP) Observation"
define "Signs of substantial risk of HIV infection (PrEP) Observation":
  Elements."Signs of substantial risk of HIV infection (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Signs of substantial risk of HIV infection (PrEP) */

/*
@dataElement: HIV.C.DE37 - No condom use during sex with more than one partner in the past 6 months (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Recent vaginal or anal sexual intercourse without a condom with more than one partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "No condom use during sex with more than one partner in the past 6 months (PrEP)":
  exists "No condom use during sex with more than one partner in the past 6 months (PrEP) Condition"
    or exists "No condom use during sex with more than one partner in the past 6 months (PrEP) Observation"
define "No condom use during sex with more than one partner in the past 6 months (PrEP) Condition":
  Elements."No condom use during sex with more than one partner in the past 6 months (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "No condom use during sex with more than one partner in the past 6 months (PrEP) Observation":
  Elements."No condom use during sex with more than one partner in the past 6 months (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of No condom use during sex with more than one partner in the past 6 months (PrEP) */

/*
@dataElement: HIV.C.DE38 - STI in the past 6 months (PrEP)
@activity: HIV.C3 Capture or update client history
@description: A recent history (in the last 6 months) of a sexually transmitted infection (STI ) by laboratory testing, self-report or syndromic STI treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI in the past 6 months (PrEP)":
  exists "STI in the past 6 months (PrEP) Condition"
    or exists "STI in the past 6 months (PrEP) Observation"
define "STI in the past 6 months (PrEP) Condition":
  Elements."STI in the past 6 months (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "STI in the past 6 months (PrEP) Observation":
  Elements."STI in the past 6 months (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of STI in the past 6 months (PrEP) */

/*
@dataElement: HIV.C.DE39 - A sexual partner in the past 6 months had one or more HIV risk factors (PrEP)
@activity: HIV.C3 Capture or update client history
@description: A recent sex partner of the client had HIV risk factors
*/
// TODO: Replace placeholder with relevant CQL logic
define "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP)":
  exists "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Condition"
    or exists "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Observation"
define "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Condition":
  Elements."A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Observation":
  Elements."A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) */

/*
@dataElement: HIV.C.DE40 - PrEP requested by client (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client is requesting PrEP, reflecting a decision-making process has already taken place and suggesting of substantial risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP requested by client (PrEP)":
  exists "PrEP requested by client (PrEP) Condition"
    or exists "PrEP requested by client (PrEP) Observation"
define "PrEP requested by client (PrEP) Condition":
  Elements."PrEP requested by client (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "PrEP requested by client (PrEP) Observation":
  Elements."PrEP requested by client (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of PrEP requested by client (PrEP) */

/*
@dataElement: HIV.C.DE46 - Acute HIV infection symptoms (PrEP|CDE46)
@activity: HIV.C3 Capture or update client history
@description: Symptoms that could suggest an acute HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute HIV infection symptoms (PrEP|CDE46)":
  exists "Acute HIV infection symptoms (PrEP|CDE46) Observation"
define "Acute HIV infection symptoms (PrEP|CDE46) Observation":
  Elements."Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Acute HIV infection symptoms (PrEP|CDE46) */

/*
@dataElement: HIV.C.DE47 - Fever (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a fever
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fever (PrEP)":
  exists "Fever (PrEP) Condition"
    or exists "Fever (PrEP) Observation"
define "Fever (PrEP) Condition":
  Elements."Fever (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Fever (PrEP) Observation":
  Elements."Fever (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Fever (PrEP) */

/*
@dataElement: HIV.C.DE48 - Sore throat (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a sore throat
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sore throat (PrEP)":
  exists "Sore throat (PrEP) Condition"
    or exists "Sore throat (PrEP) Observation"
define "Sore throat (PrEP) Condition":
  Elements."Sore throat (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Sore throat (PrEP) Observation":
  Elements."Sore throat (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sore throat (PrEP) */

/*
@dataElement: HIV.C.DE49 - Aches (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include aches
*/
// TODO: Replace placeholder with relevant CQL logic
define "Aches (PrEP)":
  exists "Aches (PrEP) Condition"
    or exists "Aches (PrEP) Observation"
define "Aches (PrEP) Condition":
  Elements."Aches (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Aches (PrEP) Observation":
  Elements."Aches (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Aches (PrEP) */

/*
@dataElement: HIV.C.DE50 - Pains (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include pains
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pains (PrEP)":
  exists "Pains (PrEP) Condition"
    or exists "Pains (PrEP) Observation"
define "Pains (PrEP) Condition":
  Elements."Pains (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Pains (PrEP) Observation":
  Elements."Pains (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Pains (PrEP) */

/*
@dataElement: HIV.C.DE51 - Swollen glands (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include swollen glands
*/
// TODO: Replace placeholder with relevant CQL logic
define "Swollen glands (PrEP)":
  exists "Swollen glands (PrEP) Condition"
    or exists "Swollen glands (PrEP) Observation"
define "Swollen glands (PrEP) Condition":
  Elements."Swollen glands (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Swollen glands (PrEP) Observation":
  Elements."Swollen glands (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Swollen glands (PrEP) */

/*
@dataElement: HIV.C.DE52 - Mouth sores (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a mouth sores
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mouth sores (PrEP)":
  exists "Mouth sores (PrEP) Condition"
    or exists "Mouth sores (PrEP) Observation"
define "Mouth sores (PrEP) Condition":
  Elements."Mouth sores (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Mouth sores (PrEP) Observation":
  Elements."Mouth sores (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Mouth sores (PrEP) */

/*
@dataElement: HIV.C.DE53 - Headaches (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a headaches
*/
// TODO: Replace placeholder with relevant CQL logic
define "Headaches (PrEP)":
  exists "Headaches (PrEP) Condition"
    or exists "Headaches (PrEP) Observation"
define "Headaches (PrEP) Condition":
  Elements."Headaches (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Headaches (PrEP) Observation":
  Elements."Headaches (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Headaches (PrEP) */

/*
@dataElement: HIV.C.DE54 - Rash (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a rash
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rash (PrEP)":
  exists "Rash (PrEP) Condition"
    or exists "Rash (PrEP) Observation"
define "Rash (PrEP) Condition":
  Elements."Rash (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Rash (PrEP) Observation":
  Elements."Rash (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Rash (PrEP) */

/*
@dataElement: HIV.C.DE55 - Sex partners HIV treatment status (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Treatment adherence of client's sex partner for partners that are HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sex partners HIV treatment status (PrEP)":
  exists "Sex partners HIV treatment status (PrEP) Observation"
define "Sex partners HIV treatment status (PrEP) Observation":
  Elements."Sex partners HIV treatment status (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sex partners HIV treatment status (PrEP) */

/*
@dataElement: HIV.C.DE56 - Not on ART (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and not on ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not on ART (PrEP)":
  exists "Not on ART (PrEP) Condition"
    or exists "Not on ART (PrEP) Observation"
define "Not on ART (PrEP) Condition":
  Elements."Not on ART (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Not on ART (PrEP) Observation":
  Elements."Not on ART (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Not on ART (PrEP) */

/*
@dataElement: HIV.C.DE57 - On ART less than 6 months (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and is on ART less than 6 months. ART may take up to 6 months to suppress viral load. In studies of serodiscordant couples, pre-exposure prophylaxis (PrEP) has provided a useful bridge to full viral suppression by the partner during that time.
*/
// TODO: Replace placeholder with relevant CQL logic
define "On ART less than 6 months (PrEP)":
  exists "On ART less than 6 months (PrEP) Condition"
    or exists "On ART less than 6 months (PrEP) Observation"
define "On ART less than 6 months (PrEP) Condition":
  Elements."On ART less than 6 months (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "On ART less than 6 months (PrEP) Observation":
  Elements."On ART less than 6 months (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of On ART less than 6 months (PrEP) */

/*
@dataElement: HIV.C.DE58 - Partner has suspected low adherence to ART (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and is suspected to have low adherence to ART. There have been gaps in the partner's treatment adherence or the couple is not communicating openly about treatment adherence and viral load test results.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner has suspected low adherence to ART (PrEP)":
  exists "Partner has suspected low adherence to ART (PrEP) Condition"
    or exists "Partner has suspected low adherence to ART (PrEP) Observation"
define "Partner has suspected low adherence to ART (PrEP) Condition":
  Elements."Partner has suspected low adherence to ART (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Partner has suspected low adherence to ART (PrEP) Observation":
  Elements."Partner has suspected low adherence to ART (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Partner has suspected low adherence to ART (PrEP) */

/*
@dataElement: HIV.C.DE59 - Partner is not virally suppressed (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and not virally suppressed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner is not virally suppressed (PrEP)":
  exists "Partner is not virally suppressed (PrEP) Condition"
    or exists "Partner is not virally suppressed (PrEP) Observation"
define "Partner is not virally suppressed (PrEP) Condition":
  Elements."Partner is not virally suppressed (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Partner is not virally suppressed (PrEP) Observation":
  Elements."Partner is not virally suppressed (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Partner is not virally suppressed (PrEP) */

/*
@dataElement: HIV.C.DE60 - Partner is virally suppressed and has been on ART for 6 months or more (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and virally suppressed with 6 months or more on ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner is virally suppressed and has been on ART for 6 months or more (PrEP)":
  exists "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Condition"
    or exists "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Observation"
define "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Condition":
  Elements."Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Observation":
  Elements."Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Partner is virally suppressed and has been on ART for 6 months or more (PrEP) */

/*
@dataElement: HIV.C.DE61 - Suitable for PrEP (PrEP)
@activity: HIV.C8 Suitable for PrEP or PEP?
@description: The client is suitable for PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Suitable for PrEP (PrEP)":
  exists "Suitable for PrEP (PrEP) Observation"
define "Suitable for PrEP (PrEP) Observation":
  Elements."Suitable for PrEP (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Suitable for PrEP (PrEP) */

/*
@dataElement: HIV.C.DE91 - Preferred PEP backbone regimen (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone regimen for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred PEP backbone regimen (PrEP)":
  exists "Preferred PEP backbone regimen (PrEP) Observation"
define "Preferred PEP backbone regimen (PrEP) Observation":
  Elements."Preferred PEP backbone regimen (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Preferred PEP backbone regimen (PrEP) */

/*
@dataElement: HIV.C.DE92 - TDF + 3TC (PrEP|CDE92)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone containing tenofovir disoproxil fumarate and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + 3TC (PrEP|CDE92)":
  exists "TDF + 3TC (PrEP|CDE92) Condition"
    or exists "TDF + 3TC (PrEP|CDE92) Observation"
define "TDF + 3TC (PrEP|CDE92) Condition":
  Elements."TDF + 3TC (PrEP|CDE92) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF + 3TC (PrEP|CDE92) Observation":
  Elements."TDF + 3TC (PrEP|CDE92) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF + 3TC (PrEP|CDE92) */

/*
@dataElement: HIV.C.DE93 - TDF + FTC (PrEP|CDE93)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone containing tenofovir disoproxil fumarate and emtricitabine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + FTC (PrEP|CDE93)":
  exists "TDF + FTC (PrEP|CDE93) Condition"
    or exists "TDF + FTC (PrEP|CDE93) Observation"
define "TDF + FTC (PrEP|CDE93) Condition":
  Elements."TDF + FTC (PrEP|CDE93) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF + FTC (PrEP|CDE93) Observation":
  Elements."TDF + FTC (PrEP|CDE93) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF + FTC (PrEP|CDE93) */

/*
@dataElement: HIV.C.DE94 - AZT + 3TC (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone containing zidovudine and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "AZT + 3TC (PrEP)":
  exists "AZT + 3TC (PrEP) Condition"
    or exists "AZT + 3TC (PrEP) Observation"
define "AZT + 3TC (PrEP) Condition":
  Elements."AZT + 3TC (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "AZT + 3TC (PrEP) Observation":
  Elements."AZT + 3TC (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of AZT + 3TC (PrEP) */

/*
@dataElement: HIV.C.DE95 - Alternative PEP backbone regimen (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone regimen for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative PEP backbone regimen (PrEP)":
  exists "Alternative PEP backbone regimen (PrEP) Observation"
define "Alternative PEP backbone regimen (PrEP) Observation":
  Elements."Alternative PEP backbone regimen (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Alternative PEP backbone regimen (PrEP) */

/*
@dataElement: HIV.C.DE96 - ABC + 3TC (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone containing abacavir and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "ABC + 3TC (PrEP)":
  exists "ABC + 3TC (PrEP) Condition"
    or exists "ABC + 3TC (PrEP) Observation"
define "ABC + 3TC (PrEP) Condition":
  Elements."ABC + 3TC (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "ABC + 3TC (PrEP) Observation":
  Elements."ABC + 3TC (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ABC + 3TC (PrEP) */

/*
@dataElement: HIV.C.DE97 - TDF + 3TC (PrEP|CDE97)
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone containing tenofovir disoproxil fumarate and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + 3TC (PrEP|CDE97)":
  exists "TDF + 3TC (PrEP|CDE97) Condition"
    or exists "TDF + 3TC (PrEP|CDE97) Observation"
define "TDF + 3TC (PrEP|CDE97) Condition":
  Elements."TDF + 3TC (PrEP|CDE97) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF + 3TC (PrEP|CDE97) Observation":
  Elements."TDF + 3TC (PrEP|CDE97) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF + 3TC (PrEP|CDE97) */

/*
@dataElement: HIV.C.DE98 - TDF + FTC (PrEP|CDE98)
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone containing tenofovir disoproxil fumarate and emtricitabine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + FTC (PrEP|CDE98)":
  exists "TDF + FTC (PrEP|CDE98) Condition"
    or exists "TDF + FTC (PrEP|CDE98) Observation"
define "TDF + FTC (PrEP|CDE98) Condition":
  Elements."TDF + FTC (PrEP|CDE98) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF + FTC (PrEP|CDE98) Observation":
  Elements."TDF + FTC (PrEP|CDE98) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF + FTC (PrEP|CDE98) */

/*
@dataElement: HIV.C.DE99 - Preferred third PEP drug (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred third drug for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred third PEP drug (PrEP)":
  exists "Preferred third PEP drug (PrEP) Observation"
define "Preferred third PEP drug (PrEP) Observation":
  Elements."Preferred third PEP drug (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Preferred third PEP drug (PrEP) */

/*
@dataElement: HIV.C.DE100 - DTG (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred third drug of dolutegravir
*/
// TODO: Replace placeholder with relevant CQL logic
define "DTG (PrEP)":
  exists "DTG (PrEP) Condition"
    or exists "DTG (PrEP) Observation"
define "DTG (PrEP) Condition":
  Elements."DTG (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "DTG (PrEP) Observation":
  Elements."DTG (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of DTG (PrEP) */

/*
@dataElement: HIV.C.DE101 - Alternative third PEP drug (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative third PEP drug (PrEP)":
  exists "Alternative third PEP drug (PrEP) Observation"
define "Alternative third PEP drug (PrEP) Observation":
  Elements."Alternative third PEP drug (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Alternative third PEP drug (PrEP) */

/*
@dataElement: HIV.C.DE102 - ATV/r (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of atazanavir/ritonavir (ATV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ATV/r (PrEP)":
  exists "ATV/r (PrEP) Condition"
    or exists "ATV/r (PrEP) Observation"
define "ATV/r (PrEP) Condition":
  Elements."ATV/r (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "ATV/r (PrEP) Observation":
  Elements."ATV/r (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ATV/r (PrEP) */

/*
@dataElement: HIV.C.DE103 - DRV/r (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of darunavir/ritonavir (DRV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DRV/r (PrEP)":
  exists "DRV/r (PrEP) Condition"
    or exists "DRV/r (PrEP) Observation"
define "DRV/r (PrEP) Condition":
  Elements."DRV/r (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "DRV/r (PrEP) Observation":
  Elements."DRV/r (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of DRV/r (PrEP) */

/*
@dataElement: HIV.C.DE104 - LPV/r (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of lopinavir/ritonavir (LPV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "LPV/r (PrEP)":
  exists "LPV/r (PrEP) Condition"
    or exists "LPV/r (PrEP) Observation"
define "LPV/r (PrEP) Condition":
  Elements."LPV/r (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "LPV/r (PrEP) Observation":
  Elements."LPV/r (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of LPV/r (PrEP) */

/*
@dataElement: HIV.C.DE105 - RAL (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of raltegravir (RAL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RAL (PrEP)":
  exists "RAL (PrEP) Condition"
    or exists "RAL (PrEP) Observation"
define "RAL (PrEP) Condition":
  Elements."RAL (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "RAL (PrEP) Observation":
  Elements."RAL (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of RAL (PrEP) */

/*
@dataElement: HIV.C.DE106 - Estimated creatinine clearance (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Estimated creatinine clearance of the client returned from lab in mL/min
*/
// TODO: Replace placeholder with relevant CQL logic
define "Estimated creatinine clearance (PrEP)":
  Elements."Estimated creatinine clearance (PrEP)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Estimated creatinine clearance (PrEP) Value":
  "Estimated creatinine clearance (PrEP)" O
  return O.value
/* End of Estimated creatinine clearance (PrEP) */

/*
@dataElement: HIV.C.DE112 - Contraindications to PrEP usage (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Listing of contraindications to pre-exposure prophylaxis (PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraindications to PrEP usage (PrEP)":
  exists "Contraindications to PrEP usage (PrEP) Observation"
define "Contraindications to PrEP usage (PrEP) Observation":
  Elements."Contraindications to PrEP usage (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Contraindications to PrEP usage (PrEP) */

/*
@dataElement: HIV.C.DE113 - Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Allergy to pre-exposure prophylaxis (PrEP) tenofovir disoproxil fumarate (TDF)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP)":
  exists "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Condition"
    or exists "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Observation"
define "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Condition":
  Elements."Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Observation":
  Elements."Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) */

/*
@dataElement: HIV.C.DE114 - HIV-positive (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (PrEP)":
  exists "HIV-positive (PrEP) Condition"
    or exists "HIV-positive (PrEP) Observation"
define "HIV-positive (PrEP) Condition":
  Elements."HIV-positive (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV-positive (PrEP) Observation":
  Elements."HIV-positive (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV-positive (PrEP) */

/*
@dataElement: HIV.C.DE115 - Low estimated creatinine clearance (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Estimated creatinine clearance of less than 60 ml/min (if known)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Low estimated creatinine clearance (PrEP)":
  exists "Low estimated creatinine clearance (PrEP) Condition"
    or exists "Low estimated creatinine clearance (PrEP) Observation"
define "Low estimated creatinine clearance (PrEP) Condition":
  Elements."Low estimated creatinine clearance (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Low estimated creatinine clearance (PrEP) Observation":
  Elements."Low estimated creatinine clearance (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Low estimated creatinine clearance (PrEP) */

/*
@dataElement: HIV.C.DE116 - Acute HIV infection symptoms (PrEP|CDE116)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Symptoms that could suggest an acute HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute HIV infection symptoms (PrEP|CDE116)":
  exists "Acute HIV infection symptoms (PrEP|CDE116) Condition"
    or exists "Acute HIV infection symptoms (PrEP|CDE116) Observation"
define "Acute HIV infection symptoms (PrEP|CDE116) Condition":
  Elements."Acute HIV infection symptoms (PrEP|CDE116) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Acute HIV infection symptoms (PrEP|CDE116) Observation":
  Elements."Acute HIV infection symptoms (PrEP|CDE116) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Acute HIV infection symptoms (PrEP|CDE116) */

/*
@dataElement: HIV.C.DE117 - Probable recent exposure to HIV (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: When the client is reported to have had probable recent exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Probable recent exposure to HIV (PrEP)":
  exists "Probable recent exposure to HIV (PrEP) Condition"
    or exists "Probable recent exposure to HIV (PrEP) Observation"
define "Probable recent exposure to HIV (PrEP) Condition":
  Elements."Probable recent exposure to HIV (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Probable recent exposure to HIV (PrEP) Observation":
  Elements."Probable recent exposure to HIV (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Probable recent exposure to HIV (PrEP) */

/*
@dataElement: HIV.C.DE118 - Other allergy or contraindication to a medicine in the PrEP regimen (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client has another allergy or contraindication to a medicine in the pre-exposure prophylaxis (PrEP) regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP)":
  exists "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Condition"
    or exists "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Observation"
define "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Condition":
  Elements."Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Observation":
  Elements."Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) */

/*
@dataElement: HIV.C.DE123 - Adherence counselling provided (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Whether adherence counselling was provided
*/
// TODO: Replace placeholder with relevant CQL logic
define "Adherence counselling provided (PrEP)":
  exists "Adherence counselling provided (PrEP) Observation"
define "Adherence counselling provided (PrEP) Observation":
  Elements."Adherence counselling provided (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Adherence counselling provided (PrEP) */

/*
@dataElement: HIV.C.DE124 - Date/time of follow-up appointment (PrEP)
@activity: HIV.C24 Schedule follow-up
@description: Date the client is to return for monitoring, re-supply, or any other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of follow-up appointment (PrEP)":
  Elements."Date/time of follow-up appointment (PrEP)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Date/time of follow-up appointment (PrEP) Value":
  "Date/time of follow-up appointment (PrEP)" O
  return O.value
/* End of Date/time of follow-up appointment (PrEP) */

/*
@dataElement: HIV.C.DE125 - Type of follow-up appointment (PrEP)
@activity: HIV.C24 Schedule follow-up
@description: Type of follow-up appointment for testing services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of follow-up appointment (PrEP)":
  exists "Type of follow-up appointment (PrEP) Observation"
define "Type of follow-up appointment (PrEP) Observation":
  Elements."Type of follow-up appointment (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Type of follow-up appointment (PrEP) */

/*
@dataElement: HIV.C.DE126 - Retesting for HIV (PrEP)
@activity: HIV.C24 Schedule follow-up
@description: Retesting follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retesting for HIV (PrEP)":
  exists "Retesting for HIV (PrEP) Condition"
    or exists "Retesting for HIV (PrEP) Observation"
define "Retesting for HIV (PrEP) Condition":
  Elements."Retesting for HIV (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Retesting for HIV (PrEP) Observation":
  Elements."Retesting for HIV (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Retesting for HIV (PrEP) */

/*
@dataElement: HIV.C.DE127 - Follow-up appointment for PrEP (PrEP)
@activity: HIV.C24 Schedule follow-up
@description: Retesting follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Follow-up appointment for PrEP (PrEP)":
  exists "Follow-up appointment for PrEP (PrEP) Condition"
    or exists "Follow-up appointment for PrEP (PrEP) Observation"
define "Follow-up appointment for PrEP (PrEP) Condition":
  Elements."Follow-up appointment for PrEP (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Follow-up appointment for PrEP (PrEP) Observation":
  Elements."Follow-up appointment for PrEP (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Follow-up appointment for PrEP (PrEP) */

/*
@dataElement: HIV.C.DE128 - Other (PrEP|CDE128)
@activity: HIV.C24 Schedule follow-up
@description: Other reason for the follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PrEP|CDE128)":
  exists "Other (PrEP|CDE128) Condition"
    or exists "Other (PrEP|CDE128) Observation"
define "Other (PrEP|CDE128) Condition":
  Elements."Other (PrEP|CDE128) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other (PrEP|CDE128) Observation":
  Elements."Other (PrEP|CDE128) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other (PrEP|CDE128) */

/*
@dataElement: HIV.C.DE131 - Prevention services offered and referrals (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention services offered and referrals (PrEP)":
  exists "Prevention services offered and referrals (PrEP) Observation"
define "Prevention services offered and referrals (PrEP) Observation":
  Elements."Prevention services offered and referrals (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Prevention services offered and referrals (PrEP) */

/*
@dataElement: HIV.C.DE132 - Male and female condoms and condom-compatible lubricants offered (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer male and female condoms and condom-compatible lubricants
*/
// TODO: Replace placeholder with relevant CQL logic
define "Male and female condoms and condom-compatible lubricants offered (PrEP)":
  exists "Male and female condoms and condom-compatible lubricants offered (PrEP) Condition"
    or exists "Male and female condoms and condom-compatible lubricants offered (PrEP) Observation"
define "Male and female condoms and condom-compatible lubricants offered (PrEP) Condition":
  Elements."Male and female condoms and condom-compatible lubricants offered (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Male and female condoms and condom-compatible lubricants offered (PrEP) Observation":
  Elements."Male and female condoms and condom-compatible lubricants offered (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Male and female condoms and condom-compatible lubricants offered (PrEP) */

/*
@dataElement: HIV.C.DE133 - Voluntary medical male circumcision VMMC referral (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer referral for VMMC services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Voluntary medical male circumcision VMMC referral (PrEP)":
  exists "Voluntary medical male circumcision VMMC referral (PrEP) Condition"
    or exists "Voluntary medical male circumcision VMMC referral (PrEP) Observation"
define "Voluntary medical male circumcision VMMC referral (PrEP) Condition":
  Elements."Voluntary medical male circumcision VMMC referral (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Voluntary medical male circumcision VMMC referral (PrEP) Observation":
  Elements."Voluntary medical male circumcision VMMC referral (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Voluntary medical male circumcision VMMC referral (PrEP) */

/*
@dataElement: HIV.C.DE134 - Harm reduction for people who inject drugs (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to harm reduction for people who inject drugs (needle and syringe programmes, opioid substitution therapy, other drug-dependence treatment and opioid overdose prevention and management) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Harm reduction for people who inject drugs (PrEP)":
  exists "Harm reduction for people who inject drugs (PrEP) Condition"
    or exists "Harm reduction for people who inject drugs (PrEP) Observation"
define "Harm reduction for people who inject drugs (PrEP) Condition":
  Elements."Harm reduction for people who inject drugs (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Harm reduction for people who inject drugs (PrEP) Observation":
  Elements."Harm reduction for people who inject drugs (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Harm reduction for people who inject drugs (PrEP) */

/*
@dataElement: HIV.C.DE135 - Behavioural interventions to support risk reduction (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to services for behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations
*/
// TODO: Replace placeholder with relevant CQL logic
define "Behavioural interventions to support risk reduction (PrEP)":
  exists "Behavioural interventions to support risk reduction (PrEP) Condition"
    or exists "Behavioural interventions to support risk reduction (PrEP) Observation"
define "Behavioural interventions to support risk reduction (PrEP) Condition":
  Elements."Behavioural interventions to support risk reduction (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Behavioural interventions to support risk reduction (PrEP) Observation":
  Elements."Behavioural interventions to support risk reduction (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Behavioural interventions to support risk reduction (PrEP) */

/*
@dataElement: HIV.C.DE149 - Sexual and reproductive health integrated services (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to sexual and reproductive health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual and reproductive health integrated services (PrEP)":
  exists "Sexual and reproductive health integrated services (PrEP) Observation"
define "Sexual and reproductive health integrated services (PrEP) Observation":
  Elements."Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sexual and reproductive health integrated services (PrEP) */

/*
@dataElement: HIV.C.DE150 - Contraception and family planning (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer contraception and family planning services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraception and family planning (PrEP)":
  exists "Contraception and family planning (PrEP) Condition"
    or exists "Contraception and family planning (PrEP) Observation"
define "Contraception and family planning (PrEP) Condition":
  Elements."Contraception and family planning (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Contraception and family planning (PrEP) Observation":
  Elements."Contraception and family planning (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Contraception and family planning (PrEP) */

/*
@dataElement: HIV.C.DE151 - Check pregnancy status (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Check woman's pregnancy status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Check pregnancy status (PrEP)":
  exists "Check pregnancy status (PrEP) Condition"
    or exists "Check pregnancy status (PrEP) Observation"
define "Check pregnancy status (PrEP) Condition":
  Elements."Check pregnancy status (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Check pregnancy status (PrEP) Observation":
  Elements."Check pregnancy status (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Check pregnancy status (PrEP) */

/*
@dataElement: HIV.C.DE152 - Prevent mother-to-child transmission (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer services (counselling) to help prevent of mother-to-child transmission
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevent mother-to-child transmission (PrEP)":
  exists "Prevent mother-to-child transmission (PrEP) Condition"
    or exists "Prevent mother-to-child transmission (PrEP) Observation"
define "Prevent mother-to-child transmission (PrEP) Condition":
  Elements."Prevent mother-to-child transmission (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Prevent mother-to-child transmission (PrEP) Observation":
  Elements."Prevent mother-to-child transmission (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Prevent mother-to-child transmission (PrEP) */

/*
@dataElement: HIV.C.DE153 - Cervical cancer screening and treatment (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer cervical cancer screening and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening and treatment (PrEP)":
  exists "Cervical cancer screening and treatment (PrEP) Condition"
    or exists "Cervical cancer screening and treatment (PrEP) Observation"
define "Cervical cancer screening and treatment (PrEP) Condition":
  Elements."Cervical cancer screening and treatment (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cervical cancer screening and treatment (PrEP) Observation":
  Elements."Cervical cancer screening and treatment (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cervical cancer screening and treatment (PrEP) */

/*
@dataElement: HIV.C.DE154 - Anal cancer screening for men who have sex with men (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer anal cancer screening (for men who have sex with men) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anal cancer screening for men who have sex with men (PrEP)":
  exists "Anal cancer screening for men who have sex with men (PrEP) Condition"
    or exists "Anal cancer screening for men who have sex with men (PrEP) Observation"
define "Anal cancer screening for men who have sex with men (PrEP) Condition":
  Elements."Anal cancer screening for men who have sex with men (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Anal cancer screening for men who have sex with men (PrEP) Observation":
  Elements."Anal cancer screening for men who have sex with men (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Anal cancer screening for men who have sex with men (PrEP) */

/*
@dataElement: HIV.C.DE155 - STI testing and treatment (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer STI testing and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI testing and treatment (PrEP)":
  exists "STI testing and treatment (PrEP) Condition"
    or exists "STI testing and treatment (PrEP) Observation"
define "STI testing and treatment (PrEP) Condition":
  Elements."STI testing and treatment (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "STI testing and treatment (PrEP) Observation":
  Elements."STI testing and treatment (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of STI testing and treatment (PrEP) */

/*
@dataElement: HIV.C.DE156 - HIV testing for partners and biological children (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer testing for all partners and biological children of positive cases (includes partner services and index case testing), as well as partners and social contacts of people from key populations, where appropriate
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing for partners and biological children (PrEP)":
  exists "HIV testing for partners and biological children (PrEP) Condition"
    or exists "HIV testing for partners and biological children (PrEP) Observation"
define "HIV testing for partners and biological children (PrEP) Condition":
  Elements."HIV testing for partners and biological children (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV testing for partners and biological children (PrEP) Observation":
  Elements."HIV testing for partners and biological children (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV testing for partners and biological children (PrEP) */

/*
@dataElement: HIV.C.DE157 - Offer other clinical services (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Other clinical services offered or referrals given to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer other clinical services (PrEP)":
  exists "Offer other clinical services (PrEP) Observation"
define "Offer other clinical services (PrEP) Observation":
  Elements."Offer other clinical services (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Offer other clinical services (PrEP) */

/*
@dataElement: HIV.C.DE158 - Assessment and provision of vaccinations (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Assessment and provision of vaccinations, such as for people from key populations, pregnant women and infants; and, where appropriate, tetanus vaccination for adolescent boys and men receiving VMMC
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assessment and provision of vaccinations (PrEP)":
  exists "Assessment and provision of vaccinations (PrEP) Condition"
    or exists "Assessment and provision of vaccinations (PrEP) Observation"
define "Assessment and provision of vaccinations (PrEP) Condition":
  Elements."Assessment and provision of vaccinations (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assessment and provision of vaccinations (PrEP) Observation":
  Elements."Assessment and provision of vaccinations (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assessment and provision of vaccinations (PrEP) */

/*
@dataElement: HIV.C.DE159 - Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for HBV testing and vaccination and HCV testing and treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP)":
  exists "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Condition"
    or exists "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Observation"
define "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Condition":
  Elements."Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Observation":
  Elements."Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) */

/*
@dataElement: HIV.C.DE160 - Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP)":
  exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Condition"
    or exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Observation"
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Condition":
  Elements."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Observation":
  Elements."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) */

/*
@dataElement: HIV.C.DE161 - Intensified TB case finding and linkage to TB treatment (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for TB case finding and linkage to TB treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intensified TB case finding and linkage to TB treatment (PrEP)":
  exists "Intensified TB case finding and linkage to TB treatment (PrEP) Condition"
    or exists "Intensified TB case finding and linkage to TB treatment (PrEP) Observation"
define "Intensified TB case finding and linkage to TB treatment (PrEP) Condition":
  Elements."Intensified TB case finding and linkage to TB treatment (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Intensified TB case finding and linkage to TB treatment (PrEP) Observation":
  Elements."Intensified TB case finding and linkage to TB treatment (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Intensified TB case finding and linkage to TB treatment (PrEP) */

/*
@dataElement: HIV.C.DE162 - Provision of isoniazid preventive therapy if person does not have TB (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for provision of isoniazid preventive therapy if person does not have TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Provision of isoniazid preventive therapy if person does not have TB (PrEP)":
  exists "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Condition"
    or exists "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Observation"
define "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Condition":
  Elements."Provision of isoniazid preventive therapy if person does not have TB (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Observation":
  Elements."Provision of isoniazid preventive therapy if person does not have TB (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Provision of isoniazid preventive therapy if person does not have TB (PrEP) */

/*
@dataElement: HIV.C.DE163 - Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for malaria prevention (such as bed nets and prophylaxis), depending on epidemiology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP)":
  exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Condition"
    or exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Observation"
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Condition":
  Elements."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Observation":
  Elements."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) */

/*
@dataElement: HIV.C.DE164 - Other support services (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for other support services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other support services (PrEP)":
  exists "Other support services (PrEP) Observation"
define "Other support services (PrEP) Observation":
  Elements."Other support services (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other support services (PrEP) */

/*
@dataElement: HIV.C.DE165 - Mental health services (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for mental health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mental health services (PrEP)":
  exists "Mental health services (PrEP) Condition"
    or exists "Mental health services (PrEP) Observation"
define "Mental health services (PrEP) Condition":
  Elements."Mental health services (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Mental health services (PrEP) Observation":
  Elements."Mental health services (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Mental health services (PrEP) */

/*
@dataElement: HIV.C.DE166 - Psychosocial counselling, support and treatment adherence counselling (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for psychosocial counselling, support and treatment adherence counselling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Psychosocial counselling, support and treatment adherence counselling (PrEP)":
  exists "Psychosocial counselling, support and treatment adherence counselling (PrEP) Condition"
    or exists "Psychosocial counselling, support and treatment adherence counselling (PrEP) Observation"
define "Psychosocial counselling, support and treatment adherence counselling (PrEP) Condition":
  Elements."Psychosocial counselling, support and treatment adherence counselling (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Psychosocial counselling, support and treatment adherence counselling (PrEP) Observation":
  Elements."Psychosocial counselling, support and treatment adherence counselling (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Psychosocial counselling, support and treatment adherence counselling (PrEP) */

/*
@dataElement: HIV.C.DE167 - Support for disclosure and partner services (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for support for disclosure and partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Support for disclosure and partner services (PrEP)":
  exists "Support for disclosure and partner services (PrEP) Condition"
    or exists "Support for disclosure and partner services (PrEP) Observation"
define "Support for disclosure and partner services (PrEP) Condition":
  Elements."Support for disclosure and partner services (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Support for disclosure and partner services (PrEP) Observation":
  Elements."Support for disclosure and partner services (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Support for disclosure and partner services (PrEP) */

/*
@dataElement: HIV.C.DE168 - Legal and social services (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for legal and social services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Legal and social services (PrEP)":
  exists "Legal and social services (PrEP) Condition"
    or exists "Legal and social services (PrEP) Observation"
define "Legal and social services (PrEP) Condition":
  Elements."Legal and social services (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Legal and social services (PrEP) Observation":
  Elements."Legal and social services (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Legal and social services (PrEP) */

/*
@dataElement: HIV.C.DE169 - Services for responding to violence against women (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for services for responding to violence against women, including first-line support and psychosocial support, post-rape care and other support services including shelters, legal services and women and child protection services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Services for responding to violence against women (PrEP)":
  exists "Services for responding to violence against women (PrEP) Condition"
    or exists "Services for responding to violence against women (PrEP) Observation"
define "Services for responding to violence against women (PrEP) Condition":
  Elements."Services for responding to violence against women (PrEP) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Services for responding to violence against women (PrEP) Observation":
  Elements."Services for responding to violence against women (PrEP) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Services for responding to violence against women (PrEP) */

/*
@dataElement: HIV.D.DE1 - Reason for visit (Care)
@activity: HIV.D1 Determine reason for visit
@description: Whether visit was scheduled or unscheduled, clinical only, or for ARV drug pick-up
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason for visit (Care)":
  exists "Reason for visit (Care) Observation"
define "Reason for visit (Care) Observation":
  Elements."Reason for visit (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reason for visit (Care) */

/*
@dataElement: HIV.D.DE2 - First clinical visit (Care)
@activity: HIV.D1 Determine reason for visit
@description: The client's first appointment for clinical care by a provider at the facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "First clinical visit (Care)":
  exists "First clinical visit (Care) Condition"
    or exists "First clinical visit (Care) Observation"
define "First clinical visit (Care) Condition":
  Elements."First clinical visit (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "First clinical visit (Care) Observation":
  Elements."First clinical visit (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of First clinical visit (Care) */

/*
@dataElement: HIV.D.DE3 - Clinical visit (Care|DDE3)
@activity: HIV.D1 Determine reason for visit
@description: Appointment for clinical care by a provider
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical visit (Care|DDE3)":
  exists "Clinical visit (Care|DDE3) Condition"
    or exists "Clinical visit (Care|DDE3) Observation"
define "Clinical visit (Care|DDE3) Condition":
  Elements."Clinical visit (Care|DDE3) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Clinical visit (Care|DDE3) Observation":
  Elements."Clinical visit (Care|DDE3) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Clinical visit (Care|DDE3) */

/*
@dataElement: HIV.D.DE4 - ART initiation (Care)
@activity: HIV.D1 Determine reason for visit
@description: Appointment for initiation of ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART initiation (Care)":
  exists "ART initiation (Care) Condition"
    or exists "ART initiation (Care) Observation"
define "ART initiation (Care) Condition":
  Elements."ART initiation (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "ART initiation (Care) Observation":
  Elements."ART initiation (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ART initiation (Care) */

/*
@dataElement: HIV.D.DE5 - ART drug pick up (Care)
@activity: HIV.D1 Determine reason for visit
@description: Appointment for an antiretroviral drug pick up
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART drug pick up (Care)":
  exists "ART drug pick up (Care) Condition"
    or exists "ART drug pick up (Care) Observation"
define "ART drug pick up (Care) Condition":
  Elements."ART drug pick up (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "ART drug pick up (Care) Observation":
  Elements."ART drug pick up (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ART drug pick up (Care) */

/*
@dataElement: HIV.D.DE6 - Issues and concerns (Care)
@activity: HIV.D1 Determine reason for visit
@description: Visit to address issues and concerns
*/
// TODO: Replace placeholder with relevant CQL logic
define "Issues and concerns (Care)":
  exists "Issues and concerns (Care) Condition"
    or exists "Issues and concerns (Care) Observation"
define "Issues and concerns (Care) Condition":
  Elements."Issues and concerns (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Issues and concerns (Care) Observation":
  Elements."Issues and concerns (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Issues and concerns (Care) */

/*
@dataElement: HIV.D.DE7 - Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7)
@activity: HIV.D1 Determine reason for visit
@description: Appointment for a post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7)":
  exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Condition"
    or exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Observation"
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Condition":
  Elements."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Observation":
  Elements."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) */

/*
@dataElement: HIV.D.DE9 - Body temperature (Care)
@activity: HIV.D2 Take vital signs
@description: Temperature of the client in Celsius
*/
// TODO: Replace placeholder with relevant CQL logic
define "Body temperature (Care)":
  Elements."Body temperature (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Body temperature (Care) Value":
  "Body temperature (Care)" O
  return O.value
/* End of Body temperature (Care) */

/*
@dataElement: HIV.D.DE13 - Body weight (Care)
@activity: HIV.D2 Take vital signs
@description: The client's current weight in kilograms
*/
// TODO: Replace placeholder with relevant CQL logic
define "Body weight (Care)":
  Elements."Body weight (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Body weight (Care) Value":
  "Body weight (Care)" O
  return O.value
/* End of Body weight (Care) */

/*
@dataElement: HIV.D.DE17 - Signs of serious illness (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Signs that may indicate the client has a serious illness and needs triage or an emergency referral
*/
// TODO: Replace placeholder with relevant CQL logic
define "Signs of serious illness (Care)":
  exists "Signs of serious illness (Care) Observation"
define "Signs of serious illness (Care) Observation":
  Elements."Signs of serious illness (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Signs of serious illness (Care) */

/*
@dataElement: HIV.D.DE18 - Fever of 39 C or greater (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Client has a fever with a measured temperature of 102.2 F/39 C or greater
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fever of 39 C or greater (Care)":
  exists "Fever of 39 C or greater (Care) Condition"
    or exists "Fever of 39 C or greater (Care) Observation"
define "Fever of 39 C or greater (Care) Condition":
  Elements."Fever of 39 C or greater (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Fever of 39 C or greater (Care) Observation":
  Elements."Fever of 39 C or greater (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Fever of 39 C or greater (Care) */

/*
@dataElement: HIV.D.DE19 - Tachycardia (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Heart rate above a rate per minute based on age
*/
// TODO: Replace placeholder with relevant CQL logic
define "Tachycardia (Care)":
  exists "Tachycardia (Care) Condition"
    or exists "Tachycardia (Care) Observation"
define "Tachycardia (Care) Condition":
  Elements."Tachycardia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Tachycardia (Care) Observation":
  Elements."Tachycardia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Tachycardia (Care) */

/*
@dataElement: HIV.D.DE20 - Tachypnea (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Respiratory rate above a number of breaths per minute based on age
*/
// TODO: Replace placeholder with relevant CQL logic
define "Tachypnea (Care)":
  exists "Tachypnea (Care) Condition"
    or exists "Tachypnea (Care) Observation"
define "Tachypnea (Care) Condition":
  Elements."Tachypnea (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Tachypnea (Care) Observation":
  Elements."Tachypnea (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Tachypnea (Care) */

/*
@dataElement: HIV.D.DE21 - Unable to walk unaided (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Client is not able to walk without help
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unable to walk unaided (Care)":
  exists "Unable to walk unaided (Care) Condition"
    or exists "Unable to walk unaided (Care) Observation"
define "Unable to walk unaided (Care) Condition":
  Elements."Unable to walk unaided (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unable to walk unaided (Care) Observation":
  Elements."Unable to walk unaided (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unable to walk unaided (Care) */

/*
@dataElement: HIV.D.DE22 - Lethargy (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Client is exhibiting lethargy as a sign of serious illness
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lethargy (Care)":
  exists "Lethargy (Care) Condition"
    or exists "Lethargy (Care) Observation"
define "Lethargy (Care) Condition":
  Elements."Lethargy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Lethargy (Care) Observation":
  Elements."Lethargy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Lethargy (Care) */

/*
@dataElement: HIV.D.DE23 - Unconsciousness (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Client is currently unconscious
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unconsciousness (Care)":
  exists "Unconsciousness (Care) Condition"
    or exists "Unconsciousness (Care) Observation"
define "Unconsciousness (Care) Condition":
  Elements."Unconsciousness (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unconsciousness (Care) Observation":
  Elements."Unconsciousness (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unconsciousness (Care) */

/*
@dataElement: HIV.D.DE24 - Convulsions (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Client is convulsing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Convulsions (Care)":
  exists "Convulsions (Care) Condition"
    or exists "Convulsions (Care) Observation"
define "Convulsions (Care) Condition":
  Elements."Convulsions (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Convulsions (Care) Observation":
  Elements."Convulsions (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Convulsions (Care) */

/*
@dataElement: HIV.D.DE25 - Unable to drink (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Child is not able to drink
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unable to drink (Care)":
  exists "Unable to drink (Care) Condition"
    or exists "Unable to drink (Care) Observation"
define "Unable to drink (Care) Condition":
  Elements."Unable to drink (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unable to drink (Care) Observation":
  Elements."Unable to drink (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unable to drink (Care) */

/*
@dataElement: HIV.D.DE26 - Unable to breastfeed (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Infant or child is not able to breastfeed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unable to breastfeed (Care)":
  exists "Unable to breastfeed (Care) Condition"
    or exists "Unable to breastfeed (Care) Observation"
define "Unable to breastfeed (Care) Condition":
  Elements."Unable to breastfeed (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unable to breastfeed (Care) Observation":
  Elements."Unable to breastfeed (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unable to breastfeed (Care) */

/*
@dataElement: HIV.D.DE27 - Repeated vomiting (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Client is repeatedly vomiting
*/
// TODO: Replace placeholder with relevant CQL logic
define "Repeated vomiting (Care)":
  exists "Repeated vomiting (Care) Condition"
    or exists "Repeated vomiting (Care) Observation"
define "Repeated vomiting (Care) Condition":
  Elements."Repeated vomiting (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Repeated vomiting (Care) Observation":
  Elements."Repeated vomiting (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Repeated vomiting (Care) */

/*
@dataElement: HIV.D.DE28 - Headache (Care|DDE28)
@activity: HIV.D3 Check for signs of serious illness
@description: Client is exhibiting a headache
*/
// TODO: Replace placeholder with relevant CQL logic
define "Headache (Care|DDE28)":
  exists "Headache (Care|DDE28) Condition"
    or exists "Headache (Care|DDE28) Observation"
define "Headache (Care|DDE28) Condition":
  Elements."Headache (Care|DDE28) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Headache (Care|DDE28) Observation":
  Elements."Headache (Care|DDE28) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Headache (Care|DDE28) */

/*
@dataElement: HIV.D.DE29 - Other sign of serious illness (Care)
@activity: HIV.D3 Check for signs of serious illness
@description: Client is exhibiting another sign of a serious illness
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other sign of serious illness (Care)":
  exists "Other sign of serious illness (Care) Condition"
    or exists "Other sign of serious illness (Care) Observation"
define "Other sign of serious illness (Care) Condition":
  Elements."Other sign of serious illness (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other sign of serious illness (Care) Observation":
  Elements."Other sign of serious illness (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other sign of serious illness (Care) */

/*
@dataElement: HIV.D.DE37 - Serodiscordant partner (Care)
@activity: HIV.D8 Capture or update client history
@description: Client's HIV status is different from a current partner's HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Serodiscordant partner (Care)":
  exists "Serodiscordant partner (Care) Observation"
define "Serodiscordant partner (Care) Observation":
  Elements."Serodiscordant partner (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Serodiscordant partner (Care) */

/*
@dataElement: HIV.D.DE42 - Established on ART (Care)
@activity: HIV.D8 Capture or update client history
@description: Is the client successfully established on ART?
*/
// TODO: Replace placeholder with relevant CQL logic
define "Established on ART (Care)":
  exists "Established on ART (Care) Observation"
define "Established on ART (Care) Observation":
  Elements."Established on ART (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Established on ART (Care) */

/*
@dataElement: HIV.D.DE77 - Preferred first-line ART regimen (Care)
@activity: HIV.D8 Capture or update client history
@description: The preferred first-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred first-line ART regimen (Care)":
  exists "Preferred first-line ART regimen (Care) Observation"
define "Preferred first-line ART regimen (Care) Observation":
  Elements."Preferred first-line ART regimen (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Preferred first-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE78 - Alternative first-line ART regimen (Care)
@activity: HIV.D8 Capture or update client history
@description: The alternative first-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative first-line ART regimen (Care)":
  exists "Alternative first-line ART regimen (Care) Observation"
define "Alternative first-line ART regimen (Care) Observation":
  Elements."Alternative first-line ART regimen (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Alternative first-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE79 - First-line ART regimen under special circumstances (Care)
@activity: HIV.D8 Capture or update client history
@description: The first-line ART regimen for the client under special circumstances according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen under special circumstances (Care)":
  exists "First-line ART regimen under special circumstances (Care) Observation"
define "First-line ART regimen under special circumstances (Care) Observation":
  Elements."First-line ART regimen under special circumstances (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of First-line ART regimen under special circumstances (Care) */

/*
@dataElement: HIV.D.DE80 - Preferred second-line ART regimen (Care)
@activity: HIV.D8 Capture or update client history
@description: The preferred second-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred second-line ART regimen (Care)":
  exists "Preferred second-line ART regimen (Care) Observation"
define "Preferred second-line ART regimen (Care) Observation":
  Elements."Preferred second-line ART regimen (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Preferred second-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE81 - Alternative second-line ART regimen (Care)
@activity: HIV.D8 Capture or update client history
@description: The alternative second-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative second-line ART regimen (Care)":
  exists "Alternative second-line ART regimen (Care) Observation"
define "Alternative second-line ART regimen (Care) Observation":
  Elements."Alternative second-line ART regimen (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Alternative second-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE82 - Optimal regimen for transition (Care)
@activity: HIV.D8 Capture or update client history
@description: The optimal regimen for transition to DTG-based regimens for children established on ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Optimal regimen for transition (Care)":
  exists "Optimal regimen for transition (Care) Observation"
define "Optimal regimen for transition (Care) Observation":
  Elements."Optimal regimen for transition (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Optimal regimen for transition (Care) */

/*
@dataElement: HIV.D.DE83 - Current ART regimen first-, second-, or third-line (Care)
@activity: HIV.D8 Capture or update client history
@description: ART regimen for treating clients living with HIV, based on national guidance
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current ART regimen first-, second-, or third-line (Care)":
  exists "Current ART regimen first-, second-, or third-line (Care) Observation"
define "Current ART regimen first-, second-, or third-line (Care) Observation":
  Elements."Current ART regimen first-, second-, or third-line (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Current ART regimen first-, second-, or third-line (Care) */

/*
@dataElement: HIV.D.DE84 - First-line ART regimen for adults and adolescents (Care)
@activity: HIV.D8 Capture or update client history
@description: First-line ART regimen for adults and adolescents living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen for adults and adolescents (Care)":
  exists "First-line ART regimen for adults and adolescents (Care) Condition"
    or exists "First-line ART regimen for adults and adolescents (Care) Observation"
define "First-line ART regimen for adults and adolescents (Care) Condition":
  Elements."First-line ART regimen for adults and adolescents (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "First-line ART regimen for adults and adolescents (Care) Observation":
  Elements."First-line ART regimen for adults and adolescents (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of First-line ART regimen for adults and adolescents (Care) */

/*
@dataElement: HIV.D.DE85 - First-line ART regimen for children (Care)
@activity: HIV.D8 Capture or update client history
@description: First-line ART regimen for children living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen for children (Care)":
  exists "First-line ART regimen for children (Care) Condition"
    or exists "First-line ART regimen for children (Care) Observation"
define "First-line ART regimen for children (Care) Condition":
  Elements."First-line ART regimen for children (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "First-line ART regimen for children (Care) Observation":
  Elements."First-line ART regimen for children (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of First-line ART regimen for children (Care) */

/*
@dataElement: HIV.D.DE86 - First-line ART regimen for neonates (Care)
@activity: HIV.D8 Capture or update client history
@description: First-line ART regimen for neonates living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen for neonates (Care)":
  exists "First-line ART regimen for neonates (Care) Condition"
    or exists "First-line ART regimen for neonates (Care) Observation"
define "First-line ART regimen for neonates (Care) Condition":
  Elements."First-line ART regimen for neonates (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "First-line ART regimen for neonates (Care) Observation":
  Elements."First-line ART regimen for neonates (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of First-line ART regimen for neonates (Care) */

/*
@dataElement: HIV.D.DE87 - Second-line ART regimen for adults and adolescents (Care)
@activity: HIV.D8 Capture or update client history
@description: Second-line ART regimen for adults and adolescents living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Second-line ART regimen for adults and adolescents (Care)":
  exists "Second-line ART regimen for adults and adolescents (Care) Condition"
    or exists "Second-line ART regimen for adults and adolescents (Care) Observation"
define "Second-line ART regimen for adults and adolescents (Care) Condition":
  Elements."Second-line ART regimen for adults and adolescents (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Second-line ART regimen for adults and adolescents (Care) Observation":
  Elements."Second-line ART regimen for adults and adolescents (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Second-line ART regimen for adults and adolescents (Care) */

/*
@dataElement: HIV.D.DE88 - Second-line ART regimen for children (Care)
@activity: HIV.D8 Capture or update client history
@description: Second-line ART regimen for children living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Second-line ART regimen for children (Care)":
  exists "Second-line ART regimen for children (Care) Condition"
    or exists "Second-line ART regimen for children (Care) Observation"
define "Second-line ART regimen for children (Care) Condition":
  Elements."Second-line ART regimen for children (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Second-line ART regimen for children (Care) Observation":
  Elements."Second-line ART regimen for children (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Second-line ART regimen for children (Care) */

/*
@dataElement: HIV.D.DE89 - Third-line ART regimen (Care)
@activity: HIV.D8 Capture or update client history
@description: Third-line ART regimen for people living with HIV (Not defined by WHO. National programmes should develop policies for third-line ART)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Third-line ART regimen (Care)":
  exists "Third-line ART regimen (Care) Condition"
    or exists "Third-line ART regimen (Care) Observation"
define "Third-line ART regimen (Care) Condition":
  Elements."Third-line ART regimen (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Third-line ART regimen (Care) Observation":
  Elements."Third-line ART regimen (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Third-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE128 - ART regimen composition (Care)
@activity: HIV.D8 Capture or update client history
@description: Drug composition of client's current ART regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART regimen composition (Care)":
  exists "ART regimen composition (Care) Observation"
define "ART regimen composition (Care) Observation":
  Elements."ART regimen composition (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ART regimen composition (Care) */

/*
@dataElement: HIV.D.DE129 - ABC (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with abacavir (ABC)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ABC (Care)":
  exists "ABC (Care) Condition"
    or exists "ABC (Care) Observation"
define "ABC (Care) Condition":
  Elements."ABC (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "ABC (Care) Observation":
  Elements."ABC (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ABC (Care) */

/*
@dataElement: HIV.D.DE130 - FTC (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with emtricitabine (FTC)
*/
// TODO: Replace placeholder with relevant CQL logic
define "FTC (Care)":
  exists "FTC (Care) Condition"
    or exists "FTC (Care) Observation"
define "FTC (Care) Condition":
  Elements."FTC (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "FTC (Care) Observation":
  Elements."FTC (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of FTC (Care) */

/*
@dataElement: HIV.D.DE131 - 3TC (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with lamivudine (3TC)
*/
// TODO: Replace placeholder with relevant CQL logic
define "3TC (Care)":
  exists "3TC (Care) Condition"
    or exists "3TC (Care) Observation"
define "3TC (Care) Condition":
  Elements."3TC (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "3TC (Care) Observation":
  Elements."3TC (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of 3TC (Care) */

/*
@dataElement: HIV.D.DE132 - AZT (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with zidovudine (AZT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "AZT (Care)":
  exists "AZT (Care) Condition"
    or exists "AZT (Care) Observation"
define "AZT (Care) Condition":
  Elements."AZT (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "AZT (Care) Observation":
  Elements."AZT (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of AZT (Care) */

/*
@dataElement: HIV.D.DE133 - DDI (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with didanosine (DDI)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DDI (Care)":
  exists "DDI (Care) Condition"
    or exists "DDI (Care) Observation"
define "DDI (Care) Condition":
  Elements."DDI (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "DDI (Care) Observation":
  Elements."DDI (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of DDI (Care) */

/*
@dataElement: HIV.D.DE134 - D4T (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with stavudine (D4T)
*/
// TODO: Replace placeholder with relevant CQL logic
define "D4T (Care)":
  exists "D4T (Care) Condition"
    or exists "D4T (Care) Observation"
define "D4T (Care) Condition":
  Elements."D4T (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "D4T (Care) Observation":
  Elements."D4T (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of D4T (Care) */

/*
@dataElement: HIV.D.DE135 - TDF (Care|DDE135)
@activity: HIV.D8 Capture or update client history
@description: Treated with tenofovir (TDF)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF (Care|DDE135)":
  exists "TDF (Care|DDE135) Condition"
    or exists "TDF (Care|DDE135) Observation"
define "TDF (Care|DDE135) Condition":
  Elements."TDF (Care|DDE135) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF (Care|DDE135) Observation":
  Elements."TDF (Care|DDE135) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF (Care|DDE135) */

/*
@dataElement: HIV.D.DE136 - EFV (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with efavirenz (EFV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "EFV (Care)":
  exists "EFV (Care) Condition"
    or exists "EFV (Care) Observation"
define "EFV (Care) Condition":
  Elements."EFV (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "EFV (Care) Observation":
  Elements."EFV (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EFV (Care) */

/*
@dataElement: HIV.D.DE137 - ETV (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with etravirine (ETV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ETV (Care)":
  exists "ETV (Care) Condition"
    or exists "ETV (Care) Observation"
define "ETV (Care) Condition":
  Elements."ETV (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "ETV (Care) Observation":
  Elements."ETV (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ETV (Care) */

/*
@dataElement: HIV.D.DE138 - NVP (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with nevirapine (NVP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "NVP (Care)":
  exists "NVP (Care) Condition"
    or exists "NVP (Care) Observation"
define "NVP (Care) Condition":
  Elements."NVP (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "NVP (Care) Observation":
  Elements."NVP (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of NVP (Care) */

/*
@dataElement: HIV.D.DE139 - RIL (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with rilpivirine (RIL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RIL (Care)":
  exists "RIL (Care) Condition"
    or exists "RIL (Care) Observation"
define "RIL (Care) Condition":
  Elements."RIL (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "RIL (Care) Observation":
  Elements."RIL (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of RIL (Care) */

/*
@dataElement: HIV.D.DE140 - ATV/r (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with atazanavir/ritonavir (ATV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ATV/r (Care)":
  exists "ATV/r (Care) Condition"
    or exists "ATV/r (Care) Observation"
define "ATV/r (Care) Condition":
  Elements."ATV/r (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "ATV/r (Care) Observation":
  Elements."ATV/r (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of ATV/r (Care) */

/*
@dataElement: HIV.D.DE141 - LPV/r (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with lopinavir/ritonavir (LPV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "LPV/r (Care)":
  exists "LPV/r (Care) Condition"
    or exists "LPV/r (Care) Observation"
define "LPV/r (Care) Condition":
  Elements."LPV/r (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "LPV/r (Care) Observation":
  Elements."LPV/r (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of LPV/r (Care) */

/*
@dataElement: HIV.D.DE142 - DRV/r (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with darunavir/ritonavir (DRV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DRV/r (Care)":
  exists "DRV/r (Care) Condition"
    or exists "DRV/r (Care) Observation"
define "DRV/r (Care) Condition":
  Elements."DRV/r (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "DRV/r (Care) Observation":
  Elements."DRV/r (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of DRV/r (Care) */

/*
@dataElement: HIV.D.DE143 - RTV (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with ritonavir (RTV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RTV (Care)":
  exists "RTV (Care) Condition"
    or exists "RTV (Care) Observation"
define "RTV (Care) Condition":
  Elements."RTV (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "RTV (Care) Observation":
  Elements."RTV (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of RTV (Care) */

/*
@dataElement: HIV.D.DE144 - DTG (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with dolutegravir (DTG)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DTG (Care)":
  exists "DTG (Care) Condition"
    or exists "DTG (Care) Observation"
define "DTG (Care) Condition":
  Elements."DTG (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "DTG (Care) Observation":
  Elements."DTG (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of DTG (Care) */

/*
@dataElement: HIV.D.DE145 - RAL (Care)
@activity: HIV.D8 Capture or update client history
@description: Treated with raltegravir (RAL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RAL (Care)":
  exists "RAL (Care) Condition"
    or exists "RAL (Care) Observation"
define "RAL (Care) Condition":
  Elements."RAL (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "RAL (Care) Observation":
  Elements."RAL (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of RAL (Care) */

/*
@dataElement: HIV.D.DE152 - Prevention services offered and referrals (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer for prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention services offered and referrals (Care)":
  exists "Prevention services offered and referrals (Care) Observation"
define "Prevention services offered and referrals (Care) Observation":
  Elements."Prevention services offered and referrals (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Prevention services offered and referrals (Care) */

/*
@dataElement: HIV.D.DE153 - Offer male and female condoms and condom-compatible lubricants (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Offer male and female condoms and condom-compatible lubricants
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer male and female condoms and condom-compatible lubricants (Care)":
  exists "Offer male and female condoms and condom-compatible lubricants (Care) Condition"
    or exists "Offer male and female condoms and condom-compatible lubricants (Care) Observation"
define "Offer male and female condoms and condom-compatible lubricants (Care) Condition":
  Elements."Offer male and female condoms and condom-compatible lubricants (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Offer male and female condoms and condom-compatible lubricants (Care) Observation":
  Elements."Offer male and female condoms and condom-compatible lubricants (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Offer male and female condoms and condom-compatible lubricants (Care) */

/*
@dataElement: HIV.D.DE154 - Harm reduction for people who inject drugs (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer people who inject drugs to harm reduction services (needle and syringe programmes, opioid substitution therapy, other drug-dependence treatment and opioid overdose prevention and management)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Harm reduction for people who inject drugs (Care)":
  exists "Harm reduction for people who inject drugs (Care) Condition"
    or exists "Harm reduction for people who inject drugs (Care) Observation"
define "Harm reduction for people who inject drugs (Care) Condition":
  Elements."Harm reduction for people who inject drugs (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Harm reduction for people who inject drugs (Care) Observation":
  Elements."Harm reduction for people who inject drugs (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Harm reduction for people who inject drugs (Care) */

/*
@dataElement: HIV.D.DE155 - Behavioural interventions to support risk reduction (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer to services for behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations
*/
// TODO: Replace placeholder with relevant CQL logic
define "Behavioural interventions to support risk reduction (Care)":
  exists "Behavioural interventions to support risk reduction (Care) Condition"
    or exists "Behavioural interventions to support risk reduction (Care) Observation"
define "Behavioural interventions to support risk reduction (Care) Condition":
  Elements."Behavioural interventions to support risk reduction (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Behavioural interventions to support risk reduction (Care) Observation":
  Elements."Behavioural interventions to support risk reduction (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Behavioural interventions to support risk reduction (Care) */

/*
@dataElement: HIV.D.DE156 - Sexual and reproductive health integrated services (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer to sexual and reproductive health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual and reproductive health integrated services (Care)":
  exists "Sexual and reproductive health integrated services (Care) Observation"
define "Sexual and reproductive health integrated services (Care) Observation":
  Elements."Sexual and reproductive health integrated services (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sexual and reproductive health integrated services (Care) */

/*
@dataElement: HIV.D.DE157 - Contraception and family planning (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer contraception and family planning services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraception and family planning (Care)":
  exists "Contraception and family planning (Care) Condition"
    or exists "Contraception and family planning (Care) Observation"
define "Contraception and family planning (Care) Condition":
  Elements."Contraception and family planning (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Contraception and family planning (Care) Observation":
  Elements."Contraception and family planning (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Contraception and family planning (Care) */

/*
@dataElement: HIV.D.DE158 - Check pregnancy status (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Check woman's pregnancy status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Check pregnancy status (Care)":
  exists "Check pregnancy status (Care) Condition"
    or exists "Check pregnancy status (Care) Observation"
define "Check pregnancy status (Care) Condition":
  Elements."Check pregnancy status (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Check pregnancy status (Care) Observation":
  Elements."Check pregnancy status (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Check pregnancy status (Care) */

/*
@dataElement: HIV.D.DE159 - Prevention of mother-to-child transmission (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer prevention of mother-to-child transmission services (counselling)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention of mother-to-child transmission (Care)":
  exists "Prevention of mother-to-child transmission (Care) Condition"
    or exists "Prevention of mother-to-child transmission (Care) Observation"
define "Prevention of mother-to-child transmission (Care) Condition":
  Elements."Prevention of mother-to-child transmission (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Prevention of mother-to-child transmission (Care) Observation":
  Elements."Prevention of mother-to-child transmission (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Prevention of mother-to-child transmission (Care) */

/*
@dataElement: HIV.D.DE160 - STI testing and treatment (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer STI testing and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI testing and treatment (Care)":
  exists "STI testing and treatment (Care) Condition"
    or exists "STI testing and treatment (Care) Observation"
define "STI testing and treatment (Care) Condition":
  Elements."STI testing and treatment (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "STI testing and treatment (Care) Observation":
  Elements."STI testing and treatment (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of STI testing and treatment (Care) */

/*
@dataElement: HIV.D.DE186 - HIV clinical stage (Care)
@activity: HIV.D8 Capture or update client history
@description: WHO clinical stage of client based on signs and symptoms. WHO clinical staging is a way to categorize HIV disease severity based on new or recurrent clinical events. There are 4 WHO clinical stages that range from mild symptoms (WHO clinical stage 1) to severe symptoms (WHO clinical stage 4).
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV clinical stage (Care)":
  exists "HIV clinical stage (Care) Observation"
define "HIV clinical stage (Care) Observation":
  Elements."HIV clinical stage (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV clinical stage (Care) */

/*
@dataElement: HIV.D.DE187 - WHO HIV clinical stage 1 (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 1, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 1 (Care)":
  exists "WHO HIV clinical stage 1 (Care) Condition"
    or exists "WHO HIV clinical stage 1 (Care) Observation"
define "WHO HIV clinical stage 1 (Care) Condition":
  Elements."WHO HIV clinical stage 1 (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "WHO HIV clinical stage 1 (Care) Observation":
  Elements."WHO HIV clinical stage 1 (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of WHO HIV clinical stage 1 (Care) */

/*
@dataElement: HIV.D.DE188 - WHO HIV clinical stage 2 (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 2, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 2 (Care)":
  exists "WHO HIV clinical stage 2 (Care) Condition"
    or exists "WHO HIV clinical stage 2 (Care) Observation"
define "WHO HIV clinical stage 2 (Care) Condition":
  Elements."WHO HIV clinical stage 2 (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "WHO HIV clinical stage 2 (Care) Observation":
  Elements."WHO HIV clinical stage 2 (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of WHO HIV clinical stage 2 (Care) */

/*
@dataElement: HIV.D.DE189 - WHO HIV clinical stage 3 (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 3, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 3 (Care)":
  exists "WHO HIV clinical stage 3 (Care) Condition"
    or exists "WHO HIV clinical stage 3 (Care) Observation"
define "WHO HIV clinical stage 3 (Care) Condition":
  Elements."WHO HIV clinical stage 3 (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "WHO HIV clinical stage 3 (Care) Observation":
  Elements."WHO HIV clinical stage 3 (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of WHO HIV clinical stage 3 (Care) */

/*
@dataElement: HIV.D.DE190 - WHO HIV clinical stage 4 (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 4, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 4 (Care)":
  exists "WHO HIV clinical stage 4 (Care) Condition"
    or exists "WHO HIV clinical stage 4 (Care) Observation"
define "WHO HIV clinical stage 4 (Care) Condition":
  Elements."WHO HIV clinical stage 4 (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "WHO HIV clinical stage 4 (Care) Observation":
  Elements."WHO HIV clinical stage 4 (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of WHO HIV clinical stage 4 (Care) */

/*
@dataElement: HIV.D.DE195 - Date of scheduled review of viral load test results (Care)
@activity: HIV.D10 Counsel returning client
@description: Expected date when client's viral load test results will be returned and reviewed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of scheduled review of viral load test results (Care)":
  Elements."Date of scheduled review of viral load test results (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Date of scheduled review of viral load test results (Care) Value":
  "Date of scheduled review of viral load test results (Care)" O
  return O.value
/* End of Date of scheduled review of viral load test results (Care) */

/*
@dataElement: HIV.D.DE225 - Treatment failure (Care)
@activity: HIV.D17 Check for signs of treatment failure
@description: ART treatment failure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Treatment failure (Care)":
  exists "Treatment failure (Care) Observation"
define "Treatment failure (Care) Observation":
  Elements."Treatment failure (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Treatment failure (Care) */

/*
@dataElement: HIV.D.DE226 - Clinical failure (Care)
@activity: HIV.D17 Check for signs of treatment failure
@description: New or recurrent clinical event indicating severe immunodeficiency in adults or advanced or severe immunodeficiency in children
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical failure (Care)":
  exists "Clinical failure (Care) Condition"
    or exists "Clinical failure (Care) Observation"
define "Clinical failure (Care) Condition":
  Elements."Clinical failure (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Clinical failure (Care) Observation":
  Elements."Clinical failure (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Clinical failure (Care) */

/*
@dataElement: HIV.D.DE227 - Immunological failure (Care)
@activity: HIV.D17 Check for signs of treatment failure
@description: CD4 count at or below 250 cells/mm3 following clinical failure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Immunological failure (Care)":
  exists "Immunological failure (Care) Condition"
    or exists "Immunological failure (Care) Observation"
define "Immunological failure (Care) Condition":
  Elements."Immunological failure (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Immunological failure (Care) Observation":
  Elements."Immunological failure (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Immunological failure (Care) */

/*
@dataElement: HIV.D.DE228 - Virological failure (Care)
@activity: HIV.D17 Check for signs of treatment failure
@description: The inability to achieve or maintain viral suppression below a certain threshold indicated by viral load above 1000 copies/mL based on two consecutive viral load measurements in 3 months, with adherence support following the first viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Virological failure (Care)":
  exists "Virological failure (Care) Condition"
    or exists "Virological failure (Care) Observation"
define "Virological failure (Care) Condition":
  Elements."Virological failure (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Virological failure (Care) Observation":
  Elements."Virological failure (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Virological failure (Care) */

/*
@dataElement: HIV.D.DE289 - WHO HIV clinical stage condition or symptom (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: New or recurrent clinical events used to categorize HIV disease severity based at baseline and follow up
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage condition or symptom (Care)":
  exists "WHO HIV clinical stage condition or symptom (Care) Observation"
define "WHO HIV clinical stage condition or symptom (Care) Observation":
  Elements."WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of WHO HIV clinical stage condition or symptom (Care) */

/*
@dataElement: HIV.D.DE290 - Asymptomatic (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: No HIV-related symptoms reported and no clinical signs on examination
*/
// TODO: Replace placeholder with relevant CQL logic
define "Asymptomatic (Care)":
  exists "Asymptomatic (Care) Condition"
    or exists "Asymptomatic (Care) Observation"
define "Asymptomatic (Care) Condition":
  Elements."Asymptomatic (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Asymptomatic (Care) Observation":
  Elements."Asymptomatic (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Asymptomatic (Care) */

/*
@dataElement: HIV.D.DE291 - Persistent generalized lymphadenopathy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Persistent enlarged lymph nodes >1 cm at two or more non-contiguous sites (excluding inguinal) without known cause
*/
// TODO: Replace placeholder with relevant CQL logic
define "Persistent generalized lymphadenopathy (Care)":
  exists "Persistent generalized lymphadenopathy (Care) Condition"
    or exists "Persistent generalized lymphadenopathy (Care) Observation"
define "Persistent generalized lymphadenopathy (Care) Condition":
  Elements."Persistent generalized lymphadenopathy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Persistent generalized lymphadenopathy (Care) Observation":
  Elements."Persistent generalized lymphadenopathy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Persistent generalized lymphadenopathy (Care) */

/*
@dataElement: HIV.D.DE292 - Moderate unexplained weight loss (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Moderate unexplained weight loss (<10% of presumed or measured body weight)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Moderate unexplained weight loss (Care)":
  exists "Moderate unexplained weight loss (Care) Condition"
    or exists "Moderate unexplained weight loss (Care) Observation"
define "Moderate unexplained weight loss (Care) Condition":
  Elements."Moderate unexplained weight loss (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Moderate unexplained weight loss (Care) Observation":
  Elements."Moderate unexplained weight loss (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Moderate unexplained weight loss (Care) */

/*
@dataElement: HIV.D.DE293 - Recurrent respiratory tract infections (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent respiratory tract infections including sinusitis, tonsillitis, otitis media or pharyngitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent respiratory tract infections (Care)":
  exists "Recurrent respiratory tract infections (Care) Condition"
    or exists "Recurrent respiratory tract infections (Care) Observation"
define "Recurrent respiratory tract infections (Care) Condition":
  Elements."Recurrent respiratory tract infections (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Recurrent respiratory tract infections (Care) Observation":
  Elements."Recurrent respiratory tract infections (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Recurrent respiratory tract infections (Care) */

/*
@dataElement: HIV.D.DE294 - Unexplained persistent hepatosplenomegaly (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent hepatosplenomegaly
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent hepatosplenomegaly (Care)":
  exists "Unexplained persistent hepatosplenomegaly (Care) Condition"
    or exists "Unexplained persistent hepatosplenomegaly (Care) Observation"
define "Unexplained persistent hepatosplenomegaly (Care) Condition":
  Elements."Unexplained persistent hepatosplenomegaly (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained persistent hepatosplenomegaly (Care) Observation":
  Elements."Unexplained persistent hepatosplenomegaly (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained persistent hepatosplenomegaly (Care) */

/*
@dataElement: HIV.D.DE295 - Herpes zoster (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include herpes zoster
*/
// TODO: Replace placeholder with relevant CQL logic
define "Herpes zoster (Care)":
  exists "Herpes zoster (Care) Condition"
    or exists "Herpes zoster (Care) Observation"
define "Herpes zoster (Care) Condition":
  Elements."Herpes zoster (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Herpes zoster (Care) Observation":
  Elements."Herpes zoster (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Herpes zoster (Care) */

/*
@dataElement: HIV.D.DE296 - Angular cheilitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include angular cheilitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Angular cheilitis (Care)":
  exists "Angular cheilitis (Care) Condition"
    or exists "Angular cheilitis (Care) Observation"
define "Angular cheilitis (Care) Condition":
  Elements."Angular cheilitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Angular cheilitis (Care) Observation":
  Elements."Angular cheilitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Angular cheilitis (Care) */

/*
@dataElement: HIV.D.DE297 - Linear gingival erythema (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include linear gingival erythema
*/
// TODO: Replace placeholder with relevant CQL logic
define "Linear gingival erythema (Care)":
  exists "Linear gingival erythema (Care) Condition"
    or exists "Linear gingival erythema (Care) Observation"
define "Linear gingival erythema (Care) Condition":
  Elements."Linear gingival erythema (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Linear gingival erythema (Care) Observation":
  Elements."Linear gingival erythema (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Linear gingival erythema (Care) */

/*
@dataElement: HIV.D.DE298 - Recurrent oral ulceration (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent oral ulceration
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent oral ulceration (Care)":
  exists "Recurrent oral ulceration (Care) Condition"
    or exists "Recurrent oral ulceration (Care) Observation"
define "Recurrent oral ulceration (Care) Condition":
  Elements."Recurrent oral ulceration (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Recurrent oral ulceration (Care) Observation":
  Elements."Recurrent oral ulceration (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Recurrent oral ulceration (Care) */

/*
@dataElement: HIV.D.DE299 - Papular pruritic eruption (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include papular pruritic eruption
*/
// TODO: Replace placeholder with relevant CQL logic
define "Papular pruritic eruption (Care)":
  exists "Papular pruritic eruption (Care) Condition"
    or exists "Papular pruritic eruption (Care) Observation"
define "Papular pruritic eruption (Care) Condition":
  Elements."Papular pruritic eruption (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Papular pruritic eruption (Care) Observation":
  Elements."Papular pruritic eruption (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Papular pruritic eruption (Care) */

/*
@dataElement: HIV.D.DE300 - Fungal nail infections (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include fungal nail infections
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fungal nail infections (Care)":
  exists "Fungal nail infections (Care) Condition"
    or exists "Fungal nail infections (Care) Observation"
define "Fungal nail infections (Care) Condition":
  Elements."Fungal nail infections (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Fungal nail infections (Care) Observation":
  Elements."Fungal nail infections (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Fungal nail infections (Care) */

/*
@dataElement: HIV.D.DE301 - Seborrhoeic dermatitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include seborrhoeic dermatitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Seborrhoeic dermatitis (Care)":
  exists "Seborrhoeic dermatitis (Care) Condition"
    or exists "Seborrhoeic dermatitis (Care) Observation"
define "Seborrhoeic dermatitis (Care) Condition":
  Elements."Seborrhoeic dermatitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Seborrhoeic dermatitis (Care) Observation":
  Elements."Seborrhoeic dermatitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Seborrhoeic dermatitis (Care) */

/*
@dataElement: HIV.D.DE302 - Extensive wart virus infection (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extensive wart virus infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extensive wart virus infection (Care)":
  exists "Extensive wart virus infection (Care) Condition"
    or exists "Extensive wart virus infection (Care) Observation"
define "Extensive wart virus infection (Care) Condition":
  Elements."Extensive wart virus infection (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Extensive wart virus infection (Care) Observation":
  Elements."Extensive wart virus infection (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Extensive wart virus infection (Care) */

/*
@dataElement: HIV.D.DE303 - Extensive molluscum contagiosum (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extensive molluscum contagiosum
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extensive molluscum contagiosum (Care)":
  exists "Extensive molluscum contagiosum (Care) Condition"
    or exists "Extensive molluscum contagiosum (Care) Observation"
define "Extensive molluscum contagiosum (Care) Condition":
  Elements."Extensive molluscum contagiosum (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Extensive molluscum contagiosum (Care) Observation":
  Elements."Extensive molluscum contagiosum (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Extensive molluscum contagiosum (Care) */

/*
@dataElement: HIV.D.DE304 - Unexplained persistent parotid enlargement (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent parotid enlargement
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent parotid enlargement (Care)":
  exists "Unexplained persistent parotid enlargement (Care) Condition"
    or exists "Unexplained persistent parotid enlargement (Care) Observation"
define "Unexplained persistent parotid enlargement (Care) Condition":
  Elements."Unexplained persistent parotid enlargement (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained persistent parotid enlargement (Care) Observation":
  Elements."Unexplained persistent parotid enlargement (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained persistent parotid enlargement (Care) */

/*
@dataElement: HIV.D.DE305 - Unexplained severe weight loss in adults (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Unexplained severe weight loss (>10% of presumed or measured body weight)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained severe weight loss in adults (Care)":
  exists "Unexplained severe weight loss in adults (Care) Condition"
    or exists "Unexplained severe weight loss in adults (Care) Observation"
define "Unexplained severe weight loss in adults (Care) Condition":
  Elements."Unexplained severe weight loss in adults (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained severe weight loss in adults (Care) Observation":
  Elements."Unexplained severe weight loss in adults (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained severe weight loss in adults (Care) */

/*
@dataElement: HIV.D.DE306 - Unexplained moderate malnutrition not adequately responding to standard therapy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Defined as weight-for-height < - 2 z-score or mid-upper arm circumference 115 mm to <125 mm. For children younger than five years of age: stunting is defined as severe acute malnutrition - either weight for height < -3 z-score or mid-upper arm circumference <115 mm or the presence of oedema.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained moderate malnutrition not adequately responding to standard therapy (Care)":
  exists "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Condition"
    or exists "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Observation"
define "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Condition":
  Elements."Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Observation":
  Elements."Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained moderate malnutrition not adequately responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE307 - Unexplained chronic diarrhoea for longer than 1 month (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained chronic diarrhoea for longer than 1 month
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained chronic diarrhoea for longer than 1 month (Care)":
  exists "Unexplained chronic diarrhoea for longer than 1 month (Care) Condition"
    or exists "Unexplained chronic diarrhoea for longer than 1 month (Care) Observation"
define "Unexplained chronic diarrhoea for longer than 1 month (Care) Condition":
  Elements."Unexplained chronic diarrhoea for longer than 1 month (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained chronic diarrhoea for longer than 1 month (Care) Observation":
  Elements."Unexplained chronic diarrhoea for longer than 1 month (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained chronic diarrhoea for longer than 1 month (Care) */

/*
@dataElement: HIV.D.DE308 - Unexplained persistent diarrhoea 14 days or more (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent diarrhoea (14 days or more)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent diarrhoea 14 days or more (Care)":
  exists "Unexplained persistent diarrhoea 14 days or more (Care) Condition"
    or exists "Unexplained persistent diarrhoea 14 days or more (Care) Observation"
define "Unexplained persistent diarrhoea 14 days or more (Care) Condition":
  Elements."Unexplained persistent diarrhoea 14 days or more (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained persistent diarrhoea 14 days or more (Care) Observation":
  Elements."Unexplained persistent diarrhoea 14 days or more (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained persistent diarrhoea 14 days or more (Care) */

/*
@dataElement: HIV.D.DE309 - Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent fever (above 37.5 C, intermittent or constant, for longer than one 1 month)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care)":
  exists "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Condition"
    or exists "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Observation"
define "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Condition":
  Elements."Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Observation":
  Elements."Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) */

/*
@dataElement: HIV.D.DE310 - Persistent oral candidiasis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include persistent oral candidiasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Persistent oral candidiasis (Care)":
  exists "Persistent oral candidiasis (Care) Condition"
    or exists "Persistent oral candidiasis (Care) Observation"
define "Persistent oral candidiasis (Care) Condition":
  Elements."Persistent oral candidiasis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Persistent oral candidiasis (Care) Observation":
  Elements."Persistent oral candidiasis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Persistent oral candidiasis (Care) */

/*
@dataElement: HIV.D.DE311 - Oral hairy leukoplakia (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has fine white small linear or corrugated lesions on lateral borders of the tongue that do not scrape off
*/
// TODO: Replace placeholder with relevant CQL logic
define "Oral hairy leukoplakia (Care)":
  exists "Oral hairy leukoplakia (Care) Condition"
    or exists "Oral hairy leukoplakia (Care) Observation"
define "Oral hairy leukoplakia (Care) Condition":
  Elements."Oral hairy leukoplakia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Oral hairy leukoplakia (Care) Observation":
  Elements."Oral hairy leukoplakia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Oral hairy leukoplakia (Care) */

/*
@dataElement: HIV.D.DE312 - Pulmonary TB (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include pulmonary TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pulmonary TB (Care)":
  exists "Pulmonary TB (Care) Condition"
    or exists "Pulmonary TB (Care) Observation"
define "Pulmonary TB (Care) Condition":
  Elements."Pulmonary TB (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Pulmonary TB (Care) Observation":
  Elements."Pulmonary TB (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Pulmonary TB (Care) */

/*
@dataElement: HIV.D.DE313 - Lymph node TB (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include lymph node TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lymph node TB (Care)":
  exists "Lymph node TB (Care) Condition"
    or exists "Lymph node TB (Care) Observation"
define "Lymph node TB (Care) Condition":
  Elements."Lymph node TB (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Lymph node TB (Care) Observation":
  Elements."Lymph node TB (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Lymph node TB (Care) */

/*
@dataElement: HIV.D.DE314 - Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include severe bacterial infections (such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care)":
  exists "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Condition"
    or exists "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Observation"
define "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Condition":
  Elements."Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Observation":
  Elements."Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) */

/*
@dataElement: HIV.D.DE315 - Severe recurrent bacterial pneumonia (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include severe recurrent bacterial pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe recurrent bacterial pneumonia (Care)":
  exists "Severe recurrent bacterial pneumonia (Care) Condition"
    or exists "Severe recurrent bacterial pneumonia (Care) Observation"
define "Severe recurrent bacterial pneumonia (Care) Condition":
  Elements."Severe recurrent bacterial pneumonia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Severe recurrent bacterial pneumonia (Care) Observation":
  Elements."Severe recurrent bacterial pneumonia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Severe recurrent bacterial pneumonia (Care) */

/*
@dataElement: HIV.D.DE316 - Acute necrotizing ulcerative stomatitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include acute necrotizing ulcerative stomatitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute necrotizing ulcerative stomatitis (Care)":
  exists "Acute necrotizing ulcerative stomatitis (Care) Condition"
    or exists "Acute necrotizing ulcerative stomatitis (Care) Observation"
define "Acute necrotizing ulcerative stomatitis (Care) Condition":
  Elements."Acute necrotizing ulcerative stomatitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Acute necrotizing ulcerative stomatitis (Care) Observation":
  Elements."Acute necrotizing ulcerative stomatitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Acute necrotizing ulcerative stomatitis (Care) */

/*
@dataElement: HIV.D.DE317 - Acute necrotizing ulcerative gingivitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include acute necrotizing ulcerative gingivitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute necrotizing ulcerative gingivitis (Care)":
  exists "Acute necrotizing ulcerative gingivitis (Care) Condition"
    or exists "Acute necrotizing ulcerative gingivitis (Care) Observation"
define "Acute necrotizing ulcerative gingivitis (Care) Condition":
  Elements."Acute necrotizing ulcerative gingivitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Acute necrotizing ulcerative gingivitis (Care) Observation":
  Elements."Acute necrotizing ulcerative gingivitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Acute necrotizing ulcerative gingivitis (Care) */

/*
@dataElement: HIV.D.DE318 - Acute necrotizing ulcerative periodontitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include acute necrotizing ulcerative periodontitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute necrotizing ulcerative periodontitis (Care)":
  exists "Acute necrotizing ulcerative periodontitis (Care) Condition"
    or exists "Acute necrotizing ulcerative periodontitis (Care) Observation"
define "Acute necrotizing ulcerative periodontitis (Care) Condition":
  Elements."Acute necrotizing ulcerative periodontitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Acute necrotizing ulcerative periodontitis (Care) Observation":
  Elements."Acute necrotizing ulcerative periodontitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Acute necrotizing ulcerative periodontitis (Care) */

/*
@dataElement: HIV.D.DE319 - Unexplained anaemia <8 g/dL (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained anaemia (<8 g/dL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained anaemia <8 g/dL (Care)":
  exists "Unexplained anaemia <8 g/dL (Care) Condition"
    or exists "Unexplained anaemia <8 g/dL (Care) Observation"
define "Unexplained anaemia <8 g/dL (Care) Condition":
  Elements."Unexplained anaemia <8 g/dL (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained anaemia <8 g/dL (Care) Observation":
  Elements."Unexplained anaemia <8 g/dL (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained anaemia <8 g/dL (Care) */

/*
@dataElement: HIV.D.DE320 - Neutropaenia <0.5 x 10^9/L (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include neutropaenia (<0.5 x 10^9/L)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neutropaenia <0.5 x 10^9/L (Care)":
  exists "Neutropaenia <0.5 x 10^9/L (Care) Condition"
    or exists "Neutropaenia <0.5 x 10^9/L (Care) Observation"
define "Neutropaenia <0.5 x 10^9/L (Care) Condition":
  Elements."Neutropaenia <0.5 x 10^9/L (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Neutropaenia <0.5 x 10^9/L (Care) Observation":
  Elements."Neutropaenia <0.5 x 10^9/L (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Neutropaenia <0.5 x 10^9/L (Care) */

/*
@dataElement: HIV.D.DE321 - Chronic thrombocytopaenia <50 x 10^9/L (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic thrombocytopaenia (<50 x 10^9/L)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic thrombocytopaenia <50 x 10^9/L (Care)":
  exists "Chronic thrombocytopaenia <50 x 10^9/L (Care) Condition"
    or exists "Chronic thrombocytopaenia <50 x 10^9/L (Care) Observation"
define "Chronic thrombocytopaenia <50 x 10^9/L (Care) Condition":
  Elements."Chronic thrombocytopaenia <50 x 10^9/L (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chronic thrombocytopaenia <50 x 10^9/L (Care) Observation":
  Elements."Chronic thrombocytopaenia <50 x 10^9/L (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chronic thrombocytopaenia <50 x 10^9/L (Care) */

/*
@dataElement: HIV.D.DE322 - Symptomatic lymphoid interstitial pneumonitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include symptomatic lymphoid interstitial pneumonitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Symptomatic lymphoid interstitial pneumonitis (Care)":
  exists "Symptomatic lymphoid interstitial pneumonitis (Care) Condition"
    or exists "Symptomatic lymphoid interstitial pneumonitis (Care) Observation"
define "Symptomatic lymphoid interstitial pneumonitis (Care) Condition":
  Elements."Symptomatic lymphoid interstitial pneumonitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Symptomatic lymphoid interstitial pneumonitis (Care) Observation":
  Elements."Symptomatic lymphoid interstitial pneumonitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Symptomatic lymphoid interstitial pneumonitis (Care) */

/*
@dataElement: HIV.D.DE323 - Chronic HIV-associated lung disease, including bronchiectasis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic HIV-associated lung disease, including bronchiectasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic HIV-associated lung disease, including bronchiectasis (Care)":
  exists "Chronic HIV-associated lung disease, including bronchiectasis (Care) Condition"
    or exists "Chronic HIV-associated lung disease, including bronchiectasis (Care) Observation"
define "Chronic HIV-associated lung disease, including bronchiectasis (Care) Condition":
  Elements."Chronic HIV-associated lung disease, including bronchiectasis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chronic HIV-associated lung disease, including bronchiectasis (Care) Observation":
  Elements."Chronic HIV-associated lung disease, including bronchiectasis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chronic HIV-associated lung disease, including bronchiectasis (Care) */

/*
@dataElement: HIV.D.DE324 - HIV wasting syndrome (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Unexplained involuntary weight loss (>10% baseline body weight), with obvious wasting or body mass index <18.5; PLUS EITHER unexplained chronic reported for longer than one month; OR reports of fever or night sweats for more than one month without other cause and lack of response to antibiotics or antimalarial agents; malaria must be excluded in malarious areas.
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV wasting syndrome (Care)":
  exists "HIV wasting syndrome (Care) Condition"
    or exists "HIV wasting syndrome (Care) Observation"
define "HIV wasting syndrome (Care) Condition":
  Elements."HIV wasting syndrome (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV wasting syndrome (Care) Observation":
  Elements."HIV wasting syndrome (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV wasting syndrome (Care) */

/*
@dataElement: HIV.D.DE325 - Unexplained severe wasting not responding to standard therapy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has unexplained severe wasting not responding to standard therapy . For under 5 years old, defined as weight-for-height < -3 z-score
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained severe wasting not responding to standard therapy (Care)":
  exists "Unexplained severe wasting not responding to standard therapy (Care) Condition"
    or exists "Unexplained severe wasting not responding to standard therapy (Care) Observation"
define "Unexplained severe wasting not responding to standard therapy (Care) Condition":
  Elements."Unexplained severe wasting not responding to standard therapy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained severe wasting not responding to standard therapy (Care) Observation":
  Elements."Unexplained severe wasting not responding to standard therapy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained severe wasting not responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE326 - Unexplained stunting not responding to standard therapy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has unexplained stunting not responding to standard therapy . For under 5 years old, defined as length-for- age/height-for-age < -2 z-score
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained stunting not responding to standard therapy (Care)":
  exists "Unexplained stunting not responding to standard therapy (Care) Condition"
    or exists "Unexplained stunting not responding to standard therapy (Care) Observation"
define "Unexplained stunting not responding to standard therapy (Care) Condition":
  Elements."Unexplained stunting not responding to standard therapy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained stunting not responding to standard therapy (Care) Observation":
  Elements."Unexplained stunting not responding to standard therapy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained stunting not responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE327 - Unexplained severe malnutrition not responding to standard therapy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has unexplained severe malnutrition not responding to standard therapy . For under 5 years old, weight for height < -3 z-score or mid-upper arm circumference <115 mm or the presence of oedema
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained severe malnutrition not responding to standard therapy (Care)":
  exists "Unexplained severe malnutrition not responding to standard therapy (Care) Condition"
    or exists "Unexplained severe malnutrition not responding to standard therapy (Care) Observation"
define "Unexplained severe malnutrition not responding to standard therapy (Care) Condition":
  Elements."Unexplained severe malnutrition not responding to standard therapy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Unexplained severe malnutrition not responding to standard therapy (Care) Observation":
  Elements."Unexplained severe malnutrition not responding to standard therapy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Unexplained severe malnutrition not responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE328 - Pneumocystis jirovecii pneumonia (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include pneumocystis (jirovecii) pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pneumocystis jirovecii pneumonia (Care)":
  exists "Pneumocystis jirovecii pneumonia (Care) Condition"
    or exists "Pneumocystis jirovecii pneumonia (Care) Observation"
define "Pneumocystis jirovecii pneumonia (Care) Condition":
  Elements."Pneumocystis jirovecii pneumonia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Pneumocystis jirovecii pneumonia (Care) Observation":
  Elements."Pneumocystis jirovecii pneumonia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Pneumocystis jirovecii pneumonia (Care) */

/*
@dataElement: HIV.D.DE329 - Recurrent severe bacterial pneumonia (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent severe bacterial pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent severe bacterial pneumonia (Care)":
  exists "Recurrent severe bacterial pneumonia (Care) Condition"
    or exists "Recurrent severe bacterial pneumonia (Care) Observation"
define "Recurrent severe bacterial pneumonia (Care) Condition":
  Elements."Recurrent severe bacterial pneumonia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Recurrent severe bacterial pneumonia (Care) Observation":
  Elements."Recurrent severe bacterial pneumonia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Recurrent severe bacterial pneumonia (Care) */

/*
@dataElement: HIV.D.DE330 - Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent severe bacterial infections (such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care)":
  exists "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Condition"
    or exists "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Observation"
define "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Condition":
  Elements."Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Observation":
  Elements."Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) */

/*
@dataElement: HIV.D.DE331 - Empyema (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent empyema
*/
// TODO: Replace placeholder with relevant CQL logic
define "Empyema (Care)":
  exists "Empyema (Care) Condition"
    or exists "Empyema (Care) Observation"
define "Empyema (Care) Condition":
  Elements."Empyema (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Empyema (Care) Observation":
  Elements."Empyema (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Empyema (Care) */

/*
@dataElement: HIV.D.DE332 - Pyomyositis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent pyomyositis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pyomyositis (Care)":
  exists "Pyomyositis (Care) Condition"
    or exists "Pyomyositis (Care) Observation"
define "Pyomyositis (Care) Condition":
  Elements."Pyomyositis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Pyomyositis (Care) Observation":
  Elements."Pyomyositis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Pyomyositis (Care) */

/*
@dataElement: HIV.D.DE333 - Bone or joint infection (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent bone or joint infections
*/
// TODO: Replace placeholder with relevant CQL logic
define "Bone or joint infection (Care)":
  exists "Bone or joint infection (Care) Condition"
    or exists "Bone or joint infection (Care) Observation"
define "Bone or joint infection (Care) Condition":
  Elements."Bone or joint infection (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Bone or joint infection (Care) Observation":
  Elements."Bone or joint infection (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Bone or joint infection (Care) */

/*
@dataElement: HIV.D.DE334 - Meningitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent meningitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Meningitis (Care)":
  exists "Meningitis (Care) Condition"
    or exists "Meningitis (Care) Observation"
define "Meningitis (Care) Condition":
  Elements."Meningitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Meningitis (Care) Observation":
  Elements."Meningitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Meningitis (Care) */

/*
@dataElement: HIV.D.DE335 - Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic herpes simplex infection (orolabial or cutaneous of more than 1 month duration or visceral at any site)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care)":
  exists "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Condition"
    or exists "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Observation"
define "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Condition":
  Elements."Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Observation":
  Elements."Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) */

/*
@dataElement: HIV.D.DE336 - Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic herpes simplex infection (orolabial, genital or anorectal of more than one month in duration or visceral at any site)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care)":
  exists "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Condition"
    or exists "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Observation"
define "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Condition":
  Elements."Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Observation":
  Elements."Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) */

/*
@dataElement: HIV.D.DE337 - Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include oesophageal candidiasis (or candidiasis of trachea, bronchi or lungs)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care)":
  exists "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Condition"
    or exists "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Observation"
define "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Condition":
  Elements."Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Observation":
  Elements."Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) */

/*
@dataElement: HIV.D.DE338 - Extrapulmonary TB (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extrapulmonary tuberculosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extrapulmonary TB (Care)":
  exists "Extrapulmonary TB (Care) Condition"
    or exists "Extrapulmonary TB (Care) Observation"
define "Extrapulmonary TB (Care) Condition":
  Elements."Extrapulmonary TB (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Extrapulmonary TB (Care) Observation":
  Elements."Extrapulmonary TB (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Extrapulmonary TB (Care) */

/*
@dataElement: HIV.D.DE339 - Kaposi sarcoma (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include Kaposi sarcoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Kaposi sarcoma (Care)":
  exists "Kaposi sarcoma (Care) Condition"
    or exists "Kaposi sarcoma (Care) Observation"
define "Kaposi sarcoma (Care) Condition":
  Elements."Kaposi sarcoma (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Kaposi sarcoma (Care) Observation":
  Elements."Kaposi sarcoma (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Kaposi sarcoma (Care) */

/*
@dataElement: HIV.D.DE340 - Cytomegalovirus infection retinitis or infection of other organs (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include cytomegalovirus infection (retinitis or infection of other organs)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cytomegalovirus infection retinitis or infection of other organs (Care)":
  exists "Cytomegalovirus infection retinitis or infection of other organs (Care) Condition"
    or exists "Cytomegalovirus infection retinitis or infection of other organs (Care) Observation"
define "Cytomegalovirus infection retinitis or infection of other organs (Care) Condition":
  Elements."Cytomegalovirus infection retinitis or infection of other organs (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cytomegalovirus infection retinitis or infection of other organs (Care) Observation":
  Elements."Cytomegalovirus infection retinitis or infection of other organs (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cytomegalovirus infection retinitis or infection of other organs (Care) */

/*
@dataElement: HIV.D.DE341 - Central nervous system toxoplasmosis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include central nervous system toxoplasmosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Central nervous system toxoplasmosis (Care)":
  exists "Central nervous system toxoplasmosis (Care) Condition"
    or exists "Central nervous system toxoplasmosis (Care) Observation"
define "Central nervous system toxoplasmosis (Care) Condition":
  Elements."Central nervous system toxoplasmosis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Central nervous system toxoplasmosis (Care) Observation":
  Elements."Central nervous system toxoplasmosis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Central nervous system toxoplasmosis (Care) */

/*
@dataElement: HIV.D.DE342 - HIV encephalopathy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include HIV encephalopathy
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV encephalopathy (Care)":
  exists "HIV encephalopathy (Care) Condition"
    or exists "HIV encephalopathy (Care) Observation"
define "HIV encephalopathy (Care) Condition":
  Elements."HIV encephalopathy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV encephalopathy (Care) Observation":
  Elements."HIV encephalopathy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV encephalopathy (Care) */

/*
@dataElement: HIV.D.DE343 - Extrapulmonary cryptococcosis, including meningitis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extrapulmonary cryptococcosis, including meningitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extrapulmonary cryptococcosis, including meningitis (Care)":
  exists "Extrapulmonary cryptococcosis, including meningitis (Care) Condition"
    or exists "Extrapulmonary cryptococcosis, including meningitis (Care) Observation"
define "Extrapulmonary cryptococcosis, including meningitis (Care) Condition":
  Elements."Extrapulmonary cryptococcosis, including meningitis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Extrapulmonary cryptococcosis, including meningitis (Care) Observation":
  Elements."Extrapulmonary cryptococcosis, including meningitis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Extrapulmonary cryptococcosis, including meningitis (Care) */

/*
@dataElement: HIV.D.DE344 - Disseminated nontuberculous mycobacterial infection (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include disseminated nontuberculous mycobacterial infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Disseminated nontuberculous mycobacterial infection (Care)":
  exists "Disseminated nontuberculous mycobacterial infection (Care) Condition"
    or exists "Disseminated nontuberculous mycobacterial infection (Care) Observation"
define "Disseminated nontuberculous mycobacterial infection (Care) Condition":
  Elements."Disseminated nontuberculous mycobacterial infection (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Disseminated nontuberculous mycobacterial infection (Care) Observation":
  Elements."Disseminated nontuberculous mycobacterial infection (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Disseminated nontuberculous mycobacterial infection (Care) */

/*
@dataElement: HIV.D.DE345 - Progressive multifocal leukoencephalopathy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include progressive multifocal leukoencephalopathy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Progressive multifocal leukoencephalopathy (Care)":
  exists "Progressive multifocal leukoencephalopathy (Care) Condition"
    or exists "Progressive multifocal leukoencephalopathy (Care) Observation"
define "Progressive multifocal leukoencephalopathy (Care) Condition":
  Elements."Progressive multifocal leukoencephalopathy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Progressive multifocal leukoencephalopathy (Care) Observation":
  Elements."Progressive multifocal leukoencephalopathy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Progressive multifocal leukoencephalopathy (Care) */

/*
@dataElement: HIV.D.DE346 - Chronic cryptosporidiosis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic cryptosporidiosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic cryptosporidiosis (Care)":
  exists "Chronic cryptosporidiosis (Care) Condition"
    or exists "Chronic cryptosporidiosis (Care) Observation"
define "Chronic cryptosporidiosis (Care) Condition":
  Elements."Chronic cryptosporidiosis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chronic cryptosporidiosis (Care) Observation":
  Elements."Chronic cryptosporidiosis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chronic cryptosporidiosis (Care) */

/*
@dataElement: HIV.D.DE347 - Chronic cryptosporidiosis with diarrhoea (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic cryptosporidiosis (with diarrhoea)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic cryptosporidiosis with diarrhoea (Care)":
  exists "Chronic cryptosporidiosis with diarrhoea (Care) Condition"
    or exists "Chronic cryptosporidiosis with diarrhoea (Care) Observation"
define "Chronic cryptosporidiosis with diarrhoea (Care) Condition":
  Elements."Chronic cryptosporidiosis with diarrhoea (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chronic cryptosporidiosis with diarrhoea (Care) Observation":
  Elements."Chronic cryptosporidiosis with diarrhoea (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chronic cryptosporidiosis with diarrhoea (Care) */

/*
@dataElement: HIV.D.DE348 - Chronic isosporiasis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic isosporiasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic isosporiasis (Care)":
  exists "Chronic isosporiasis (Care) Condition"
    or exists "Chronic isosporiasis (Care) Observation"
define "Chronic isosporiasis (Care) Condition":
  Elements."Chronic isosporiasis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chronic isosporiasis (Care) Observation":
  Elements."Chronic isosporiasis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chronic isosporiasis (Care) */

/*
@dataElement: HIV.D.DE349 - Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include disseminated mycosis (extrapulmonary histoplasmosis, coccidioidomycosis)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care)":
  exists "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Condition"
    or exists "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Observation"
define "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Condition":
  Elements."Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Observation":
  Elements."Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) */

/*
@dataElement: HIV.D.DE350 - Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include disseminated endemic mycosis (extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care)":
  exists "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Condition"
    or exists "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Observation"
define "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Condition":
  Elements."Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Observation":
  Elements."Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) */

/*
@dataElement: HIV.D.DE351 - Cerebral lymphoma (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include cerebral lymphoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cerebral lymphoma (Care)":
  exists "Cerebral lymphoma (Care) Condition"
    or exists "Cerebral lymphoma (Care) Observation"
define "Cerebral lymphoma (Care) Condition":
  Elements."Cerebral lymphoma (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cerebral lymphoma (Care) Observation":
  Elements."Cerebral lymphoma (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cerebral lymphoma (Care) */

/*
@dataElement: HIV.D.DE352 - B-cell non-Hodgkin lymphoma (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include b-cell non-Hodgkin lymphoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "B-cell non-Hodgkin lymphoma (Care)":
  exists "B-cell non-Hodgkin lymphoma (Care) Condition"
    or exists "B-cell non-Hodgkin lymphoma (Care) Observation"
define "B-cell non-Hodgkin lymphoma (Care) Condition":
  Elements."B-cell non-Hodgkin lymphoma (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "B-cell non-Hodgkin lymphoma (Care) Observation":
  Elements."B-cell non-Hodgkin lymphoma (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of B-cell non-Hodgkin lymphoma (Care) */

/*
@dataElement: HIV.D.DE353 - HIV-associated nephropathy or cardiomyopathy (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include HIV- associated nephropathy or cardiomyopathy
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-associated nephropathy or cardiomyopathy (Care)":
  exists "HIV-associated nephropathy or cardiomyopathy (Care) Condition"
    or exists "HIV-associated nephropathy or cardiomyopathy (Care) Observation"
define "HIV-associated nephropathy or cardiomyopathy (Care) Condition":
  Elements."HIV-associated nephropathy or cardiomyopathy (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV-associated nephropathy or cardiomyopathy (Care) Observation":
  Elements."HIV-associated nephropathy or cardiomyopathy (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV-associated nephropathy or cardiomyopathy (Care) */

/*
@dataElement: HIV.D.DE354 - Recurrent septicaemia including nontyphoidal Salmonella (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent bacteraemia (septicaemia) (including nontyphoidal salmonella)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent septicaemia including nontyphoidal Salmonella (Care)":
  exists "Recurrent septicaemia including nontyphoidal Salmonella (Care) Condition"
    or exists "Recurrent septicaemia including nontyphoidal Salmonella (Care) Observation"
define "Recurrent septicaemia including nontyphoidal Salmonella (Care) Condition":
  Elements."Recurrent septicaemia including nontyphoidal Salmonella (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Recurrent septicaemia including nontyphoidal Salmonella (Care) Observation":
  Elements."Recurrent septicaemia including nontyphoidal Salmonella (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Recurrent septicaemia including nontyphoidal Salmonella (Care) */

/*
@dataElement: HIV.D.DE355 - Invasive cervical carcinoma (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include invasive cervical carcinoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical carcinoma (Care)":
  exists "Invasive cervical carcinoma (Care) Condition"
    or exists "Invasive cervical carcinoma (Care) Observation"
define "Invasive cervical carcinoma (Care) Condition":
  Elements."Invasive cervical carcinoma (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invasive cervical carcinoma (Care) Observation":
  Elements."Invasive cervical carcinoma (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invasive cervical carcinoma (Care) */

/*
@dataElement: HIV.D.DE356 - Atypical disseminated leishmaniasis (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include atypical disseminated leishmaniasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Atypical disseminated leishmaniasis (Care)":
  exists "Atypical disseminated leishmaniasis (Care) Condition"
    or exists "Atypical disseminated leishmaniasis (Care) Observation"
define "Atypical disseminated leishmaniasis (Care) Condition":
  Elements."Atypical disseminated leishmaniasis (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Atypical disseminated leishmaniasis (Care) Observation":
  Elements."Atypical disseminated leishmaniasis (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Atypical disseminated leishmaniasis (Care) */

/*
@dataElement: HIV.D.DE357 - Neutropenia (Care)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include neutropenia, an abnormally low count of a type of white blood cell (neutrophils)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neutropenia (Care)":
  exists "Neutropenia (Care) Condition"
    or exists "Neutropenia (Care) Observation"
define "Neutropenia (Care) Condition":
  Elements."Neutropenia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Neutropenia (Care) Observation":
  Elements."Neutropenia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Neutropenia (Care) */

/*
@dataElement: HIV.D.DE364 - CD4 count (Care)
@activity: HIV.D20 Diagnostics
@description: CD4 cell count in cells/mm^3
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count (Care)":
  Elements."CD4 count (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "CD4 count (Care) Value":
  "CD4 count (Care)" O
  return O.value
/* End of CD4 count (Care) */

/*
@dataElement: HIV.D.DE399 - Monitoring examinations (Care)
@activity: HIV.D20 Diagnostics
@description: Name of examinations, test and results for any relevant investigations carried out for client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Monitoring examinations (Care)":
  exists "Monitoring examinations (Care) Observation"
define "Monitoring examinations (Care) Observation":
  Elements."Monitoring examinations (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Monitoring examinations (Care) */

/*
@dataElement: HIV.D.DE400 - Haemoglobin Hb (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered a Haemoglobin (Hb) test, number in g/dL test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haemoglobin Hb (Care)":
  exists "Haemoglobin Hb (Care) Condition"
    or exists "Haemoglobin Hb (Care) Observation"
define "Haemoglobin Hb (Care) Condition":
  Elements."Haemoglobin Hb (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Haemoglobin Hb (Care) Observation":
  Elements."Haemoglobin Hb (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Haemoglobin Hb (Care) */

/*
@dataElement: HIV.D.DE401 - Pregnancy test (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered a pregnancy test for client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pregnancy test (Care)":
  exists "Pregnancy test (Care) Condition"
    or exists "Pregnancy test (Care) Observation"
define "Pregnancy test (Care) Condition":
  Elements."Pregnancy test (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Pregnancy test (Care) Observation":
  Elements."Pregnancy test (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Pregnancy test (Care) */

/*
@dataElement: HIV.D.DE402 - Syphilis test (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered a syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test (Care)":
  exists "Syphilis test (Care) Condition"
    or exists "Syphilis test (Care) Observation"
define "Syphilis test (Care) Condition":
  Elements."Syphilis test (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Syphilis test (Care) Observation":
  Elements."Syphilis test (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Syphilis test (Care) */

/*
@dataElement: HIV.D.DE403 - Chest X-ray CXR (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered a chest X-ray (CXR)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chest X-ray CXR (Care)":
  exists "Chest X-ray CXR (Care) Condition"
    or exists "Chest X-ray CXR (Care) Observation"
define "Chest X-ray CXR (Care) Condition":
  Elements."Chest X-ray CXR (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chest X-ray CXR (Care) Observation":
  Elements."Chest X-ray CXR (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chest X-ray CXR (Care) */

/*
@dataElement: HIV.D.DE404 - Sputum or culture for TB (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered sputum or culture for TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sputum or culture for TB (Care)":
  exists "Sputum or culture for TB (Care) Condition"
    or exists "Sputum or culture for TB (Care) Observation"
define "Sputum or culture for TB (Care) Condition":
  Elements."Sputum or culture for TB (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Sputum or culture for TB (Care) Observation":
  Elements."Sputum or culture for TB (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sputum or culture for TB (Care) */

/*
@dataElement: HIV.D.DE405 - HBsAg test HBV (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered an HBsAg test (HBV) test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test HBV (Care)":
  exists "HBsAg test HBV (Care) Condition"
    or exists "HBsAg test HBV (Care) Observation"
define "HBsAg test HBV (Care) Condition":
  Elements."HBsAg test HBV (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HBsAg test HBV (Care) Observation":
  Elements."HBsAg test HBV (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HBsAg test HBV (Care) */

/*
@dataElement: HIV.D.DE406 - HIV viral load test ordered (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered an HIV viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV viral load test ordered (Care)":
  exists "HIV viral load test ordered (Care) Condition"
    or exists "HIV viral load test ordered (Care) Observation"
define "HIV viral load test ordered (Care) Condition":
  Elements."HIV viral load test ordered (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV viral load test ordered (Care) Observation":
  Elements."HIV viral load test ordered (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV viral load test ordered (Care) */

/*
@dataElement: HIV.D.DE407 - HIV viral load test scheduled (Care)
@activity: HIV.D20 Diagnostics
@description: Scheduled an HIV viral load test with client
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV viral load test scheduled (Care)":
  exists "HIV viral load test scheduled (Care) Condition"
    or exists "HIV viral load test scheduled (Care) Observation"
define "HIV viral load test scheduled (Care) Condition":
  Elements."HIV viral load test scheduled (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HIV viral load test scheduled (Care) Observation":
  Elements."HIV viral load test scheduled (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV viral load test scheduled (Care) */

/*
@dataElement: HIV.D.DE408 - CD4 count ordered (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered a CD4 cell count
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count ordered (Care)":
  exists "CD4 count ordered (Care) Condition"
    or exists "CD4 count ordered (Care) Observation"
define "CD4 count ordered (Care) Condition":
  Elements."CD4 count ordered (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "CD4 count ordered (Care) Observation":
  Elements."CD4 count ordered (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of CD4 count ordered (Care) */

/*
@dataElement: HIV.D.DE409 - CD4 count test scheduled (Care)
@activity: HIV.D20 Diagnostics
@description: Scheduled a CD4 test with client
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count test scheduled (Care)":
  exists "CD4 count test scheduled (Care) Condition"
    or exists "CD4 count test scheduled (Care) Observation"
define "CD4 count test scheduled (Care) Condition":
  Elements."CD4 count test scheduled (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "CD4 count test scheduled (Care) Observation":
  Elements."CD4 count test scheduled (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of CD4 count test scheduled (Care) */

/*
@dataElement: HIV.D.DE410 - Cryptococcal antigen test (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered a cryptococcal antigen test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cryptococcal antigen test (Care)":
  exists "Cryptococcal antigen test (Care) Condition"
    or exists "Cryptococcal antigen test (Care) Observation"
define "Cryptococcal antigen test (Care) Condition":
  Elements."Cryptococcal antigen test (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cryptococcal antigen test (Care) Observation":
  Elements."Cryptococcal antigen test (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cryptococcal antigen test (Care) */

/*
@dataElement: HIV.D.DE411 - Histoplasmosis antigen test (Care)
@activity: HIV.D20 Diagnostics
@description: Provider ordered a histoplasmosis antigen test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Histoplasmosis antigen test (Care)":
  exists "Histoplasmosis antigen test (Care) Condition"
    or exists "Histoplasmosis antigen test (Care) Observation"
define "Histoplasmosis antigen test (Care) Condition":
  Elements."Histoplasmosis antigen test (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Histoplasmosis antigen test (Care) Observation":
  Elements."Histoplasmosis antigen test (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Histoplasmosis antigen test (Care) */

/*
@dataElement: HIV.D.DE412 - Cervical cancer screening scheduled (Care)
@activity: HIV.D28 Offer other services
@description: Scheduled cervical cancer screening with client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening scheduled (Care)":
  exists "Cervical cancer screening scheduled (Care) Condition"
    or exists "Cervical cancer screening scheduled (Care) Observation"
define "Cervical cancer screening scheduled (Care) Condition":
  Elements."Cervical cancer screening scheduled (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cervical cancer screening scheduled (Care) Observation":
  Elements."Cervical cancer screening scheduled (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cervical cancer screening scheduled (Care) */

/*
@dataElement: HIV.D.DE413 - Date of scheduled monitoring examination (Care)
@activity: HIV.D28 Offer other services
@description: Date of scheduled monitoring examination
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of scheduled monitoring examination (Care)":
  Elements."Date of scheduled monitoring examination (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Date of scheduled monitoring examination (Care) Value":
  "Date of scheduled monitoring examination (Care)" O
  return O.value
/* End of Date of scheduled monitoring examination (Care) */

/*
@dataElement: HIV.D.DE427 - Switch to second-line ART regimen recommended (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A switch to second-line ART regimen is recommended
*/
// TODO: Replace placeholder with relevant CQL logic
define "Switch to second-line ART regimen recommended (Care)":
  exists "Switch to second-line ART regimen recommended (Care) Observation"
define "Switch to second-line ART regimen recommended (Care) Observation":
  Elements."Switch to second-line ART regimen recommended (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Switch to second-line ART regimen recommended (Care) */

/*
@dataElement: HIV.D.DE436 - Regimen substitution recommended (Care)
@activity: HIV.D23 Prescribe
@description: A drug substitution is recommended
*/
// TODO: Replace placeholder with relevant CQL logic
define "Regimen substitution recommended (Care)":
  exists "Regimen substitution recommended (Care) Observation"
define "Regimen substitution recommended (Care) Observation":
  Elements."Regimen substitution recommended (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Regimen substitution recommended (Care) */

/*
@dataElement: HIV.D.DE437 - Dose adjustment recommended (Care)
@activity: HIV.D23 Prescribe
@description: A dosage change is recommended
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dose adjustment recommended (Care)":
  exists "Dose adjustment recommended (Care) Observation"
define "Dose adjustment recommended (Care) Observation":
  Elements."Dose adjustment recommended (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Dose adjustment recommended (Care) */

/*
@dataElement: HIV.D.DE443 - Suspicion of treatment failure or interruption (Care)
@activity: HIV.D23 Prescribe
@description: Client has been on ART, but has stopped taking it or a treatment failure is suspected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Suspicion of treatment failure or interruption (Care)":
  exists "Suspicion of treatment failure or interruption (Care) Observation"
define "Suspicion of treatment failure or interruption (Care) Observation":
  Elements."Suspicion of treatment failure or interruption (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Suspicion of treatment failure or interruption (Care) */

/*
@dataElement: HIV.D.DE465 - Adherence counselling provided (Care)
@activity: HIV.D24 Counsel
@description: Counselling was carried out during visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Adherence counselling provided (Care)":
  exists "Adherence counselling provided (Care) Observation"
define "Adherence counselling provided (Care) Observation":
  Elements."Adherence counselling provided (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Adherence counselling provided (Care) */

/*
@dataElement: HIV.D.DE507 - Counselling provided on diagnoses (Care)
@activity: HIV.D24 Counsel
@description: Counselling provided on diagnoses
*/
// TODO: Replace placeholder with relevant CQL logic
define "Counselling provided on diagnoses (Care)":
  exists "Counselling provided on diagnoses (Care) Observation"
define "Counselling provided on diagnoses (Care) Observation":
  Elements."Counselling provided on diagnoses (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Counselling provided on diagnoses (Care) */

/*
@dataElement: HIV.D.DE510 - Syphilis counselling and treatment (Care)
@activity: HIV.D24 Counsel
@description: Whether counselling and treatment was provided to a client who has been diagnosed with syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis counselling and treatment (Care)":
  exists "Syphilis counselling and treatment (Care) Observation"
define "Syphilis counselling and treatment (Care) Observation":
  Elements."Syphilis counselling and treatment (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Syphilis counselling and treatment (Care) */

/*
@dataElement: HIV.D.DE519 - Other support services (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for other support services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other support services (Care)":
  exists "Other support services (Care) Observation"
define "Other support services (Care) Observation":
  Elements."Other support services (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other support services (Care) */

/*
@dataElement: HIV.D.DE520 - Mental health services (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for mental health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mental health services (Care)":
  exists "Mental health services (Care) Condition"
    or exists "Mental health services (Care) Observation"
define "Mental health services (Care) Condition":
  Elements."Mental health services (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Mental health services (Care) Observation":
  Elements."Mental health services (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Mental health services (Care) */

/*
@dataElement: HIV.D.DE521 - Psychosocial counselling, support and treatment adherence counselling (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for psychosocial counselling, support and treatment adherence counselling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Psychosocial counselling, support and treatment adherence counselling (Care)":
  exists "Psychosocial counselling, support and treatment adherence counselling (Care) Condition"
    or exists "Psychosocial counselling, support and treatment adherence counselling (Care) Observation"
define "Psychosocial counselling, support and treatment adherence counselling (Care) Condition":
  Elements."Psychosocial counselling, support and treatment adherence counselling (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Psychosocial counselling, support and treatment adherence counselling (Care) Observation":
  Elements."Psychosocial counselling, support and treatment adherence counselling (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Psychosocial counselling, support and treatment adherence counselling (Care) */

/*
@dataElement: HIV.D.DE522 - Legal and social services (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for legal and social services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Legal and social services (Care)":
  exists "Legal and social services (Care) Condition"
    or exists "Legal and social services (Care) Observation"
define "Legal and social services (Care) Condition":
  Elements."Legal and social services (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Legal and social services (Care) Observation":
  Elements."Legal and social services (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Legal and social services (Care) */

/*
@dataElement: HIV.D.DE523 - Services for responding to violence against women (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for services for responding to violence against women, including first-line support and psychosocial support, post-rape care and other support services including shelters, legal services and women and child protection services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Services for responding to violence against women (Care)":
  exists "Services for responding to violence against women (Care) Condition"
    or exists "Services for responding to violence against women (Care) Observation"
define "Services for responding to violence against women (Care) Condition":
  Elements."Services for responding to violence against women (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Services for responding to violence against women (Care) Observation":
  Elements."Services for responding to violence against women (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Services for responding to violence against women (Care) */

/*
@dataElement: HIV.D.DE524 - Date/time of follow-up appointment (Care)
@activity: HIV.D29 Schedule follow-up
@description: Date the client is to return for monitoring, re-supply or any other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of follow-up appointment (Care)":
  Elements."Date/time of follow-up appointment (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Date/time of follow-up appointment (Care) Value":
  "Date/time of follow-up appointment (Care)" O
  return O.value
/* End of Date/time of follow-up appointment (Care) */

/*
@dataElement: HIV.D.DE525 - Type of follow-up appointment (Care)
@activity: HIV.D29 Schedule follow-up
@description: Whether the visit will be clinical only, ARV drug pick-up or other. Client may have multiple follow-ups scheduled.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of follow-up appointment (Care)":
  exists "Type of follow-up appointment (Care) Observation"
define "Type of follow-up appointment (Care) Observation":
  Elements."Type of follow-up appointment (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Type of follow-up appointment (Care) */

/*
@dataElement: HIV.D.DE526 - Clinical visit (Care|DDE526)
@activity: HIV.D29 Schedule follow-up
@description: Appointment for clinical care by a provider
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical visit (Care|DDE526)":
  exists "Clinical visit (Care|DDE526) Condition"
    or exists "Clinical visit (Care|DDE526) Observation"
define "Clinical visit (Care|DDE526) Condition":
  Elements."Clinical visit (Care|DDE526) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Clinical visit (Care|DDE526) Observation":
  Elements."Clinical visit (Care|DDE526) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Clinical visit (Care|DDE526) */

/*
@dataElement: HIV.D.DE527 - Antiretroviral drug pick up (Care)
@activity: HIV.D29 Schedule follow-up
@description: Appointment for a drug pick up
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antiretroviral drug pick up (Care)":
  exists "Antiretroviral drug pick up (Care) Condition"
    or exists "Antiretroviral drug pick up (Care) Observation"
define "Antiretroviral drug pick up (Care) Condition":
  Elements."Antiretroviral drug pick up (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antiretroviral drug pick up (Care) Observation":
  Elements."Antiretroviral drug pick up (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antiretroviral drug pick up (Care) */

/*
@dataElement: HIV.D.DE528 - Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528)
@activity: HIV.D29 Schedule follow-up
@description: Appointment for a post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528)":
  exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Condition"
    or exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Observation"
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Condition":
  Elements."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Observation":
  Elements."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) */

/*
@dataElement: HIV.D.DE529 - Other (Care|DDE529)
@activity: HIV.D29 Schedule follow-up
@description: Other reason for the follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE529)":
  exists "Other (Care|DDE529) Condition"
    or exists "Other (Care|DDE529) Observation"
define "Other (Care|DDE529) Condition":
  Elements."Other (Care|DDE529) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other (Care|DDE529) Observation":
  Elements."Other (Care|DDE529) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other (Care|DDE529) */

/*
@dataElement: HIV.D.DE531 - Follow-up test recommended date (Care)
@activity: HIV.D29 Schedule follow-up
@description: A test or screening recommended for the client's care plan at a future date
*/
// TODO: Replace placeholder with relevant CQL logic
define "Follow-up test recommended date (Care)":
  Elements."Follow-up test recommended date (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Follow-up test recommended date (Care) Value":
  "Follow-up test recommended date (Care)" O
  return O.value
/* End of Follow-up test recommended date (Care) */

/*
@dataElement: HIV.D.DE537 - Current medications (Care)
@activity: HIV.D8 Capture or update client history
@description: List of all of the medications the client is currently taking
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current medications (Care)":
  exists "Current medications (Care) Observation"
define "Current medications (Care) Observation":
  Elements."Current medications (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Current medications (Care) */

/*
@dataElement: HIV.D.DE538 - No medications (Care)
@activity: HIV.D8 Capture or update client history
@description: The client is currently not on any medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "No medications (Care)":
  exists "No medications (Care) Condition"
    or exists "No medications (Care) Observation"
define "No medications (Care) Condition":
  Elements."No medications (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "No medications (Care) Observation":
  Elements."No medications (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of No medications (Care) */

/*
@dataElement: HIV.D.DE539 - Dont know of any current medications (Care)
@activity: HIV.D8 Capture or update client history
@description: The client does not know if she is on any medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dont know of any current medications (Care)":
  exists "Dont know of any current medications (Care) Condition"
    or exists "Dont know of any current medications (Care) Observation"
define "Dont know of any current medications (Care) Condition":
  Elements."Dont know of any current medications (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Dont know of any current medications (Care) Observation":
  Elements."Dont know of any current medications (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Dont know of any current medications (Care) */

/*
@dataElement: HIV.D.DE540 - Analgesic (Care)
@activity: HIV.D8 Capture or update client history
@description: Analgesic medication (painkiller)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Analgesic (Care)":
  exists "Analgesic (Care) Condition"
    or exists "Analgesic (Care) Observation"
define "Analgesic (Care) Condition":
  Elements."Analgesic (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Analgesic (Care) Observation":
  Elements."Analgesic (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Analgesic (Care) */

/*
@dataElement: HIV.D.DE541 - Antacids (Care)
@activity: HIV.D8 Capture or update client history
@description: Antacids
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antacids (Care)":
  exists "Antacids (Care) Condition"
    or exists "Antacids (Care) Observation"
define "Antacids (Care) Condition":
  Elements."Antacids (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antacids (Care) Observation":
  Elements."Antacids (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antacids (Care) */

/*
@dataElement: HIV.D.DE542 - Antibiotics broad-spectrum (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is currently taking broad-spectrum antibiotics
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antibiotics broad-spectrum (Care)":
  exists "Antibiotics broad-spectrum (Care) Condition"
    or exists "Antibiotics broad-spectrum (Care) Observation"
define "Antibiotics broad-spectrum (Care) Condition":
  Elements."Antibiotics broad-spectrum (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antibiotics broad-spectrum (Care) Observation":
  Elements."Antibiotics broad-spectrum (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antibiotics broad-spectrum (Care) */

/*
@dataElement: HIV.D.DE543 - Anticonvulsive (Care)
@activity: HIV.D8 Capture or update client history
@description: Anticonvulsive medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anticonvulsive (Care)":
  exists "Anticonvulsive (Care) Condition"
    or exists "Anticonvulsive (Care) Observation"
define "Anticonvulsive (Care) Condition":
  Elements."Anticonvulsive (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Anticonvulsive (Care) Observation":
  Elements."Anticonvulsive (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Anticonvulsive (Care) */

/*
@dataElement: HIV.D.DE544 - Antidiabetic (Care)
@activity: HIV.D8 Capture or update client history
@description: Antidiabetic medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antidiabetic (Care)":
  exists "Antidiabetic (Care) Condition"
    or exists "Antidiabetic (Care) Observation"
define "Antidiabetic (Care) Condition":
  Elements."Antidiabetic (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antidiabetic (Care) Observation":
  Elements."Antidiabetic (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antidiabetic (Care) */

/*
@dataElement: HIV.D.DE545 - Antifungals (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is currently taking antifungals
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antifungals (Care)":
  exists "Antifungals (Care) Condition"
    or exists "Antifungals (Care) Observation"
define "Antifungals (Care) Condition":
  Elements."Antifungals (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antifungals (Care) Observation":
  Elements."Antifungals (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antifungals (Care) */

/*
@dataElement: HIV.D.DE546 - Antihelmintic (Care)
@activity: HIV.D8 Capture or update client history
@description: Antihelmintic or antiparasitic medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antihelmintic (Care)":
  exists "Antihelmintic (Care) Condition"
    or exists "Antihelmintic (Care) Observation"
define "Antihelmintic (Care) Condition":
  Elements."Antihelmintic (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antihelmintic (Care) Observation":
  Elements."Antihelmintic (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antihelmintic (Care) */

/*
@dataElement: HIV.D.DE547 - Antihypertensive (Care)
@activity: HIV.D8 Capture or update client history
@description: Antihypertensive medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antihypertensive (Care)":
  exists "Antihypertensive (Care) Condition"
    or exists "Antihypertensive (Care) Observation"
define "Antihypertensive (Care) Condition":
  Elements."Antihypertensive (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antihypertensive (Care) Observation":
  Elements."Antihypertensive (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antihypertensive (Care) */

/*
@dataElement: HIV.D.DE548 - Antimalarials (Care)
@activity: HIV.D8 Capture or update client history
@description: Antimalarial medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antimalarials (Care)":
  exists "Antimalarials (Care) Condition"
    or exists "Antimalarials (Care) Observation"
define "Antimalarials (Care) Condition":
  Elements."Antimalarials (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antimalarials (Care) Observation":
  Elements."Antimalarials (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antimalarials (Care) */

/*
@dataElement: HIV.D.DE549 - Antiretrovirals ARVs (Care)
@activity: HIV.D8 Capture or update client history
@description: Antiretrovirals (ARVs)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antiretrovirals ARVs (Care)":
  exists "Antiretrovirals ARVs (Care) Condition"
    or exists "Antiretrovirals ARVs (Care) Observation"
define "Antiretrovirals ARVs (Care) Condition":
  Elements."Antiretrovirals ARVs (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antiretrovirals ARVs (Care) Observation":
  Elements."Antiretrovirals ARVs (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antiretrovirals ARVs (Care) */

/*
@dataElement: HIV.D.DE550 - Antiparasitics (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is currently taking antiparasitics
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antiparasitics (Care)":
  exists "Antiparasitics (Care) Condition"
    or exists "Antiparasitics (Care) Observation"
define "Antiparasitics (Care) Condition":
  Elements."Antiparasitics (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antiparasitics (Care) Observation":
  Elements."Antiparasitics (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antiparasitics (Care) */

/*
@dataElement: HIV.D.DE551 - Antivirals (Care)
@activity: HIV.D8 Capture or update client history
@description: Antiviral medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antivirals (Care)":
  exists "Antivirals (Care) Condition"
    or exists "Antivirals (Care) Observation"
define "Antivirals (Care) Condition":
  Elements."Antivirals (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Antivirals (Care) Observation":
  Elements."Antivirals (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Antivirals (Care) */

/*
@dataElement: HIV.D.DE552 - Buprenorphine (Care|DDE552)
@activity: HIV.D8 Capture or update client history
@description: Opioid substitution to treat opioid dependence
*/
// TODO: Replace placeholder with relevant CQL logic
define "Buprenorphine (Care|DDE552)":
  exists "Buprenorphine (Care|DDE552) Condition"
    or exists "Buprenorphine (Care|DDE552) Observation"
define "Buprenorphine (Care|DDE552) Condition":
  Elements."Buprenorphine (Care|DDE552) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Buprenorphine (Care|DDE552) Observation":
  Elements."Buprenorphine (Care|DDE552) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Buprenorphine (Care|DDE552) */

/*
@dataElement: HIV.D.DE553 - Co-trimoxazole preventive therapy CPT (Care)
@activity: HIV.D8 Capture or update client history
@description: Combination of two antimicrobial drugs (sulfamethoxazole and trimethoprim) that covers a variety of bacterial, fungal and protozoan infections
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole preventive therapy CPT (Care)":
  exists "Co-trimoxazole preventive therapy CPT (Care) Condition"
    or exists "Co-trimoxazole preventive therapy CPT (Care) Observation"
define "Co-trimoxazole preventive therapy CPT (Care) Condition":
  Elements."Co-trimoxazole preventive therapy CPT (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Co-trimoxazole preventive therapy CPT (Care) Observation":
  Elements."Co-trimoxazole preventive therapy CPT (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Co-trimoxazole preventive therapy CPT (Care) */

/*
@dataElement: HIV.D.DE554 - Hormonal family planning method (Care)
@activity: HIV.D8 Capture or update client history
@description: Hormonal family planning method
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hormonal family planning method (Care)":
  exists "Hormonal family planning method (Care) Condition"
    or exists "Hormonal family planning method (Care) Observation"
define "Hormonal family planning method (Care) Condition":
  Elements."Hormonal family planning method (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Hormonal family planning method (Care) Observation":
  Elements."Hormonal family planning method (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Hormonal family planning method (Care) */

/*
@dataElement: HIV.D.DE555 - Methadone (Care|DDE555)
@activity: HIV.D8 Capture or update client history
@description: Opioid substitution to treat opioid dependence
*/
// TODO: Replace placeholder with relevant CQL logic
define "Methadone (Care|DDE555)":
  exists "Methadone (Care|DDE555) Condition"
    or exists "Methadone (Care|DDE555) Observation"
define "Methadone (Care|DDE555) Condition":
  Elements."Methadone (Care|DDE555) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Methadone (Care|DDE555) Observation":
  Elements."Methadone (Care|DDE555) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Methadone (Care|DDE555) */

/*
@dataElement: HIV.D.DE556 - PrEP to prevent HIV (Care)
@activity: HIV.D8 Capture or update client history
@description: Pre-exposure prophylaxis (PrEP) medication for preventing the acquisition of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP to prevent HIV (Care)":
  exists "PrEP to prevent HIV (Care) Condition"
    or exists "PrEP to prevent HIV (Care) Observation"
define "PrEP to prevent HIV (Care) Condition":
  Elements."PrEP to prevent HIV (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "PrEP to prevent HIV (Care) Observation":
  Elements."PrEP to prevent HIV (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of PrEP to prevent HIV (Care) */

/*
@dataElement: HIV.D.DE557 - Other antibiotics (Care)
@activity: HIV.D8 Capture or update client history
@description: Other antibiotics not listed above
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other antibiotics (Care)":
  exists "Other antibiotics (Care) Condition"
    or exists "Other antibiotics (Care) Observation"
define "Other antibiotics (Care) Condition":
  Elements."Other antibiotics (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other antibiotics (Care) Observation":
  Elements."Other antibiotics (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other antibiotics (Care) */

/*
@dataElement: HIV.D.DE558 - Other medications (Care)
@activity: HIV.D8 Capture or update client history
@description: Other medications or supplements that are not listed above
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other medications (Care)":
  exists "Other medications (Care) Condition"
    or exists "Other medications (Care) Observation"
define "Other medications (Care) Condition":
  Elements."Other medications (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other medications (Care) Observation":
  Elements."Other medications (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other medications (Care) */

/*
@dataElement: HIV.D.DE658 - Cervical cancer primary screening test type (Care)
@activity: HIV.D28 Offer other services
@description: Type of cervical cancer screening test used in primary screening
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer primary screening test type (Care)":
  exists "Cervical cancer primary screening test type (Care) Observation"
define "Cervical cancer primary screening test type (Care) Observation":
  Elements."Cervical cancer primary screening test type (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cervical cancer primary screening test type (Care) */

/*
@dataElement: HIV.D.DE659 - HPV-DNA (Care)
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using HPV-DNA test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HPV-DNA (Care)":
  exists "HPV-DNA (Care) Condition"
    or exists "HPV-DNA (Care) Observation"
define "HPV-DNA (Care) Condition":
  Elements."HPV-DNA (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "HPV-DNA (Care) Observation":
  Elements."HPV-DNA (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HPV-DNA (Care) */

/*
@dataElement: HIV.D.DE660 - VIA (Care)
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using visual inspection with acetic acid (VIA)
*/
// TODO: Replace placeholder with relevant CQL logic
define "VIA (Care)":
  exists "VIA (Care) Condition"
    or exists "VIA (Care) Observation"
define "VIA (Care) Condition":
  Elements."VIA (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "VIA (Care) Observation":
  Elements."VIA (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of VIA (Care) */

/*
@dataElement: HIV.D.DE661 - Cervical cytology (Care)
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using cervical cytology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cytology (Care)":
  exists "Cervical cytology (Care) Condition"
    or exists "Cervical cytology (Care) Observation"
define "Cervical cytology (Care) Condition":
  Elements."Cervical cytology (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cervical cytology (Care) Observation":
  Elements."Cervical cytology (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cervical cytology (Care) */

/*
@dataElement: HIV.D.DE662 - Other (Care|DDE662)
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using other method
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE662)":
  exists "Other (Care|DDE662) Condition"
    or exists "Other (Care|DDE662) Observation"
define "Other (Care|DDE662) Condition":
  Elements."Other (Care|DDE662) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other (Care|DDE662) Observation":
  Elements."Other (Care|DDE662) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other (Care|DDE662) */

/*
@dataElement: HIV.D.DE745 - Cervical cancer screening interval amongst WLHIV (Care)
@activity: HIV.D28 Offer other services
@description: Country-specific interval between cancer screenings amongst women living with HIV (typically 3 or 5 years)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening interval amongst WLHIV (Care)":
  Elements."Cervical cancer screening interval amongst WLHIV (Care)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "Cervical cancer screening interval amongst WLHIV (Care) Value":
  "Cervical cancer screening interval amongst WLHIV (Care)" O
  return O.value
/* End of Cervical cancer screening interval amongst WLHIV (Care) */

/*
@dataElement: HIV.D.DE753 - Offer other clinical services (Care)
@activity: HIV.D28 Offer other services
@description: Other clinical services offered or referrals given to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer other clinical services (Care)":
  exists "Offer other clinical services (Care) Observation"
define "Offer other clinical services (Care) Observation":
  Elements."Offer other clinical services (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Offer other clinical services (Care) */

/*
@dataElement: HIV.D.DE754 - Assessment and provision of vaccinations (Care)
@activity: HIV.D28 Offer other services
@description: Assessment and provision of vaccinations, such as for people from Key population member type, pregnant women and infants; and, where appropriate, tetanus vaccination for adolescent boys and men receiving VMMC
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assessment and provision of vaccinations (Care)":
  exists "Assessment and provision of vaccinations (Care) Condition"
    or exists "Assessment and provision of vaccinations (Care) Observation"
define "Assessment and provision of vaccinations (Care) Condition":
  Elements."Assessment and provision of vaccinations (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assessment and provision of vaccinations (Care) Observation":
  Elements."Assessment and provision of vaccinations (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assessment and provision of vaccinations (Care) */

/*
@dataElement: HIV.D.DE755 - Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for HBV and/or HCV testing and treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care)":
  exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Condition"
    or exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Observation"
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Condition":
  Elements."Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Observation":
  Elements."Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) */

/*
@dataElement: HIV.D.DE756 - Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care)":
  exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Condition"
    or exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Observation"
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Condition":
  Elements."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Observation":
  Elements."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) */

/*
@dataElement: HIV.D.DE757 - Intensified TB case finding and linkage to TB treatment (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for intensified TB case finding and linkage to TB treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intensified TB case finding and linkage to TB treatment (Care)":
  exists "Intensified TB case finding and linkage to TB treatment (Care) Condition"
    or exists "Intensified TB case finding and linkage to TB treatment (Care) Observation"
define "Intensified TB case finding and linkage to TB treatment (Care) Condition":
  Elements."Intensified TB case finding and linkage to TB treatment (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Intensified TB case finding and linkage to TB treatment (Care) Observation":
  Elements."Intensified TB case finding and linkage to TB treatment (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Intensified TB case finding and linkage to TB treatment (Care) */

/*
@dataElement: HIV.D.DE758 - Provision of isoniazid preventive therapy if person does not have TB (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for provision of isoniazid preventive therapy if person does not have TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Provision of isoniazid preventive therapy if person does not have TB (Care)":
  exists "Provision of isoniazid preventive therapy if person does not have TB (Care) Condition"
    or exists "Provision of isoniazid preventive therapy if person does not have TB (Care) Observation"
define "Provision of isoniazid preventive therapy if person does not have TB (Care) Condition":
  Elements."Provision of isoniazid preventive therapy if person does not have TB (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Provision of isoniazid preventive therapy if person does not have TB (Care) Observation":
  Elements."Provision of isoniazid preventive therapy if person does not have TB (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Provision of isoniazid preventive therapy if person does not have TB (Care) */

/*
@dataElement: HIV.D.DE759 - Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care)
@activity: HIV.D28 Offer other services
@description: Offer or refer for malaria prevention (such as bed nets and prophylaxis), depending on epidemiology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care)":
  exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Condition"
    or exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Observation"
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Condition":
  Elements."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Observation":
  Elements."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) */

/*
@dataElement: HIV.D.DE903 - Medication/drug (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Current or considered medication/drug, for the purpose of determining drug interactions
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medication/drug (Care)":
  exists "Medication/drug (Care) Observation"
define "Medication/drug (Care) Observation":
  Elements."Medication/drug (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Medication/drug (Care) */

/*
@dataElement: HIV.D.DE904 - Rifampicin (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Rifampicin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rifampicin (Care)":
  exists "Rifampicin (Care) Condition"
    or exists "Rifampicin (Care) Observation"
define "Rifampicin (Care) Condition":
  Elements."Rifampicin (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Rifampicin (Care) Observation":
  Elements."Rifampicin (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Rifampicin (Care) */

/*
@dataElement: HIV.D.DE905 - Halofantrine (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Halofantrine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Halofantrine (Care)":
  exists "Halofantrine (Care) Condition"
    or exists "Halofantrine (Care) Observation"
define "Halofantrine (Care) Condition":
  Elements."Halofantrine (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Halofantrine (Care) Observation":
  Elements."Halofantrine (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Halofantrine (Care) */

/*
@dataElement: HIV.D.DE906 - Lovastatin (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Lovastatin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lovastatin (Care)":
  exists "Lovastatin (Care) Condition"
    or exists "Lovastatin (Care) Observation"
define "Lovastatin (Care) Condition":
  Elements."Lovastatin (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Lovastatin (Care) Observation":
  Elements."Lovastatin (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Lovastatin (Care) */

/*
@dataElement: HIV.D.DE907 - Simvastatin (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Simvastatin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Simvastatin (Care)":
  exists "Simvastatin (Care) Condition"
    or exists "Simvastatin (Care) Observation"
define "Simvastatin (Care) Condition":
  Elements."Simvastatin (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Simvastatin (Care) Observation":
  Elements."Simvastatin (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Simvastatin (Care) */

/*
@dataElement: HIV.D.DE908 - Hormonal contraception (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Hormonal contraception currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hormonal contraception (Care)":
  exists "Hormonal contraception (Care) Condition"
    or exists "Hormonal contraception (Care) Observation"
define "Hormonal contraception (Care) Condition":
  Elements."Hormonal contraception (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Hormonal contraception (Care) Observation":
  Elements."Hormonal contraception (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Hormonal contraception (Care) */

/*
@dataElement: HIV.D.DE909 - Metformin (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Metformin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Metformin (Care)":
  exists "Metformin (Care) Condition"
    or exists "Metformin (Care) Observation"
define "Metformin (Care) Condition":
  Elements."Metformin (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Metformin (Care) Observation":
  Elements."Metformin (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Metformin (Care) */

/*
@dataElement: HIV.D.DE910 - Astemizole (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Astemizole currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Astemizole (Care)":
  exists "Astemizole (Care) Condition"
    or exists "Astemizole (Care) Observation"
define "Astemizole (Care) Condition":
  Elements."Astemizole (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Astemizole (Care) Observation":
  Elements."Astemizole (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Astemizole (Care) */

/*
@dataElement: HIV.D.DE911 - Terfenadine (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Terfenadine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Terfenadine (Care)":
  exists "Terfenadine (Care) Condition"
    or exists "Terfenadine (Care) Observation"
define "Terfenadine (Care) Condition":
  Elements."Terfenadine (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Terfenadine (Care) Observation":
  Elements."Terfenadine (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Terfenadine (Care) */

/*
@dataElement: HIV.D.DE912 - TDF (Care|DDE912)
@activity: HIV.D21 Determine regimen and treatment options
@description: TDF currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF (Care|DDE912)":
  exists "TDF (Care|DDE912) Condition"
    or exists "TDF (Care|DDE912) Observation"
define "TDF (Care|DDE912) Condition":
  Elements."TDF (Care|DDE912) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "TDF (Care|DDE912) Observation":
  Elements."TDF (Care|DDE912) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TDF (Care|DDE912) */

/*
@dataElement: HIV.D.DE913 - Simeprevir (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Simeprevir currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Simeprevir (Care)":
  exists "Simeprevir (Care) Condition"
    or exists "Simeprevir (Care) Observation"
define "Simeprevir (Care) Condition":
  Elements."Simeprevir (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Simeprevir (Care) Observation":
  Elements."Simeprevir (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Simeprevir (Care) */

/*
@dataElement: HIV.D.DE914 - Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Ombitasvir + paritaprevir/ritonavir + dasabuvir currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care)":
  exists "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Condition"
    or exists "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Observation"
define "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Condition":
  Elements."Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Observation":
  Elements."Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) */

/*
@dataElement: HIV.D.DE915 - Methadone (Care|DDE915)
@activity: HIV.D21 Determine regimen and treatment options
@description: Methadone currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Methadone (Care|DDE915)":
  exists "Methadone (Care|DDE915) Condition"
    or exists "Methadone (Care|DDE915) Observation"
define "Methadone (Care|DDE915) Condition":
  Elements."Methadone (Care|DDE915) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Methadone (Care|DDE915) Observation":
  Elements."Methadone (Care|DDE915) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Methadone (Care|DDE915) */

/*
@dataElement: HIV.D.DE916 - Buprenorphine (Care|DDE916)
@activity: HIV.D21 Determine regimen and treatment options
@description: Buprenorphine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Buprenorphine (Care|DDE916)":
  exists "Buprenorphine (Care|DDE916) Condition"
    or exists "Buprenorphine (Care|DDE916) Observation"
define "Buprenorphine (Care|DDE916) Condition":
  Elements."Buprenorphine (Care|DDE916) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Buprenorphine (Care|DDE916) Observation":
  Elements."Buprenorphine (Care|DDE916) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Buprenorphine (Care|DDE916) */

/*
@dataElement: HIV.D.DE917 - Dofetilide (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Dofetilide currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dofetilide (Care)":
  exists "Dofetilide (Care) Condition"
    or exists "Dofetilide (Care) Observation"
define "Dofetilide (Care) Condition":
  Elements."Dofetilide (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Dofetilide (Care) Observation":
  Elements."Dofetilide (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Dofetilide (Care) */

/*
@dataElement: HIV.D.DE918 - Carbamazepine (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Carbamazepine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Carbamazepine (Care)":
  exists "Carbamazepine (Care) Condition"
    or exists "Carbamazepine (Care) Observation"
define "Carbamazepine (Care) Condition":
  Elements."Carbamazepine (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Carbamazepine (Care) Observation":
  Elements."Carbamazepine (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Carbamazepine (Care) */

/*
@dataElement: HIV.D.DE919 - Phenobarbital (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Phenobarbital currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Phenobarbital (Care)":
  exists "Phenobarbital (Care) Condition"
    or exists "Phenobarbital (Care) Observation"
define "Phenobarbital (Care) Condition":
  Elements."Phenobarbital (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Phenobarbital (Care) Observation":
  Elements."Phenobarbital (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Phenobarbital (Care) */

/*
@dataElement: HIV.D.DE920 - Phenytoin (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Phenytoin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Phenytoin (Care)":
  exists "Phenytoin (Care) Condition"
    or exists "Phenytoin (Care) Observation"
define "Phenytoin (Care) Condition":
  Elements."Phenytoin (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Phenytoin (Care) Observation":
  Elements."Phenytoin (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Phenytoin (Care) */

/*
@dataElement: HIV.D.DE921 - Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Polyvalent cation products containing Mg, Al, Fe, Ca and Zn currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care)":
  exists "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Condition"
    or exists "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Observation"
define "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Condition":
  Elements."Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Observation":
  Elements."Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) */

/*
@dataElement: HIV.D.DE922 - Amodiaquine (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Amodiaquine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Amodiaquine (Care)":
  exists "Amodiaquine (Care) Condition"
    or exists "Amodiaquine (Care) Observation"
define "Amodiaquine (Care) Condition":
  Elements."Amodiaquine (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Amodiaquine (Care) Observation":
  Elements."Amodiaquine (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Amodiaquine (Care) */

/*
@dataElement: HIV.D.DE923 - Cisapride (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Cisapride currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cisapride (Care)":
  exists "Cisapride (Care) Condition"
    or exists "Cisapride (Care) Observation"
define "Cisapride (Care) Condition":
  Elements."Cisapride (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Cisapride (Care) Observation":
  Elements."Cisapride (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Cisapride (Care) */

/*
@dataElement: HIV.D.DE924 - Ergotamine (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Ergotamine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Ergotamine (Care)":
  exists "Ergotamine (Care) Condition"
    or exists "Ergotamine (Care) Observation"
define "Ergotamine (Care) Condition":
  Elements."Ergotamine (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Ergotamine (Care) Observation":
  Elements."Ergotamine (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Ergotamine (Care) */

/*
@dataElement: HIV.D.DE925 - Dihydroergotamine (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Dihydroergotamine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dihydroergotamine (Care)":
  exists "Dihydroergotamine (Care) Condition"
    or exists "Dihydroergotamine (Care) Observation"
define "Dihydroergotamine (Care) Condition":
  Elements."Dihydroergotamine (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Dihydroergotamine (Care) Observation":
  Elements."Dihydroergotamine (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Dihydroergotamine (Care) */

/*
@dataElement: HIV.D.DE926 - Midazolam (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Midazolam currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Midazolam (Care)":
  exists "Midazolam (Care) Condition"
    or exists "Midazolam (Care) Observation"
define "Midazolam (Care) Condition":
  Elements."Midazolam (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Midazolam (Care) Observation":
  Elements."Midazolam (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Midazolam (Care) */

/*
@dataElement: HIV.D.DE927 - Triazolam (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Triazolam currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Triazolam (Care)":
  exists "Triazolam (Care) Condition"
    or exists "Triazolam (Care) Observation"
define "Triazolam (Care) Condition":
  Elements."Triazolam (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Triazolam (Care) Observation":
  Elements."Triazolam (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Triazolam (Care) */

/*
@dataElement: HIV.D.DE928 - Estrogen-based hormonal contraception (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Estrogen-based hormonal contraception currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Estrogen-based hormonal contraception (Care)":
  exists "Estrogen-based hormonal contraception (Care) Condition"
    or exists "Estrogen-based hormonal contraception (Care) Observation"
define "Estrogen-based hormonal contraception (Care) Condition":
  Elements."Estrogen-based hormonal contraception (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Estrogen-based hormonal contraception (Care) Observation":
  Elements."Estrogen-based hormonal contraception (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Estrogen-based hormonal contraception (Care) */

/*
@dataElement: HIV.D.DE929 - Ribavirin (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Ribavirin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Ribavirin (Care)":
  exists "Ribavirin (Care) Condition"
    or exists "Ribavirin (Care) Observation"
define "Ribavirin (Care) Condition":
  Elements."Ribavirin (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Ribavirin (Care) Observation":
  Elements."Ribavirin (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Ribavirin (Care) */

/*
@dataElement: HIV.D.DE930 - Peginterferon alfa-2a (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Peginterferon alfa-2a currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Peginterferon alfa-2a (Care)":
  exists "Peginterferon alfa-2a (Care) Condition"
    or exists "Peginterferon alfa-2a (Care) Observation"
define "Peginterferon alfa-2a (Care) Condition":
  Elements."Peginterferon alfa-2a (Care) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Peginterferon alfa-2a (Care) Observation":
  Elements."Peginterferon alfa-2a (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Peginterferon alfa-2a (Care) */

/*
@dataElement: HIV.D.DE931 - Other (Care|DDE931)
@activity: HIV.D21 Determine regimen and treatment options
@description: Other medication currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE931)":
  exists "Other (Care|DDE931) Condition"
    or exists "Other (Care|DDE931) Observation"
define "Other (Care|DDE931) Condition":
  Elements."Other (Care|DDE931) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other (Care|DDE931) Observation":
  Elements."Other (Care|DDE931) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other (Care|DDE931) */

/*
@dataElement: HIV.D.DE933 - Medication change recommended (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A medication change is recommended for the client based upon current or considered medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medication change recommended (Care)":
  exists "Medication change recommended (Care) Observation"
define "Medication change recommended (Care) Observation":
  Elements."Medication change recommended (Care) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Medication change recommended (Care) */

/*
@dataElement: HIV.D.DE934 - WHO HIV clinical stage condition or symptom (HIV)
@activity: HIV.D15 Determine clinical stage of HIV
@description: New or recurrent clinical events used to categorize HIV disease severity based at baseline and follow up
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage condition or symptom (HIV)":
  exists "WHO HIV clinical stage condition or symptom (HIV) Observation"
define "WHO HIV clinical stage condition or symptom (HIV) Observation":
  Elements."WHO HIV clinical stage condition or symptom (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of WHO HIV clinical stage condition or symptom (HIV) */

/*
@dataElement: HIV.D.DE935 - Pulmonary TB (HIV)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include pulmonary TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pulmonary TB (HIV)":
  exists "Pulmonary TB (HIV) Condition"
    or exists "Pulmonary TB (HIV) Observation"
define "Pulmonary TB (HIV) Condition":
  Elements."Pulmonary TB (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Pulmonary TB (HIV) Observation":
  Elements."Pulmonary TB (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Pulmonary TB (HIV) */

/*
@dataElement: HIV.D.DE936 - Lymph node TB (HIV)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include lymph node TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lymph node TB (HIV)":
  exists "Lymph node TB (HIV) Condition"
    or exists "Lymph node TB (HIV) Observation"
define "Lymph node TB (HIV) Condition":
  Elements."Lymph node TB (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Lymph node TB (HIV) Observation":
  Elements."Lymph node TB (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Lymph node TB (HIV) */

/*
@dataElement: HIV.D.DE937 - Extrapulmonary TB (HIV)
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extrapulmonary tuberculosis (TB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extrapulmonary TB (HIV)":
  exists "Extrapulmonary TB (HIV) Condition"
    or exists "Extrapulmonary TB (HIV) Observation"
define "Extrapulmonary TB (HIV) Condition":
  Elements."Extrapulmonary TB (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Extrapulmonary TB (HIV) Observation":
  Elements."Extrapulmonary TB (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Extrapulmonary TB (HIV) */

/*
@dataElement: HIV.D.DE956 - TB screening algorithm (HIV)
@activity: HIV.D4 Screen for TB
@description: Screening algorithm selected for screening activities
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB screening algorithm (HIV)":
  exists "TB screening algorithm (HIV) Observation"
define "TB screening algorithm (HIV) Observation":
  Elements."TB screening algorithm (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TB screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE957 - Screening with cough (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on cough symptom
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screening with cough (HIV)":
  exists "Screening with cough (HIV) Condition"
    or exists "Screening with cough (HIV) Observation"
define "Screening with cough (HIV) Condition":
  Elements."Screening with cough (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Screening with cough (HIV) Observation":
  Elements."Screening with cough (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Screening with cough (HIV) */

/*
@dataElement: HIV.D.DE958 - Screening with any TB symptom (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on any TB symptom
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screening with any TB symptom (HIV)":
  exists "Screening with any TB symptom (HIV) Condition"
    or exists "Screening with any TB symptom (HIV) Observation"
define "Screening with any TB symptom (HIV) Condition":
  Elements."Screening with any TB symptom (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Screening with any TB symptom (HIV) Observation":
  Elements."Screening with any TB symptom (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Screening with any TB symptom (HIV) */

/*
@dataElement: HIV.D.DE959 - W4SS single screening algorithm (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on the WHO-recommended four-symptom screen
*/
// TODO: Replace placeholder with relevant CQL logic
define "W4SS single screening algorithm (HIV)":
  exists "W4SS single screening algorithm (HIV) Condition"
    or exists "W4SS single screening algorithm (HIV) Observation"
define "W4SS single screening algorithm (HIV) Condition":
  Elements."W4SS single screening algorithm (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "W4SS single screening algorithm (HIV) Observation":
  Elements."W4SS single screening algorithm (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of W4SS single screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE960 - CRP single screening algorithm (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on C-reactive protein (CRP) testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "CRP single screening algorithm (HIV)":
  exists "CRP single screening algorithm (HIV) Condition"
    or exists "CRP single screening algorithm (HIV) Observation"
define "CRP single screening algorithm (HIV) Condition":
  Elements."CRP single screening algorithm (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "CRP single screening algorithm (HIV) Observation":
  Elements."CRP single screening algorithm (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of CRP single screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE961 - CXR single screening algorithm (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB with a chest radiography (CXR)
*/
// TODO: Replace placeholder with relevant CQL logic
define "CXR single screening algorithm (HIV)":
  exists "CXR single screening algorithm (HIV) Condition"
    or exists "CXR single screening algorithm (HIV) Observation"
define "CXR single screening algorithm (HIV) Condition":
  Elements."CXR single screening algorithm (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "CXR single screening algorithm (HIV) Observation":
  Elements."CXR single screening algorithm (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of CXR single screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE962 - Parallel screening algorithm with W4SS and CRP (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using parallel screening with WHO-recommended four-symptom screen and C-reactive protein (CRP) testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Parallel screening algorithm with W4SS and CRP (HIV)":
  exists "Parallel screening algorithm with W4SS and CRP (HIV) Condition"
    or exists "Parallel screening algorithm with W4SS and CRP (HIV) Observation"
define "Parallel screening algorithm with W4SS and CRP (HIV) Condition":
  Elements."Parallel screening algorithm with W4SS and CRP (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Parallel screening algorithm with W4SS and CRP (HIV) Observation":
  Elements."Parallel screening algorithm with W4SS and CRP (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Parallel screening algorithm with W4SS and CRP (HIV) */

/*
@dataElement: HIV.D.DE963 - Sequential positive screening algorithm with W4SS and CRP (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential positive screening with WHO-recommended four-symptom screen and C-reactive protein (CRP) testing.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential positive screening algorithm with W4SS and CRP (HIV)":
  exists "Sequential positive screening algorithm with W4SS and CRP (HIV) Condition"
    or exists "Sequential positive screening algorithm with W4SS and CRP (HIV) Observation"
define "Sequential positive screening algorithm with W4SS and CRP (HIV) Condition":
  Elements."Sequential positive screening algorithm with W4SS and CRP (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Sequential positive screening algorithm with W4SS and CRP (HIV) Observation":
  Elements."Sequential positive screening algorithm with W4SS and CRP (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sequential positive screening algorithm with W4SS and CRP (HIV) */

/*
@dataElement: HIV.D.DE964 - Sequential negative screening algorithm with W4SS and CRP (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential negative screening with WHO-recommended four-symptom screen and C-reactive protein (CRP) testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential negative screening algorithm with W4SS and CRP (HIV)":
  exists "Sequential negative screening algorithm with W4SS and CRP (HIV) Condition"
    or exists "Sequential negative screening algorithm with W4SS and CRP (HIV) Observation"
define "Sequential negative screening algorithm with W4SS and CRP (HIV) Condition":
  Elements."Sequential negative screening algorithm with W4SS and CRP (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Sequential negative screening algorithm with W4SS and CRP (HIV) Observation":
  Elements."Sequential negative screening algorithm with W4SS and CRP (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sequential negative screening algorithm with W4SS and CRP (HIV) */

/*
@dataElement: HIV.D.DE965 - Parallel screening algorithm with W4SS and CXR (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using the parallel screening algorithm with W4SS and CXR
*/
// TODO: Replace placeholder with relevant CQL logic
define "Parallel screening algorithm with W4SS and CXR (HIV)":
  exists "Parallel screening algorithm with W4SS and CXR (HIV) Condition"
    or exists "Parallel screening algorithm with W4SS and CXR (HIV) Observation"
define "Parallel screening algorithm with W4SS and CXR (HIV) Condition":
  Elements."Parallel screening algorithm with W4SS and CXR (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Parallel screening algorithm with W4SS and CXR (HIV) Observation":
  Elements."Parallel screening algorithm with W4SS and CXR (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Parallel screening algorithm with W4SS and CXR (HIV) */

/*
@dataElement: HIV.D.DE966 - Sequential positive screening algorithm with W4SS and CXR (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential positive screening with WHO-recommended four-symptom screen and chest radiography
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential positive screening algorithm with W4SS and CXR (HIV)":
  exists "Sequential positive screening algorithm with W4SS and CXR (HIV) Condition"
    or exists "Sequential positive screening algorithm with W4SS and CXR (HIV) Observation"
define "Sequential positive screening algorithm with W4SS and CXR (HIV) Condition":
  Elements."Sequential positive screening algorithm with W4SS and CXR (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Sequential positive screening algorithm with W4SS and CXR (HIV) Observation":
  Elements."Sequential positive screening algorithm with W4SS and CXR (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sequential positive screening algorithm with W4SS and CXR (HIV) */

/*
@dataElement: HIV.D.DE967 - Sequential negative screening algorithm with W4SS and CXR (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential negative screening with WHO-recommended four-symptom screen and chest radiography
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential negative screening algorithm with W4SS and CXR (HIV)":
  exists "Sequential negative screening algorithm with W4SS and CXR (HIV) Condition"
    or exists "Sequential negative screening algorithm with W4SS and CXR (HIV) Observation"
define "Sequential negative screening algorithm with W4SS and CXR (HIV) Condition":
  Elements."Sequential negative screening algorithm with W4SS and CXR (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Sequential negative screening algorithm with W4SS and CXR (HIV) Observation":
  Elements."Sequential negative screening algorithm with W4SS and CXR (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Sequential negative screening algorithm with W4SS and CXR (HIV) */

/*
@dataElement: HIV.D.DE968 - Screening with mWRD (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for TB with a molecular WHO-recommended rapid diagnostic test (mWRD), such as an Xpert MTB/RIF test to detect Mycobacterium tuberculosis (MTB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screening with mWRD (HIV)":
  exists "Screening with mWRD (HIV) Condition"
    or exists "Screening with mWRD (HIV) Observation"
define "Screening with mWRD (HIV) Condition":
  Elements."Screening with mWRD (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Screening with mWRD (HIV) Observation":
  Elements."Screening with mWRD (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Screening with mWRD (HIV) */

/*
@dataElement: HIV.D.DE969 - Clinical assessment (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for with a clinical evaluation for tuberculosis (TB) based on national guidelines. Clinical assessment may be used as an eligibility evaluation for testing with LF-LAM or for empiric TB treatment.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical assessment (HIV)":
  exists "Clinical assessment (HIV) Condition"
    or exists "Clinical assessment (HIV) Observation"
define "Clinical assessment (HIV) Condition":
  Elements."Clinical assessment (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Clinical assessment (HIV) Observation":
  Elements."Clinical assessment (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Clinical assessment (HIV) */

/*
@dataElement: HIV.D.DE970 - Other TB screening algorithm (HIV)
@activity: HIV.D4 Screen for TB
@description: Client screened for tuberculosis (TB) with a different screening method not listed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other TB screening algorithm (HIV)":
  exists "Other TB screening algorithm (HIV) Condition"
    or exists "Other TB screening algorithm (HIV) Observation"
define "Other TB screening algorithm (HIV) Condition":
  Elements."Other TB screening algorithm (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Other TB screening algorithm (HIV) Observation":
  Elements."Other TB screening algorithm (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Other TB screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE973 - Symptoms of TB (HIV)
@activity: HIV.D4 Screen for TB
@description: Symptoms that may indicate TB disease in clients living with HIV, based on a clinical algorithm
*/
// TODO: Replace placeholder with relevant CQL logic
define "Symptoms of TB (HIV)":
  exists "Symptoms of TB (HIV) Observation"
define "Symptoms of TB (HIV) Observation":
  Elements."Symptoms of TB (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Symptoms of TB (HIV) */

/*
@dataElement: HIV.D.DE974 - Current cough (HIV)
@activity: HIV.D4 Screen for TB
@description: Client has a cough regardless of duration
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current cough (HIV)":
  exists "Current cough (HIV) Condition"
    or exists "Current cough (HIV) Observation"
define "Current cough (HIV) Condition":
  Elements."Current cough (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Current cough (HIV) Observation":
  Elements."Current cough (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Current cough (HIV) */

/*
@dataElement: HIV.D.DE975 - Prolonged cough >=2w (HIV)
@activity: HIV.D4 Screen for TB
@description: Client has a prolonged cough of 2 weeks or more
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prolonged cough >=2w (HIV)":
  exists "Prolonged cough >=2w (HIV) Condition"
    or exists "Prolonged cough >=2w (HIV) Observation"
define "Prolonged cough >=2w (HIV) Condition":
  Elements."Prolonged cough >=2w (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Prolonged cough >=2w (HIV) Observation":
  Elements."Prolonged cough >=2w (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Prolonged cough >=2w (HIV) */

/*
@dataElement: HIV.D.DE976 - Fever of 39 °C or greater (HIV)
@activity: HIV.D4 Screen for TB
@description: Client has a fever with a measured temperature of 102.2 °F/39 °C or greater
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fever of 39 °C or greater (HIV)":
  exists "Fever of 39 °C or greater (HIV) Condition"
    or exists "Fever of 39 °C or greater (HIV) Observation"
define "Fever of 39 °C or greater (HIV) Condition":
  Elements."Fever of 39 °C or greater (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Fever of 39 °C or greater (HIV) Observation":
  Elements."Fever of 39 °C or greater (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Fever of 39 °C or greater (HIV) */

/*
@dataElement: HIV.D.DE977 - Weight loss reported (HIV)
@activity: HIV.D4 Screen for TB
@description: Unexplained weight loss
*/
// TODO: Replace placeholder with relevant CQL logic
define "Weight loss reported (HIV)":
  exists "Weight loss reported (HIV) Condition"
    or exists "Weight loss reported (HIV) Observation"
define "Weight loss reported (HIV) Condition":
  Elements."Weight loss reported (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Weight loss reported (HIV) Observation":
  Elements."Weight loss reported (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Weight loss reported (HIV) */

/*
@dataElement: HIV.D.DE978 - Night sweats (HIV)
@activity: HIV.D4 Screen for TB
@description: Client reports experiencing night sweats
*/
// TODO: Replace placeholder with relevant CQL logic
define "Night sweats (HIV)":
  exists "Night sweats (HIV) Condition"
    or exists "Night sweats (HIV) Observation"
define "Night sweats (HIV) Condition":
  Elements."Night sweats (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Night sweats (HIV) Observation":
  Elements."Night sweats (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Night sweats (HIV) */

/*
@dataElement: HIV.D.DE979 - Poor weight gain (HIV)
@activity: HIV.D4 Screen for TB
@description: Client reports poor weight gain of child or infant or growth curve flattening or weight for age <-2 Z-scores.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Poor weight gain (HIV)":
  exists "Poor weight gain (HIV) Condition"
    or exists "Poor weight gain (HIV) Observation"
define "Poor weight gain (HIV) Condition":
  Elements."Poor weight gain (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Poor weight gain (HIV) Observation":
  Elements."Poor weight gain (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Poor weight gain (HIV) */

/*
@dataElement: HIV.D.DE980 - Reduced playfulness (HIV)
@activity: HIV.D4 Screen for TB
@description: Client reports reduced playfulness of child
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reduced playfulness (HIV)":
  exists "Reduced playfulness (HIV) Condition"
    or exists "Reduced playfulness (HIV) Observation"
define "Reduced playfulness (HIV) Condition":
  Elements."Reduced playfulness (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reduced playfulness (HIV) Observation":
  Elements."Reduced playfulness (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reduced playfulness (HIV) */

/*
@dataElement: HIV.D.DE981 - Chest pain (HIV)
@activity: HIV.D4 Screen for TB
@description: Client reports chest pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chest pain (HIV)":
  exists "Chest pain (HIV) Condition"
    or exists "Chest pain (HIV) Observation"
define "Chest pain (HIV) Condition":
  Elements."Chest pain (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Chest pain (HIV) Observation":
  Elements."Chest pain (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Chest pain (HIV) */

/*
@dataElement: HIV.D.DE982 - Haemoptysis (HIV)
@activity: HIV.D4 Screen for TB
@description: Client reports experiencing haemoptysis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haemoptysis (HIV)":
  exists "Haemoptysis (HIV) Condition"
    or exists "Haemoptysis (HIV) Observation"
define "Haemoptysis (HIV) Condition":
  Elements."Haemoptysis (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Haemoptysis (HIV) Observation":
  Elements."Haemoptysis (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Haemoptysis (HIV) */

/*
@dataElement: HIV.D.DE983 - Lethargy (HIV)
@activity: HIV.D4 Screen for TB
@description: Client reports lethargy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lethargy (HIV)":
  exists "Lethargy (HIV) Condition"
    or exists "Lethargy (HIV) Observation"
define "Lethargy (HIV) Condition":
  Elements."Lethargy (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Lethargy (HIV) Observation":
  Elements."Lethargy (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Lethargy (HIV) */

/*
@dataElement: HIV.D.DE984 - None (HIV)
@activity: HIV.D4 Screen for TB
@description: No symptoms of TB identified
*/
// TODO: Replace placeholder with relevant CQL logic
define "None (HIV)":
  exists "None (HIV) Condition"
    or exists "None (HIV) Observation"
define "None (HIV) Condition":
  Elements."None (HIV) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "None (HIV) Observation":
  Elements."None (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of None (HIV) */

/*
@dataElement: HIV.D.DE985 - History of contact with a person with TB (HIV)
@activity: HIV.D4 Screen for TB
@description: Client had a history of a contact with a person with TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "History of contact with a person with TB (HIV)":
  exists "History of contact with a person with TB (HIV) Observation"
define "History of contact with a person with TB (HIV) Observation":
  Elements."History of contact with a person with TB (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of History of contact with a person with TB (HIV) */

/*
@dataElement: HIV.D.DE1023 - TB prevention services accepted (HIV)
@activity: HIV.D21 Determine regimen and treatment options
@description: Indicates if the client accepts to be evaluated for TB infection and to take the treatment in case he/she is eligible
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB prevention services accepted (HIV)":
  exists "TB prevention services accepted (HIV) Observation"
define "TB prevention services accepted (HIV) Observation":
  Elements."TB prevention services accepted (HIV) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of TB prevention services accepted (HIV) */

/*
@dataElement: HIV.D.DE1026 - C reactive protein test result (HIV)
@activity: HIV.D4 Screen for TB
@description: Test result of the client's C reactive protein test result in mg/L
*/
// TODO: Replace placeholder with relevant CQL logic
define "C reactive protein test result (HIV)":
  Elements."C reactive protein test result (HIV)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "C reactive protein test result (HIV) Value":
  "C reactive protein test result (HIV)" O
  return O.value
/* End of C reactive protein test result (HIV) */

/*
@dataElement: HIV.E.DE113 - Key population member* (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Mother is a member of a key population which has an increased risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Key population member* (PMTCT)":
  exists "Key population member* (PMTCT) Observation"
define "Key population member* (PMTCT) Observation":
  Elements."Key population member* (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Key population member* (PMTCT) */

/*
@dataElement: HIV.E.DE155 - Signs of substantial risk of HIV infection (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Signs the client is at a substantial risk of HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Signs of substantial risk of HIV infection (PMTCT)":
  exists "Signs of substantial risk of HIV infection (PMTCT) Observation"
define "Signs of substantial risk of HIV infection (PMTCT) Observation":
  Elements."Signs of substantial risk of HIV infection (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Signs of substantial risk of HIV infection (PMTCT) */

/*
@dataElement: HIV.E.DE156 - No condom use during sex with more than one partner in the past 6 months (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Recent vaginal or anal sexual intercourse without a condom with more than one partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "No condom use during sex with more than one partner in the past 6 months (PMTCT)":
  exists "No condom use during sex with more than one partner in the past 6 months (PMTCT) Condition"
    or exists "No condom use during sex with more than one partner in the past 6 months (PMTCT) Observation"
define "No condom use during sex with more than one partner in the past 6 months (PMTCT) Condition":
  Elements."No condom use during sex with more than one partner in the past 6 months (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "No condom use during sex with more than one partner in the past 6 months (PMTCT) Observation":
  Elements."No condom use during sex with more than one partner in the past 6 months (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of No condom use during sex with more than one partner in the past 6 months (PMTCT) */

/*
@dataElement: HIV.E.DE157 - STI in the past 6 months (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: A recent history (in the last 6 months) of a sexually transmitted infection (STI) by laboratory testing or self-report of syndromic STI treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI in the past 6 months (PMTCT)":
  exists "STI in the past 6 months (PMTCT) Condition"
    or exists "STI in the past 6 months (PMTCT) Observation"
define "STI in the past 6 months (PMTCT) Condition":
  Elements."STI in the past 6 months (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "STI in the past 6 months (PMTCT) Observation":
  Elements."STI in the past 6 months (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of STI in the past 6 months (PMTCT) */

/*
@dataElement: HIV.E.DE158 - A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: A recent sex partner of the client had HIV risk factors
*/
// TODO: Replace placeholder with relevant CQL logic
define "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT)":
  exists "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Condition"
    or exists "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Observation"
define "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Condition":
  Elements."A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Observation":
  Elements."A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) */

/*
@dataElement: HIV.E.DE159 - PrEP requested by client (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Client is requesting PrEP, reflecting a decision-making process has already taken place and suggesting of substantial risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP requested by client (PMTCT)":
  exists "PrEP requested by client (PMTCT) Condition"
    or exists "PrEP requested by client (PMTCT) Observation"
define "PrEP requested by client (PMTCT) Condition":
  Elements."PrEP requested by client (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "PrEP requested by client (PMTCT) Observation":
  Elements."PrEP requested by client (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of PrEP requested by client (PMTCT) */

/*
@dataElement: HIV.E.DE160 - Serodiscordant partner (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Mother's HIV status is different from a current partner's HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Serodiscordant partner (PMTCT)":
  exists "Serodiscordant partner (PMTCT) Observation"
define "Serodiscordant partner (PMTCT) Observation":
  Elements."Serodiscordant partner (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Serodiscordant partner (PMTCT) */

/*
@dataElement: HIV.E.DE180 - EID sample number (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis (EID) sample number
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID sample number (PMTCT)":
  exists "EID sample number (PMTCT) Observation"
define "EID sample number (PMTCT) Observation":
  Elements."EID sample number (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID sample number (PMTCT) */

/*
@dataElement: HIV.E.DE181 - EID sample 1 (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: First sample used to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID sample 1 (PMTCT)":
  exists "EID sample 1 (PMTCT) Condition"
    or exists "EID sample 1 (PMTCT) Observation"
define "EID sample 1 (PMTCT) Condition":
  Elements."EID sample 1 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "EID sample 1 (PMTCT) Observation":
  Elements."EID sample 1 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID sample 1 (PMTCT) */

/*
@dataElement: HIV.E.DE182 - EID sample 2 (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Second sample used to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID sample 2 (PMTCT)":
  exists "EID sample 2 (PMTCT) Condition"
    or exists "EID sample 2 (PMTCT) Observation"
define "EID sample 2 (PMTCT) Condition":
  Elements."EID sample 2 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "EID sample 2 (PMTCT) Observation":
  Elements."EID sample 2 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID sample 2 (PMTCT) */

/*
@dataElement: HIV.E.DE183 - EID test number (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis (EID) HIV test number using the same sample
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number (PMTCT)":
  exists "EID test number (PMTCT) Observation"
define "EID test number (PMTCT) Observation":
  Elements."EID test number (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID test number (PMTCT) */

/*
@dataElement: HIV.E.DE184 - EID test number 1 (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: First test on a sample to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 1 (PMTCT)":
  exists "EID test number 1 (PMTCT) Condition"
    or exists "EID test number 1 (PMTCT) Observation"
define "EID test number 1 (PMTCT) Condition":
  Elements."EID test number 1 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "EID test number 1 (PMTCT) Observation":
  Elements."EID test number 1 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID test number 1 (PMTCT) */

/*
@dataElement: HIV.E.DE185 - EID test number 2 (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Second test on a sample to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 2 (PMTCT)":
  exists "EID test number 2 (PMTCT) Condition"
    or exists "EID test number 2 (PMTCT) Observation"
define "EID test number 2 (PMTCT) Condition":
  Elements."EID test number 2 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "EID test number 2 (PMTCT) Observation":
  Elements."EID test number 2 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID test number 2 (PMTCT) */

/*
@dataElement: HIV.E.DE186 - EID test number 1 test result (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis test number 1 test result
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 1 test result (PMTCT)":
  exists "EID test number 1 test result (PMTCT) Observation"
define "EID test number 1 test result (PMTCT) Observation":
  Elements."EID test number 1 test result (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID test number 1 test result (PMTCT) */

/*
@dataElement: HIV.E.DE187 - Positive (PMTCT|EDE187)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Positive HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (PMTCT|EDE187)":
  exists "Positive (PMTCT|EDE187) Condition"
    or exists "Positive (PMTCT|EDE187) Observation"
define "Positive (PMTCT|EDE187) Condition":
  Elements."Positive (PMTCT|EDE187) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Positive (PMTCT|EDE187) Observation":
  Elements."Positive (PMTCT|EDE187) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Positive (PMTCT|EDE187) */

/*
@dataElement: HIV.E.DE188 - Negative (PMTCT|EDE188)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Negative HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (PMTCT|EDE188)":
  exists "Negative (PMTCT|EDE188) Condition"
    or exists "Negative (PMTCT|EDE188) Observation"
define "Negative (PMTCT|EDE188) Condition":
  Elements."Negative (PMTCT|EDE188) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Negative (PMTCT|EDE188) Observation":
  Elements."Negative (PMTCT|EDE188) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Negative (PMTCT|EDE188) */

/*
@dataElement: HIV.E.DE189 - Indeterminate (PMTCT|EDE189)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Indeterminate HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (PMTCT|EDE189)":
  exists "Indeterminate (PMTCT|EDE189) Condition"
    or exists "Indeterminate (PMTCT|EDE189) Observation"
define "Indeterminate (PMTCT|EDE189) Condition":
  Elements."Indeterminate (PMTCT|EDE189) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Indeterminate (PMTCT|EDE189) Observation":
  Elements."Indeterminate (PMTCT|EDE189) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Indeterminate (PMTCT|EDE189) */

/*
@dataElement: HIV.E.DE190 - EID test number 2 test result (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis test number 2 test result
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 2 test result (PMTCT)":
  exists "EID test number 2 test result (PMTCT) Observation"
define "EID test number 2 test result (PMTCT) Observation":
  Elements."EID test number 2 test result (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of EID test number 2 test result (PMTCT) */

/*
@dataElement: HIV.E.DE191 - Positive (PMTCT|EDE191)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Positive HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (PMTCT|EDE191)":
  exists "Positive (PMTCT|EDE191) Condition"
    or exists "Positive (PMTCT|EDE191) Observation"
define "Positive (PMTCT|EDE191) Condition":
  Elements."Positive (PMTCT|EDE191) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Positive (PMTCT|EDE191) Observation":
  Elements."Positive (PMTCT|EDE191) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Positive (PMTCT|EDE191) */

/*
@dataElement: HIV.E.DE192 - Negative (PMTCT|EDE192)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Negative HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (PMTCT|EDE192)":
  exists "Negative (PMTCT|EDE192) Condition"
    or exists "Negative (PMTCT|EDE192) Observation"
define "Negative (PMTCT|EDE192) Condition":
  Elements."Negative (PMTCT|EDE192) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Negative (PMTCT|EDE192) Observation":
  Elements."Negative (PMTCT|EDE192) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Negative (PMTCT|EDE192) */

/*
@dataElement: HIV.E.DE193 - Indeterminate (PMTCT|EDE193)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Indeterminate HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (PMTCT|EDE193)":
  exists "Indeterminate (PMTCT|EDE193) Condition"
    or exists "Indeterminate (PMTCT|EDE193) Observation"
define "Indeterminate (PMTCT|EDE193) Condition":
  Elements."Indeterminate (PMTCT|EDE193) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Indeterminate (PMTCT|EDE193) Observation":
  Elements."Indeterminate (PMTCT|EDE193) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Indeterminate (PMTCT|EDE193) */

/*
@dataElement: HIV.E.DE194 - Assay number in testing strategy (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The number of the assay (test kit) in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay number in testing strategy (PMTCT)":
  exists "Assay number in testing strategy (PMTCT) Observation"
define "Assay number in testing strategy (PMTCT) Observation":
  Elements."Assay number in testing strategy (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay number in testing strategy (PMTCT) */

/*
@dataElement: HIV.E.DE195 - Assay 0 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: A community outreach test-for-triage or self-test which is not included in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 0 (PMTCT)":
  exists "Assay 0 (PMTCT) Condition"
    or exists "Assay 0 (PMTCT) Observation"
define "Assay 0 (PMTCT) Condition":
  Elements."Assay 0 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 0 (PMTCT) Observation":
  Elements."Assay 0 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 0 (PMTCT) */

/*
@dataElement: HIV.E.DE196 - Assay 1 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 (PMTCT)":
  exists "Assay 1 (PMTCT) Condition"
    or exists "Assay 1 (PMTCT) Observation"
define "Assay 1 (PMTCT) Condition":
  Elements."Assay 1 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 1 (PMTCT) Observation":
  Elements."Assay 1 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 1 (PMTCT) */

/*
@dataElement: HIV.E.DE197 - Assay 2 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The second test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 2 (PMTCT)":
  exists "Assay 2 (PMTCT) Condition"
    or exists "Assay 2 (PMTCT) Observation"
define "Assay 2 (PMTCT) Condition":
  Elements."Assay 2 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 2 (PMTCT) Observation":
  Elements."Assay 2 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 2 (PMTCT) */

/*
@dataElement: HIV.E.DE198 - Assay 3 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The third test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 3 (PMTCT)":
  exists "Assay 3 (PMTCT) Condition"
    or exists "Assay 3 (PMTCT) Observation"
define "Assay 3 (PMTCT) Condition":
  Elements."Assay 3 (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 3 (PMTCT) Observation":
  Elements."Assay 3 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 3 (PMTCT) */

/*
@dataElement: HIV.E.DE199 - Assay 1 repeated (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 repeated (PMTCT)":
  exists "Assay 1 repeated (PMTCT) Condition"
    or exists "Assay 1 repeated (PMTCT) Observation"
define "Assay 1 repeated (PMTCT) Condition":
  Elements."Assay 1 repeated (PMTCT) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Assay 1 repeated (PMTCT) Observation":
  Elements."Assay 1 repeated (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Assay 1 repeated (PMTCT) */

/*
@dataElement: HIV.E.DE200 - Test result of HIV assay 1 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 (PMTCT)":
  exists "Test result of HIV assay 1 (PMTCT) Observation"
define "Test result of HIV assay 1 (PMTCT) Observation":
  Elements."Test result of HIV assay 1 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 1 (PMTCT) */

/*
@dataElement: HIV.E.DE201 - Reactive (PMTCT|EDE201)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE201)":
  exists "Reactive (PMTCT|EDE201) Condition"
    or exists "Reactive (PMTCT|EDE201) Observation"
define "Reactive (PMTCT|EDE201) Condition":
  Elements."Reactive (PMTCT|EDE201) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (PMTCT|EDE201) Observation":
  Elements."Reactive (PMTCT|EDE201) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (PMTCT|EDE201) */

/*
@dataElement: HIV.E.DE202 - Non-reactive (PMTCT|EDE202)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE202)":
  exists "Non-reactive (PMTCT|EDE202) Condition"
    or exists "Non-reactive (PMTCT|EDE202) Observation"
define "Non-reactive (PMTCT|EDE202) Condition":
  Elements."Non-reactive (PMTCT|EDE202) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (PMTCT|EDE202) Observation":
  Elements."Non-reactive (PMTCT|EDE202) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (PMTCT|EDE202) */

/*
@dataElement: HIV.E.DE203 - Invalid (PMTCT|EDE203)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE203)":
  exists "Invalid (PMTCT|EDE203) Condition"
    or exists "Invalid (PMTCT|EDE203) Observation"
define "Invalid (PMTCT|EDE203) Condition":
  Elements."Invalid (PMTCT|EDE203) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (PMTCT|EDE203) Observation":
  Elements."Invalid (PMTCT|EDE203) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (PMTCT|EDE203) */

/*
@dataElement: HIV.E.DE204 - Test result of HIV assay 2 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the second HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 2 (PMTCT)":
  exists "Test result of HIV assay 2 (PMTCT) Observation"
define "Test result of HIV assay 2 (PMTCT) Observation":
  Elements."Test result of HIV assay 2 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 2 (PMTCT) */

/*
@dataElement: HIV.E.DE205 - Reactive (PMTCT|EDE205)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE205)":
  exists "Reactive (PMTCT|EDE205) Condition"
    or exists "Reactive (PMTCT|EDE205) Observation"
define "Reactive (PMTCT|EDE205) Condition":
  Elements."Reactive (PMTCT|EDE205) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (PMTCT|EDE205) Observation":
  Elements."Reactive (PMTCT|EDE205) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (PMTCT|EDE205) */

/*
@dataElement: HIV.E.DE206 - Non-reactive (PMTCT|EDE206)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE206)":
  exists "Non-reactive (PMTCT|EDE206) Condition"
    or exists "Non-reactive (PMTCT|EDE206) Observation"
define "Non-reactive (PMTCT|EDE206) Condition":
  Elements."Non-reactive (PMTCT|EDE206) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (PMTCT|EDE206) Observation":
  Elements."Non-reactive (PMTCT|EDE206) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (PMTCT|EDE206) */

/*
@dataElement: HIV.E.DE207 - Invalid (PMTCT|EDE207)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE207)":
  exists "Invalid (PMTCT|EDE207) Condition"
    or exists "Invalid (PMTCT|EDE207) Observation"
define "Invalid (PMTCT|EDE207) Condition":
  Elements."Invalid (PMTCT|EDE207) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (PMTCT|EDE207) Observation":
  Elements."Invalid (PMTCT|EDE207) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (PMTCT|EDE207) */

/*
@dataElement: HIV.E.DE208 - Test result of HIV assay 3 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the third HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 3 (PMTCT)":
  exists "Test result of HIV assay 3 (PMTCT) Observation"
define "Test result of HIV assay 3 (PMTCT) Observation":
  Elements."Test result of HIV assay 3 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 3 (PMTCT) */

/*
@dataElement: HIV.E.DE209 - Reactive (PMTCT|EDE209)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE209)":
  exists "Reactive (PMTCT|EDE209) Condition"
    or exists "Reactive (PMTCT|EDE209) Observation"
define "Reactive (PMTCT|EDE209) Condition":
  Elements."Reactive (PMTCT|EDE209) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (PMTCT|EDE209) Observation":
  Elements."Reactive (PMTCT|EDE209) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (PMTCT|EDE209) */

/*
@dataElement: HIV.E.DE210 - Non-reactive (PMTCT|EDE210)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE210)":
  exists "Non-reactive (PMTCT|EDE210) Condition"
    or exists "Non-reactive (PMTCT|EDE210) Observation"
define "Non-reactive (PMTCT|EDE210) Condition":
  Elements."Non-reactive (PMTCT|EDE210) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (PMTCT|EDE210) Observation":
  Elements."Non-reactive (PMTCT|EDE210) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (PMTCT|EDE210) */

/*
@dataElement: HIV.E.DE211 - Invalid (PMTCT|EDE211)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE211)":
  exists "Invalid (PMTCT|EDE211) Condition"
    or exists "Invalid (PMTCT|EDE211) Observation"
define "Invalid (PMTCT|EDE211) Condition":
  Elements."Invalid (PMTCT|EDE211) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (PMTCT|EDE211) Observation":
  Elements."Invalid (PMTCT|EDE211) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (PMTCT|EDE211) */

/*
@dataElement: HIV.E.DE212 - Test result of HIV assay 1 repeated (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the repeated first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 repeated (PMTCT)":
  exists "Test result of HIV assay 1 repeated (PMTCT) Observation"
define "Test result of HIV assay 1 repeated (PMTCT) Observation":
  Elements."Test result of HIV assay 1 repeated (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 1 repeated (PMTCT) */

/*
@dataElement: HIV.E.DE213 - Reactive (PMTCT|EDE213)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE213)":
  exists "Reactive (PMTCT|EDE213) Condition"
    or exists "Reactive (PMTCT|EDE213) Observation"
define "Reactive (PMTCT|EDE213) Condition":
  Elements."Reactive (PMTCT|EDE213) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (PMTCT|EDE213) Observation":
  Elements."Reactive (PMTCT|EDE213) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (PMTCT|EDE213) */

/*
@dataElement: HIV.E.DE214 - Non-reactive (PMTCT|EDE214)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE214)":
  exists "Non-reactive (PMTCT|EDE214) Condition"
    or exists "Non-reactive (PMTCT|EDE214) Observation"
define "Non-reactive (PMTCT|EDE214) Condition":
  Elements."Non-reactive (PMTCT|EDE214) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (PMTCT|EDE214) Observation":
  Elements."Non-reactive (PMTCT|EDE214) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (PMTCT|EDE214) */

/*
@dataElement: HIV.E.DE215 - Invalid (PMTCT|EDE215)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE215)":
  exists "Invalid (PMTCT|EDE215) Condition"
    or exists "Invalid (PMTCT|EDE215) Observation"
define "Invalid (PMTCT|EDE215) Condition":
  Elements."Invalid (PMTCT|EDE215) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (PMTCT|EDE215) Observation":
  Elements."Invalid (PMTCT|EDE215) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (PMTCT|EDE215) */

/*
@dataElement: HIV.E.DE216 - Test result of syphilis assay 1 (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of syphilis assay 1 (PMTCT)":
  exists "Test result of syphilis assay 1 (PMTCT) Observation"
define "Test result of syphilis assay 1 (PMTCT) Observation":
  Elements."Test result of syphilis assay 1 (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of syphilis assay 1 (PMTCT) */

/*
@dataElement: HIV.E.DE217 - Reactive (PMTCT|EDE217)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE217)":
  exists "Reactive (PMTCT|EDE217) Condition"
    or exists "Reactive (PMTCT|EDE217) Observation"
define "Reactive (PMTCT|EDE217) Condition":
  Elements."Reactive (PMTCT|EDE217) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (PMTCT|EDE217) Observation":
  Elements."Reactive (PMTCT|EDE217) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (PMTCT|EDE217) */

/*
@dataElement: HIV.E.DE218 - Non-reactive (PMTCT|EDE218)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE218)":
  exists "Non-reactive (PMTCT|EDE218) Condition"
    or exists "Non-reactive (PMTCT|EDE218) Observation"
define "Non-reactive (PMTCT|EDE218) Condition":
  Elements."Non-reactive (PMTCT|EDE218) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (PMTCT|EDE218) Observation":
  Elements."Non-reactive (PMTCT|EDE218) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (PMTCT|EDE218) */

/*
@dataElement: HIV.E.DE219 - Invalid (PMTCT|EDE219)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE219)":
  exists "Invalid (PMTCT|EDE219) Condition"
    or exists "Invalid (PMTCT|EDE219) Observation"
define "Invalid (PMTCT|EDE219) Condition":
  Elements."Invalid (PMTCT|EDE219) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (PMTCT|EDE219) Observation":
  Elements."Invalid (PMTCT|EDE219) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (PMTCT|EDE219) */

/*
@dataElement: HIV.E.DE220 - Test result of syphilis assay 1 repeated (PMTCT)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of syphilis assay 1 repeated (PMTCT)":
  exists "Test result of syphilis assay 1 repeated (PMTCT) Observation"
define "Test result of syphilis assay 1 repeated (PMTCT) Observation":
  Elements."Test result of syphilis assay 1 repeated (PMTCT) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of syphilis assay 1 repeated (PMTCT) */

/*
@dataElement: HIV.E.DE221 - Reactive (PMTCT|EDE221)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE221)":
  exists "Reactive (PMTCT|EDE221) Condition"
    or exists "Reactive (PMTCT|EDE221) Observation"
define "Reactive (PMTCT|EDE221) Condition":
  Elements."Reactive (PMTCT|EDE221) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Reactive (PMTCT|EDE221) Observation":
  Elements."Reactive (PMTCT|EDE221) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Reactive (PMTCT|EDE221) */

/*
@dataElement: HIV.E.DE222 - Non-reactive (PMTCT|EDE222)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE222)":
  exists "Non-reactive (PMTCT|EDE222) Condition"
    or exists "Non-reactive (PMTCT|EDE222) Observation"
define "Non-reactive (PMTCT|EDE222) Condition":
  Elements."Non-reactive (PMTCT|EDE222) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Non-reactive (PMTCT|EDE222) Observation":
  Elements."Non-reactive (PMTCT|EDE222) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Non-reactive (PMTCT|EDE222) */

/*
@dataElement: HIV.E.DE223 - Invalid (PMTCT|EDE223)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE223)":
  exists "Invalid (PMTCT|EDE223) Condition"
    or exists "Invalid (PMTCT|EDE223) Observation"
define "Invalid (PMTCT|EDE223) Condition":
  Elements."Invalid (PMTCT|EDE223) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Invalid (PMTCT|EDE223) Observation":
  Elements."Invalid (PMTCT|EDE223) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Invalid (PMTCT|EDE223) */

/*
@dataElement: HIV.G.DE1 - CD4 count (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: CD4 cell count in cells/mm^3
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count (Diagnostics)":
  Elements."CD4 count (Diagnostics)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "CD4 count (Diagnostics) Value":
  "CD4 count (Diagnostics)" O
  return O.value
/* End of CD4 count (Diagnostics) */

/*
@dataElement: HIV.H.DE34 - HIV status of partner or contact (Follow)
@activity: HIV.B6 Capture or update client history
@description: HIV status of the partner or contact given by the index case
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV status of partner or contact (Follow)":
  exists "HIV status of partner or contact (Follow) Observation"
define "HIV status of partner or contact (Follow) Observation":
  Elements."HIV status of partner or contact (Follow) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV status of partner or contact (Follow) */

/*
@dataElement: HIV.H.DE35 - Already knew positive (Follow)
@activity: HIV.B6 Capture or update client history
@description: The partner or contact of the index case already knew they are HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Already knew positive (Follow)":
  exists "Already knew positive (Follow) Condition"
    or exists "Already knew positive (Follow) Observation"
define "Already knew positive (Follow) Condition":
  Elements."Already knew positive (Follow) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Already knew positive (Follow) Observation":
  Elements."Already knew positive (Follow) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Already knew positive (Follow) */

/*
@dataElement: HIV.H.DE36 - Newly diagnosed (Follow)
@activity: HIV.B6 Capture or update client history
@description: The partner or contact of the index case is newly diagnosed as HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Newly diagnosed (Follow)":
  exists "Newly diagnosed (Follow) Condition"
    or exists "Newly diagnosed (Follow) Observation"
define "Newly diagnosed (Follow) Condition":
  Elements."Newly diagnosed (Follow) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Newly diagnosed (Follow) Observation":
  Elements."Newly diagnosed (Follow) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Newly diagnosed (Follow) */

/*
@dataElement: HIV.H.DE37 - Negative (Follow)
@activity: HIV.B6 Capture or update client history
@description: The partner or contact of the index case is newly diagnosed is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Follow)":
  exists "Negative (Follow) Condition"
    or exists "Negative (Follow) Observation"
define "Negative (Follow) Condition":
  Elements."Negative (Follow) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Negative (Follow) Observation":
  Elements."Negative (Follow) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Negative (Follow) */

/*
@dataElement: HIV.SRV.DE5 - HIV clinical stage (Surveillance)
@activity: HIV.D8 Capture or update client history
@description: WHO clinical stage of client based on signs and symptoms. WHO clinical staging is a way to categorize HIV disease severity based on new or recurrent clinical events. There are 4 WHO clinical stages that range from mild symptoms (WHO clinical stage 1) to severe symptoms (WHO clinical stage 4).
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV clinical stage (Surveillance)":
  exists "HIV clinical stage (Surveillance) Observation"
define "HIV clinical stage (Surveillance) Observation":
  Elements."HIV clinical stage (Surveillance) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV clinical stage (Surveillance) */

/*
@dataElement: HIV.SRV.DE8 - CD4 count (Surveillance)
@activity: HIV.D20 Diagnostics
@description: CD4 cell count in cells/mm^3
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count (Surveillance)":
  Elements."CD4 count (Surveillance)" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
define "CD4 count (Surveillance) Value":
  "CD4 count (Surveillance)" O
  return O.value
/* End of CD4 count (Surveillance) */

/*
@dataElement: HIV.SRV.DE21 - Test result of HIV assay 1 (Surveillance)
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 (Surveillance)":
  exists "Test result of HIV assay 1 (Surveillance) Observation"
define "Test result of HIV assay 1 (Surveillance) Observation":
  Elements."Test result of HIV assay 1 (Surveillance) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Test result of HIV assay 1 (Surveillance) */

/*
@dataElement: HIV.Config.DE6 - Malaria-endemic setting (Configuration)
@activity: HIV.Configuration
@description: Whether the setting is a malaria-endemic setting
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria-endemic setting (Configuration)":
  exists "Malaria-endemic setting (Configuration) Observation"
define "Malaria-endemic setting (Configuration) Observation":
  Elements."Malaria-endemic setting (Configuration) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Malaria-endemic setting (Configuration) */

/*
@dataElement: HIV.Config.DE12 - HIV burden of the setting (Configuration)
@activity: HIV.Configuration
@description: HIV burden of the setting (high or low) based on the national HIV prevalence or where the HIV prevalence and/or incidence in a geographical setting is higher than national prevalence and, therefore, needs priority in the HIV response
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV burden of the setting (Configuration)":
  exists "HIV burden of the setting (Configuration) Observation"
define "HIV burden of the setting (Configuration) Observation":
  Elements."HIV burden of the setting (Configuration) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HIV burden of the setting (Configuration) */

/*
@dataElement: HIV.Config.DE13 - High HIV burden setting (Configuration)
@activity: HIV.Configuration
@description: Settings with >5% national HIV prevalence and subpopulations and geographic settings where HIV prevalence and/or incidence is higher than nationally.
*/
// TODO: Replace placeholder with relevant CQL logic
define "High HIV burden setting (Configuration)":
  exists "High HIV burden setting (Configuration) Condition"
    or exists "High HIV burden setting (Configuration) Observation"
define "High HIV burden setting (Configuration) Condition":
  Elements."High HIV burden setting (Configuration) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "High HIV burden setting (Configuration) Observation":
  Elements."High HIV burden setting (Configuration) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of High HIV burden setting (Configuration) */

/*
@dataElement: HIV.Config.DE14 - Low HIV burden setting (Configuration)
@activity: HIV.Configuration
@description: Settings with <5% HIV national prevalence but where certain populations (primarily key populations and their partners) and geographic settings may have higher HIV prevalence and/or incidence than nationally and, therefore, need priority in the HIV response
*/
// TODO: Replace placeholder with relevant CQL logic
define "Low HIV burden setting (Configuration)":
  exists "Low HIV burden setting (Configuration) Condition"
    or exists "Low HIV burden setting (Configuration) Observation"
define "Low HIV burden setting (Configuration) Condition":
  Elements."Low HIV burden setting (Configuration) Condition" C
    where C.prevalenceInterval() starts on or before Today
define "Low HIV burden setting (Configuration) Observation":
  Elements."Low HIV burden setting (Configuration) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of Low HIV burden setting (Configuration) */

/*
@dataElement: HIV.Config.DE15 - HPV DNA testing operational at the health facility (Configuration)
@activity: HIV.Configuration
@description: Is HPV DNA testing operational at the health facility for cervical cancer screening?
*/
// TODO: Replace placeholder with relevant CQL logic
define "HPV DNA testing operational at the health facility (Configuration)":
  exists "HPV DNA testing operational at the health facility (Configuration) Observation"
define "HPV DNA testing operational at the health facility (Configuration) Observation":
  Elements."HPV DNA testing operational at the health facility (Configuration) Observation" O
    where O.encounter.references(EncounterId)
      or O.effective.toInterval() starts on or before Today
/* End of HPV DNA testing operational at the health facility (Configuration) */


/*
 * Custom elements and logic for use DT and IND CQL Libraries
 */