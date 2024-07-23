library HIVIndicatorElements

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRCommon called FC
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include HIVConcepts called Concepts
include HIVCommon called Common
include HIVElements called Elements

parameter "Measurement Period" Interval<Date> default Interval[@2024-01-01, @2024-12-30]

context Patient

/**
 * HIV Elements
 */

// Auto-generated Elements from DAK Data Dictionary
//   Entries based on DAK Data Dictionary for Data Elements marked as used
//   in at least one Decision Support Table or Aggregate Indicator

/*
@dataElement: HIV.B.DE5 - Referred through partner services (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Client reported coming to the facility after receiving a provider-assisted referral or patient referral from a contact or partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "Referred through partner services (HTS)":
  exists "Referred through partner services (HTS) Observation"
define "Referred through partner services (HTS) Observation":
  Elements."Referred through partner services (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Referred through partner services (HTS) */

/*
@dataElement: HIV.B.DE6 - Partner or contact of an index case (HTS)
@activity: HIV.B1 Determine reason for visit
@description: The client is a contact or partner of a person diagnosed with HIV (an index case)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner or contact of an index case (HTS)":
  exists "Partner or contact of an index case (HTS) Condition"
    or exists "Partner or contact of an index case (HTS) Observation"
define "Partner or contact of an index case (HTS) Condition":
  Elements."Partner or contact of an index case (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Partner or contact of an index case (HTS) Observation":
  Elements."Partner or contact of an index case (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Partner or contact of an index case (HTS) */

/*
@dataElement: HIV.B.DE7 - Partner or contact of an HIV testing client non-index case (HTS)
@activity: HIV.B1 Determine reason for visit
@description: The client is a contact or partner identified through partner or social network services, but is not known to be a partner of an index-case
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner or contact of an HIV testing client non-index case (HTS)":
  exists "Partner or contact of an HIV testing client non-index case (HTS) Condition"
    or exists "Partner or contact of an HIV testing client non-index case (HTS) Observation"
define "Partner or contact of an HIV testing client non-index case (HTS) Condition":
  Elements."Partner or contact of an HIV testing client non-index case (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Partner or contact of an HIV testing client non-index case (HTS) Observation":
  Elements."Partner or contact of an HIV testing client non-index case (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Partner or contact of an HIV testing client non-index case (HTS) */

/*
@dataElement: HIV.B.DE8 - Type of contact or partner for partner services (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Client's relationship to the person that referred the client for partner services or family services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of contact or partner for partner services (HTS)":
  exists "Type of contact or partner for partner services (HTS) Observation"
define "Type of contact or partner for partner services (HTS) Observation":
  Elements."Type of contact or partner for partner services (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Type of contact or partner for partner services (HTS) */

/*
@dataElement: HIV.B.DE9 - Biological child (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Client is the biological child of the person that referred the client for family services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Biological child (HTS)":
  exists "Biological child (HTS) Condition"
    or exists "Biological child (HTS) Observation"
define "Biological child (HTS) Condition":
  Elements."Biological child (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Biological child (HTS) Observation":
  Elements."Biological child (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Biological child (HTS) */

/*
@dataElement: HIV.B.DE10 - Drug-injecting partner (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Client is a drug-injecting partner of the person that referred the client for partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug-injecting partner (HTS)":
  exists "Drug-injecting partner (HTS) Condition"
    or exists "Drug-injecting partner (HTS) Observation"
define "Drug-injecting partner (HTS) Condition":
  Elements."Drug-injecting partner (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Drug-injecting partner (HTS) Observation":
  Elements."Drug-injecting partner (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Drug-injecting partner (HTS) */

/*
@dataElement: HIV.B.DE11 - Sexual partner (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Client is a sexual partner of the person that referred the client for partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual partner (HTS)":
  exists "Sexual partner (HTS) Condition"
    or exists "Sexual partner (HTS) Observation"
define "Sexual partner (HTS) Condition":
  Elements."Sexual partner (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Sexual partner (HTS) Observation":
  Elements."Sexual partner (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Sexual partner (HTS) */

/*
@dataElement: HIV.B.DE12 - Social contact (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Client is a social contact of the person that referred the client for social-network services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Social contact (HTS)":
  exists "Social contact (HTS) Condition"
    or exists "Social contact (HTS) Observation"
define "Social contact (HTS) Condition":
  Elements."Social contact (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Social contact (HTS) Observation":
  Elements."Social contact (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Social contact (HTS) */

/*
@dataElement: HIV.B.DE15 - Testing entry point (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Whether testing is happening in the community or at a facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Testing entry point (HTS)":
  exists "Testing entry point (HTS) Observation"
define "Testing entry point (HTS) Observation":
  Elements."Testing entry point (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Testing entry point (HTS) */

/*
@dataElement: HIV.B.DE16 - Community-level testing (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Testing is happening in the community, which includes mobile testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Community-level testing (HTS)":
  exists "Community-level testing (HTS) Condition"
    or exists "Community-level testing (HTS) Observation"
define "Community-level testing (HTS) Condition":
  Elements."Community-level testing (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Community-level testing (HTS) Observation":
  Elements."Community-level testing (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Community-level testing (HTS) */

/*
@dataElement: HIV.B.DE17 - Facility-level testing (HTS)
@activity: HIV.B1 Determine reason for visit
@description: Testing is happening at a facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Facility-level testing (HTS)":
  exists "Facility-level testing (HTS) Condition"
    or exists "Facility-level testing (HTS) Observation"
define "Facility-level testing (HTS) Condition":
  Elements."Facility-level testing (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Facility-level testing (HTS) Observation":
  Elements."Facility-level testing (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Facility-level testing (HTS) */

/*
@dataElement: HIV.B.DE32 - Breastfeeding (HTS)
@activity: HIV.B6 Capture or update client history
@description: Infant is being breastfed by mother
*/
// TODO: Replace placeholder with relevant CQL logic
define "Breastfeeding (HTS)":
  exists "Breastfeeding (HTS) Observation"
define "Breastfeeding (HTS) Observation":
  Elements."Breastfeeding (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Breastfeeding (HTS) */

/*
@dataElement: HIV.B.DE60 - Date HIV test results returned (HTS)
@activity: HIV.B6 Capture or update client history
@description: Date HIV test result returned to client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date HIV test results returned (HTS)":
  Elements."Date HIV test results returned (HTS)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date HIV test results returned (HTS) Value":
  "Date HIV test results returned (HTS)" O
  return O.value
/* End of Date HIV test results returned (HTS) */

/*
@dataElement: HIV.B.DE61 - HIV exposure type* (HTS)
@activity: HIV.B6 Capture or update client history
@description: Ways in which the client was exposed to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV exposure type* (HTS)":
  exists "HIV exposure type* (HTS) Observation"
define "HIV exposure type* (HTS) Observation":
  Elements."HIV exposure type* (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV exposure type* (HTS) */

/*
@dataElement: HIV.B.DE62 - Occupational (HTS)
@activity: HIV.B6 Capture or update client history
@description: Occupational exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Occupational (HTS)":
  exists "Occupational (HTS) Condition"
    or exists "Occupational (HTS) Observation"
define "Occupational (HTS) Condition":
  Elements."Occupational (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Occupational (HTS) Observation":
  Elements."Occupational (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Occupational (HTS) */

/*
@dataElement: HIV.B.DE63 - Non-occupational violent (HTS)
@activity: HIV.B6 Capture or update client history
@description: Non-occupational violent exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-occupational violent (HTS)":
  exists "Non-occupational violent (HTS) Condition"
    or exists "Non-occupational violent (HTS) Observation"
define "Non-occupational violent (HTS) Condition":
  Elements."Non-occupational violent (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Non-occupational violent (HTS) Observation":
  Elements."Non-occupational violent (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Non-occupational violent (HTS) */

/*
@dataElement: HIV.B.DE64 - Non-occupational consensual sex (HTS)
@activity: HIV.B6 Capture or update client history
@description: Exposure to HIV through non-occupational consensual sex
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-occupational consensual sex (HTS)":
  exists "Non-occupational consensual sex (HTS) Condition"
    or exists "Non-occupational consensual sex (HTS) Observation"
define "Non-occupational consensual sex (HTS) Condition":
  Elements."Non-occupational consensual sex (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Non-occupational consensual sex (HTS) Observation":
  Elements."Non-occupational consensual sex (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Non-occupational consensual sex (HTS) */

/*
@dataElement: HIV.B.DE110 - HIV test date (HTS)
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Date of the HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test date (HTS)":
  Elements."HIV test date (HTS)" O
    where O.effective.toInterval() during "Measurement Period"
define "HIV test date (HTS) Value":
  "HIV test date (HTS)" O
  return O.value
/* End of HIV test date (HTS) */

/*
@dataElement: HIV.B.DE121 - Probable route of transmission* (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route(s) of transmission of HIV to client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Probable route of transmission* (HTS)":
  exists "Probable route of transmission* (HTS) Observation"
define "Probable route of transmission* (HTS) Observation":
  Elements."Probable route of transmission* (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Probable route of transmission* (HTS) */

/*
@dataElement: HIV.B.DE122 - Heterosexual sex (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through heterosexual sex
*/
// TODO: Replace placeholder with relevant CQL logic
define "Heterosexual sex (HTS)":
  exists "Heterosexual sex (HTS) Condition"
    or exists "Heterosexual sex (HTS) Observation"
define "Heterosexual sex (HTS) Condition":
  Elements."Heterosexual sex (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Heterosexual sex (HTS) Observation":
  Elements."Heterosexual sex (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Heterosexual sex (HTS) */

/*
@dataElement: HIV.B.DE123 - Sex between men (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through sex between men
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sex between men (HTS)":
  exists "Sex between men (HTS) Condition"
    or exists "Sex between men (HTS) Observation"
define "Sex between men (HTS) Condition":
  Elements."Sex between men (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Sex between men (HTS) Observation":
  Elements."Sex between men (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Sex between men (HTS) */

/*
@dataElement: HIV.B.DE124 - Unprotected intercourse during sex work (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through unprotected intercourse during sex work
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unprotected intercourse during sex work (HTS)":
  exists "Unprotected intercourse during sex work (HTS) Condition"
    or exists "Unprotected intercourse during sex work (HTS) Observation"
define "Unprotected intercourse during sex work (HTS) Condition":
  Elements."Unprotected intercourse during sex work (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Unprotected intercourse during sex work (HTS) Observation":
  Elements."Unprotected intercourse during sex work (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Unprotected intercourse during sex work (HTS) */

/*
@dataElement: HIV.B.DE125 - Injecting drug use with unsterile equipment (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through injecting drug use with unsterile equipment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Injecting drug use with unsterile equipment (HTS)":
  exists "Injecting drug use with unsterile equipment (HTS) Condition"
    or exists "Injecting drug use with unsterile equipment (HTS) Observation"
define "Injecting drug use with unsterile equipment (HTS) Condition":
  Elements."Injecting drug use with unsterile equipment (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Injecting drug use with unsterile equipment (HTS) Observation":
  Elements."Injecting drug use with unsterile equipment (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Injecting drug use with unsterile equipment (HTS) */

/*
@dataElement: HIV.B.DE126 - Nosocomial (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was nosocomial
*/
// TODO: Replace placeholder with relevant CQL logic
define "Nosocomial (HTS)":
  exists "Nosocomial (HTS) Condition"
    or exists "Nosocomial (HTS) Observation"
define "Nosocomial (HTS) Condition":
  Elements."Nosocomial (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Nosocomial (HTS) Observation":
  Elements."Nosocomial (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Nosocomial (HTS) */

/*
@dataElement: HIV.B.DE127 - Vertical (HTS)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission to an infant was during pregnancy, labour, delivery and breastfeeding (vertical transmission)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Vertical (HTS)":
  exists "Vertical (HTS) Condition"
    or exists "Vertical (HTS) Observation"
define "Vertical (HTS) Condition":
  Elements."Vertical (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Vertical (HTS) Observation":
  Elements."Vertical (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Vertical (HTS) */

/*
@dataElement: HIV.B.DE128 - Other (HTS|BDE128)
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was other and may include needle accidents, blood transfusion, blood products or organ/tissue donations, tattoos, piercings, circumcision, or acupuncture.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE128)":
  exists "Other (HTS|BDE128) Condition"
    or exists "Other (HTS|BDE128) Observation"
define "Other (HTS|BDE128) Condition":
  Elements."Other (HTS|BDE128) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (HTS|BDE128) Observation":
  Elements."Other (HTS|BDE128) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (HTS|BDE128) */

/*
@dataElement: HIV.B.DE198 - VMMC procedure date (HTS)
@activity: HIV.B21 Offer prevention options
@description: Date on which a voluntary medical male circumcision procedure was performed
*/
// TODO: Replace placeholder with relevant CQL logic
define "VMMC procedure date (HTS)":
  Elements."VMMC procedure date (HTS)" O
    where O.effective.toInterval() during "Measurement Period"
define "VMMC procedure date (HTS) Value":
  "VMMC procedure date (HTS)" O
  return O.value
/* End of VMMC procedure date (HTS) */

/*
@dataElement: HIV.B.DE201 - Adverse event severity (HTS)
@activity: HIV.B21 Offer prevention options
@description: Severity of the adverse event associated with voluntary medical male circumcision (VMMC) procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Adverse event severity (HTS)":
  exists "Adverse event severity (HTS) Observation"
define "Adverse event severity (HTS) Observation":
  Elements."Adverse event severity (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Adverse event severity (HTS) */

/*
@dataElement: HIV.B.DE202 - Moderate (HTS)
@activity: HIV.B21 Offer prevention options
@description: Severity of the adverse event associated with VMMC procedure was moderate
*/
// TODO: Replace placeholder with relevant CQL logic
define "Moderate (HTS)":
  exists "Moderate (HTS) Condition"
    or exists "Moderate (HTS) Observation"
define "Moderate (HTS) Condition":
  Elements."Moderate (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Moderate (HTS) Observation":
  Elements."Moderate (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Moderate (HTS) */

/*
@dataElement: HIV.B.DE203 - Severe (HTS)
@activity: HIV.B21 Offer prevention options
@description: Severity of the adverse event associated with VMMC procedure was severe
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe (HTS)":
  exists "Severe (HTS) Condition"
    or exists "Severe (HTS) Observation"
define "Severe (HTS) Condition":
  Elements."Severe (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Severe (HTS) Observation":
  Elements."Severe (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Severe (HTS) */

/*
@dataElement: HIV.B.DE204 - Timing of adverse event (HTS)
@activity: HIV.B21 Offer prevention options
@description: When the adverse event associated with VMMC procedure occurred
*/
// TODO: Replace placeholder with relevant CQL logic
define "Timing of adverse event (HTS)":
  exists "Timing of adverse event (HTS) Observation"
define "Timing of adverse event (HTS) Observation":
  Elements."Timing of adverse event (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Timing of adverse event (HTS) */

/*
@dataElement: HIV.B.DE205 - Intraoperative (HTS)
@activity: HIV.B21 Offer prevention options
@description: The adverse event associated with VMMC procedure occurred during the procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intraoperative (HTS)":
  exists "Intraoperative (HTS) Condition"
    or exists "Intraoperative (HTS) Observation"
define "Intraoperative (HTS) Condition":
  Elements."Intraoperative (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Intraoperative (HTS) Observation":
  Elements."Intraoperative (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Intraoperative (HTS) */

/*
@dataElement: HIV.B.DE206 - Postoperative (HTS)
@activity: HIV.B21 Offer prevention options
@description: The adverse event associated with VMMC procedure occurred within the first 30 days after the procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Postoperative (HTS)":
  exists "Postoperative (HTS) Condition"
    or exists "Postoperative (HTS) Observation"
define "Postoperative (HTS) Condition":
  Elements."Postoperative (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Postoperative (HTS) Observation":
  Elements."Postoperative (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Postoperative (HTS) */

/*
@dataElement: HIV.B.DE207 - Type of adverse VMMC event (HTS)
@activity: HIV.B21 Offer prevention options
@description: Type of adverse event associated with voluntary medical male circumcision (VMMC) procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of adverse VMMC event (HTS)":
  exists "Type of adverse VMMC event (HTS) Observation"
define "Type of adverse VMMC event (HTS) Observation":
  Elements."Type of adverse VMMC event (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Type of adverse VMMC event (HTS) */

/*
@dataElement: HIV.B.DE208 - Abnormal pain (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced abnormal pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Abnormal pain (HTS)":
  exists "Abnormal pain (HTS) Condition"
    or exists "Abnormal pain (HTS) Observation"
define "Abnormal pain (HTS) Condition":
  Elements."Abnormal pain (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Abnormal pain (HTS) Observation":
  Elements."Abnormal pain (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Abnormal pain (HTS) */

/*
@dataElement: HIV.B.DE209 - Anaesthesia-related effects (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client had anaesthesia-related effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anaesthesia-related effects (HTS)":
  exists "Anaesthesia-related effects (HTS) Condition"
    or exists "Anaesthesia-related effects (HTS) Observation"
define "Anaesthesia-related effects (HTS) Condition":
  Elements."Anaesthesia-related effects (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Anaesthesia-related effects (HTS) Observation":
  Elements."Anaesthesia-related effects (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Anaesthesia-related effects (HTS) */

/*
@dataElement: HIV.B.DE210 - Bleeding (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client had bleeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "Bleeding (HTS)":
  exists "Bleeding (HTS) Condition"
    or exists "Bleeding (HTS) Observation"
define "Bleeding (HTS) Condition":
  Elements."Bleeding (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Bleeding (HTS) Observation":
  Elements."Bleeding (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Bleeding (HTS) */

/*
@dataElement: HIV.B.DE211 - Damage to the penis (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client had damage to the penis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Damage to the penis (HTS)":
  exists "Damage to the penis (HTS) Condition"
    or exists "Damage to the penis (HTS) Observation"
define "Damage to the penis (HTS) Condition":
  Elements."Damage to the penis (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Damage to the penis (HTS) Observation":
  Elements."Damage to the penis (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Damage to the penis (HTS) */

/*
@dataElement: HIV.B.DE212 - Difficulty urinating (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client had difficulty urinating
*/
// TODO: Replace placeholder with relevant CQL logic
define "Difficulty urinating (HTS)":
  exists "Difficulty urinating (HTS) Condition"
    or exists "Difficulty urinating (HTS) Observation"
define "Difficulty urinating (HTS) Condition":
  Elements."Difficulty urinating (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Difficulty urinating (HTS) Observation":
  Elements."Difficulty urinating (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Difficulty urinating (HTS) */

/*
@dataElement: HIV.B.DE213 - Excessive bleeding (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced excessive bleeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excessive bleeding (HTS)":
  exists "Excessive bleeding (HTS) Condition"
    or exists "Excessive bleeding (HTS) Observation"
define "Excessive bleeding (HTS) Condition":
  Elements."Excessive bleeding (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Excessive bleeding (HTS) Observation":
  Elements."Excessive bleeding (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Excessive bleeding (HTS) */

/*
@dataElement: HIV.B.DE214 - Excessive skin removal (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced excessive skin removal
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excessive skin removal (HTS)":
  exists "Excessive skin removal (HTS) Condition"
    or exists "Excessive skin removal (HTS) Observation"
define "Excessive skin removal (HTS) Condition":
  Elements."Excessive skin removal (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Excessive skin removal (HTS) Observation":
  Elements."Excessive skin removal (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Excessive skin removal (HTS) */

/*
@dataElement: HIV.B.DE215 - Excessive swelling (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced excessive swelling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excessive swelling (HTS)":
  exists "Excessive swelling (HTS) Condition"
    or exists "Excessive swelling (HTS) Observation"
define "Excessive swelling (HTS) Condition":
  Elements."Excessive swelling (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Excessive swelling (HTS) Observation":
  Elements."Excessive swelling (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Excessive swelling (HTS) */

/*
@dataElement: HIV.B.DE216 - Haematoma (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced haematoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haematoma (HTS)":
  exists "Haematoma (HTS) Condition"
    or exists "Haematoma (HTS) Observation"
define "Haematoma (HTS) Condition":
  Elements."Haematoma (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Haematoma (HTS) Observation":
  Elements."Haematoma (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Haematoma (HTS) */

/*
@dataElement: HIV.B.DE217 - Infection (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infection (HTS)":
  exists "Infection (HTS) Condition"
    or exists "Infection (HTS) Observation"
define "Infection (HTS) Condition":
  Elements."Infection (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Infection (HTS) Observation":
  Elements."Infection (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Infection (HTS) */

/*
@dataElement: HIV.B.DE218 - Injury to glans (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced injury to glans
*/
// TODO: Replace placeholder with relevant CQL logic
define "Injury to glans (HTS)":
  exists "Injury to glans (HTS) Condition"
    or exists "Injury to glans (HTS) Observation"
define "Injury to glans (HTS) Condition":
  Elements."Injury to glans (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Injury to glans (HTS) Observation":
  Elements."Injury to glans (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Injury to glans (HTS) */

/*
@dataElement: HIV.B.DE219 - Scar or disfigurement (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced scar or disfigurement
*/
// TODO: Replace placeholder with relevant CQL logic
define "Scar or disfigurement (HTS)":
  exists "Scar or disfigurement (HTS) Condition"
    or exists "Scar or disfigurement (HTS) Observation"
define "Scar or disfigurement (HTS) Condition":
  Elements."Scar or disfigurement (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Scar or disfigurement (HTS) Observation":
  Elements."Scar or disfigurement (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Scar or disfigurement (HTS) */

/*
@dataElement: HIV.B.DE220 - Sharps injury to personnel (HTS)
@activity: HIV.B21 Offer prevention options
@description: During VMMC procedure there was sharps injury to personnel
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sharps injury to personnel (HTS)":
  exists "Sharps injury to personnel (HTS) Condition"
    or exists "Sharps injury to personnel (HTS) Observation"
define "Sharps injury to personnel (HTS) Condition":
  Elements."Sharps injury to personnel (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Sharps injury to personnel (HTS) Observation":
  Elements."Sharps injury to personnel (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Sharps injury to personnel (HTS) */

/*
@dataElement: HIV.B.DE221 - Wound disruption (HTS)
@activity: HIV.B21 Offer prevention options
@description: Client experienced wound disruption
*/
// TODO: Replace placeholder with relevant CQL logic
define "Wound disruption (HTS)":
  exists "Wound disruption (HTS) Condition"
    or exists "Wound disruption (HTS) Observation"
define "Wound disruption (HTS) Condition":
  Elements."Wound disruption (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Wound disruption (HTS) Observation":
  Elements."Wound disruption (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Wound disruption (HTS) */

/*
@dataElement: HIV.B.DE222 - Other (HTS|BDE222)
@activity: HIV.B21 Offer prevention options
@description: Client experienced other adverse VMMC event
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE222)":
  exists "Other (HTS|BDE222) Condition"
    or exists "Other (HTS|BDE222) Observation"
define "Other (HTS|BDE222) Condition":
  Elements."Other (HTS|BDE222) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (HTS|BDE222) Observation":
  Elements."Other (HTS|BDE222) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (HTS|BDE222) */

/*
@dataElement: HIV.B.DE226 - Syndrome/STI diagnosed (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Syndrome or STI for which client is diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syndrome/STI diagnosed (HTS)":
  exists "Syndrome/STI diagnosed (HTS) Observation"
define "Syndrome/STI diagnosed (HTS) Observation":
  Elements."Syndrome/STI diagnosed (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Syndrome/STI diagnosed (HTS) */

/*
@dataElement: HIV.B.DE227 - Urethral discharge syndrome (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with urethral discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral discharge syndrome (HTS)":
  exists "Urethral discharge syndrome (HTS) Condition"
    or exists "Urethral discharge syndrome (HTS) Observation"
define "Urethral discharge syndrome (HTS) Condition":
  Elements."Urethral discharge syndrome (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Urethral discharge syndrome (HTS) Observation":
  Elements."Urethral discharge syndrome (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Urethral discharge syndrome (HTS) */

/*
@dataElement: HIV.B.DE228 - Vaginal discharge syndrome (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with vaginal discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Vaginal discharge syndrome (HTS)":
  exists "Vaginal discharge syndrome (HTS) Condition"
    or exists "Vaginal discharge syndrome (HTS) Observation"
define "Vaginal discharge syndrome (HTS) Condition":
  Elements."Vaginal discharge syndrome (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Vaginal discharge syndrome (HTS) Observation":
  Elements."Vaginal discharge syndrome (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Vaginal discharge syndrome (HTS) */

/*
@dataElement: HIV.B.DE229 - Lower Abdominal pain  (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with lower abdominal pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lower Abdominal pain  (HTS)":
  exists "Lower Abdominal pain  (HTS) Condition"
    or exists "Lower Abdominal pain  (HTS) Observation"
define "Lower Abdominal pain  (HTS) Condition":
  Elements."Lower Abdominal pain  (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Lower Abdominal pain  (HTS) Observation":
  Elements."Lower Abdominal pain  (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Lower Abdominal pain  (HTS) */

/*
@dataElement: HIV.B.DE230 - Genital ulcer disease syndrome (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with genital ulcer disease syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Genital ulcer disease syndrome (HTS)":
  exists "Genital ulcer disease syndrome (HTS) Condition"
    or exists "Genital ulcer disease syndrome (HTS) Observation"
define "Genital ulcer disease syndrome (HTS) Condition":
  Elements."Genital ulcer disease syndrome (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Genital ulcer disease syndrome (HTS) Observation":
  Elements."Genital ulcer disease syndrome (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Genital ulcer disease syndrome (HTS) */

/*
@dataElement: HIV.B.DE231 - Anorectal discharge (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with anorectal discharge
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anorectal discharge (HTS)":
  exists "Anorectal discharge (HTS) Condition"
    or exists "Anorectal discharge (HTS) Observation"
define "Anorectal discharge (HTS) Condition":
  Elements."Anorectal discharge (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Anorectal discharge (HTS) Observation":
  Elements."Anorectal discharge (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Anorectal discharge (HTS) */

/*
@dataElement: HIV.B.DE232 - Sent for testing (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Specimen sent for testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sent for testing (HTS)":
  exists "Sent for testing (HTS) Condition"
    or exists "Sent for testing (HTS) Observation"
define "Sent for testing (HTS) Condition":
  Elements."Sent for testing (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Sent for testing (HTS) Observation":
  Elements."Sent for testing (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Sent for testing (HTS) */

/*
@dataElement: HIV.B.DE233 - Other (HTS|BDE233)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Other syndrome/STI diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE233)":
  exists "Other (HTS|BDE233) Condition"
    or exists "Other (HTS|BDE233) Observation"
define "Other (HTS|BDE233) Condition":
  Elements."Other (HTS|BDE233) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (HTS|BDE233) Observation":
  Elements."Other (HTS|BDE233) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (HTS|BDE233) */

/*
@dataElement: HIV.B.DE235 - Any STI syndrome diagnosed (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Was the client diagnosed with any of the five STI syndromes during this visit?
*/
// TODO: Replace placeholder with relevant CQL logic
define "Any STI syndrome diagnosed (HTS)":
  exists "Any STI syndrome diagnosed (HTS) Observation"
define "Any STI syndrome diagnosed (HTS) Observation":
  Elements."Any STI syndrome diagnosed (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Any STI syndrome diagnosed (HTS) */

/*
@dataElement: HIV.B.DE249 - Syphilis test date (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test date (HTS)":
  Elements."Syphilis test date (HTS)" O
    where O.effective.toInterval() during "Measurement Period"
define "Syphilis test date (HTS) Value":
  "Syphilis test date (HTS)" O
  return O.value
/* End of Syphilis test date (HTS) */

/*
@dataElement: HIV.B.DE254 - Syphilis treatment start date (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of initiation of syphilis treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis treatment start date (HTS)":
  Elements."Syphilis treatment start date (HTS)" O
    where O.effective.toInterval() during "Measurement Period"
define "Syphilis treatment start date (HTS) Value":
  "Syphilis treatment start date (HTS)" O
  return O.value
/* End of Syphilis treatment start date (HTS) */

/*
@dataElement: HIV.B.DE255 - Gonorrhoea test date (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test date (HTS)":
  Elements."Gonorrhoea test date (HTS)" O
    where O.effective.toInterval() during "Measurement Period"
define "Gonorrhoea test date (HTS) Value":
  "Gonorrhoea test date (HTS)" O
  return O.value
/* End of Gonorrhoea test date (HTS) */

/*
@dataElement: HIV.B.DE256 - Gonorrhoea test result (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Result from Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test result (HTS)":
  exists "Gonorrhoea test result (HTS) Observation"
define "Gonorrhoea test result (HTS) Observation":
  Elements."Gonorrhoea test result (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Gonorrhoea test result (HTS) */

/*
@dataElement: HIV.B.DE257 - Positive (HTS|BDE257)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is positive for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (HTS|BDE257)":
  exists "Positive (HTS|BDE257) Condition"
    or exists "Positive (HTS|BDE257) Observation"
define "Positive (HTS|BDE257) Condition":
  Elements."Positive (HTS|BDE257) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Positive (HTS|BDE257) Observation":
  Elements."Positive (HTS|BDE257) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Positive (HTS|BDE257) */

/*
@dataElement: HIV.B.DE258 - Negative (HTS|BDE258)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is negative for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (HTS|BDE258)":
  exists "Negative (HTS|BDE258) Condition"
    or exists "Negative (HTS|BDE258) Observation"
define "Negative (HTS|BDE258) Condition":
  Elements."Negative (HTS|BDE258) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Negative (HTS|BDE258) Observation":
  Elements."Negative (HTS|BDE258) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Negative (HTS|BDE258) */

/*
@dataElement: HIV.B.DE259 - Inconclusive (HTS|BDE259)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (HTS|BDE259)":
  exists "Inconclusive (HTS|BDE259) Condition"
    or exists "Inconclusive (HTS|BDE259) Observation"
define "Inconclusive (HTS|BDE259) Condition":
  Elements."Inconclusive (HTS|BDE259) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Inconclusive (HTS|BDE259) Observation":
  Elements."Inconclusive (HTS|BDE259) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Inconclusive (HTS|BDE259) */

/*
@dataElement: HIV.B.DE260 - Gonorrhoea treatment start date (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of initiation of Gonorrhoea treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea treatment start date (HTS)":
  Elements."Gonorrhoea treatment start date (HTS)" O
    where O.effective.toInterval() during "Measurement Period"
define "Gonorrhoea treatment start date (HTS) Value":
  "Gonorrhoea treatment start date (HTS)" O
  return O.value
/* End of Gonorrhoea treatment start date (HTS) */

/*
@dataElement: HIV.B.DE261 - Type of specimen (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Type of specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of specimen (HTS)":
  exists "Type of specimen (HTS) Observation"
define "Type of specimen (HTS) Observation":
  Elements."Type of specimen (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Type of specimen (HTS) */

/*
@dataElement: HIV.B.DE262 - Blood (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Blood specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Blood (HTS)":
  exists "Blood (HTS) Condition"
    or exists "Blood (HTS) Observation"
define "Blood (HTS) Condition":
  Elements."Blood (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Blood (HTS) Observation":
  Elements."Blood (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Blood (HTS) */

/*
@dataElement: HIV.B.DE263 - Urine (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Urine specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urine (HTS)":
  exists "Urine (HTS) Condition"
    or exists "Urine (HTS) Observation"
define "Urine (HTS) Condition":
  Elements."Urine (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Urine (HTS) Observation":
  Elements."Urine (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Urine (HTS) */

/*
@dataElement: HIV.B.DE264 - Cervical or vaginal swab (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Cervical or vaginal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical or vaginal swab (HTS)":
  exists "Cervical or vaginal swab (HTS) Condition"
    or exists "Cervical or vaginal swab (HTS) Observation"
define "Cervical or vaginal swab (HTS) Condition":
  Elements."Cervical or vaginal swab (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Cervical or vaginal swab (HTS) Observation":
  Elements."Cervical or vaginal swab (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Cervical or vaginal swab (HTS) */

/*
@dataElement: HIV.B.DE265 - Urethral or penile swab (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Urethral or penile swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral or penile swab (HTS)":
  exists "Urethral or penile swab (HTS) Condition"
    or exists "Urethral or penile swab (HTS) Observation"
define "Urethral or penile swab (HTS) Condition":
  Elements."Urethral or penile swab (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Urethral or penile swab (HTS) Observation":
  Elements."Urethral or penile swab (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Urethral or penile swab (HTS) */

/*
@dataElement: HIV.B.DE266 - Rectal swab (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Rectal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rectal swab (HTS)":
  exists "Rectal swab (HTS) Condition"
    or exists "Rectal swab (HTS) Observation"
define "Rectal swab (HTS) Condition":
  Elements."Rectal swab (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Rectal swab (HTS) Observation":
  Elements."Rectal swab (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Rectal swab (HTS) */

/*
@dataElement: HIV.B.DE267 - Other (HTS|BDE267)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Other specimen type to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE267)":
  exists "Other (HTS|BDE267) Condition"
    or exists "Other (HTS|BDE267) Observation"
define "Other (HTS|BDE267) Condition":
  Elements."Other (HTS|BDE267) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (HTS|BDE267) Observation":
  Elements."Other (HTS|BDE267) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (HTS|BDE267) */

/*
@dataElement: HIV.B.DE276 - Neisseria gonorrhoeae test type (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Type of diagnostic test used for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neisseria gonorrhoeae test type (HTS)":
  exists "Neisseria gonorrhoeae test type (HTS) Observation"
define "Neisseria gonorrhoeae test type (HTS) Observation":
  Elements."Neisseria gonorrhoeae test type (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Neisseria gonorrhoeae test type (HTS) */

/*
@dataElement: HIV.B.DE277 - NAAT (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Nucleic Acid Amplification Test (NAAT) used
*/
// TODO: Replace placeholder with relevant CQL logic
define "NAAT (HTS)":
  exists "NAAT (HTS) Condition"
    or exists "NAAT (HTS) Observation"
define "NAAT (HTS) Condition":
  Elements."NAAT (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "NAAT (HTS) Observation":
  Elements."NAAT (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of NAAT (HTS) */

/*
@dataElement: HIV.B.DE278 - POC Test (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Point-of-care (POC) test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "POC Test (HTS)":
  exists "POC Test (HTS) Condition"
    or exists "POC Test (HTS) Observation"
define "POC Test (HTS) Condition":
  Elements."POC Test (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "POC Test (HTS) Observation":
  Elements."POC Test (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of POC Test (HTS) */

/*
@dataElement: HIV.B.DE279 - Culture (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Culture test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Culture (HTS)":
  exists "Culture (HTS) Condition"
    or exists "Culture (HTS) Observation"
define "Culture (HTS) Condition":
  Elements."Culture (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Culture (HTS) Observation":
  Elements."Culture (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Culture (HTS) */

/*
@dataElement: HIV.B.DE280 - Microscopy (HTS)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Microscopy test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Microscopy (HTS)":
  exists "Microscopy (HTS) Condition"
    or exists "Microscopy (HTS) Observation"
define "Microscopy (HTS) Condition":
  Elements."Microscopy (HTS) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Microscopy (HTS) Observation":
  Elements."Microscopy (HTS) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Microscopy (HTS) */

/*
@dataElement: HIV.B.DE281 - Other (HTS|BDE281)
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Other type of test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE281)":
  exists "Other (HTS|BDE281) Condition"
    or exists "Other (HTS|BDE281) Observation"
define "Other (HTS|BDE281) Condition":
  Elements."Other (HTS|BDE281) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (HTS|BDE281) Observation":
  Elements."Other (HTS|BDE281) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (HTS|BDE281) */

/*
@dataElement: HIV.C.DE11 - PrEP dosing type (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Way in which pre-exposure prophylaxis (PrEP) is taken (daily or event-driven)
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP dosing type (PrEP)":
  exists "PrEP dosing type (PrEP) Observation"
define "PrEP dosing type (PrEP) Observation":
  Elements."PrEP dosing type (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of PrEP dosing type (PrEP) */

/*
@dataElement: HIV.C.DE12 - Daily oral PrEP (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Pre-exposure prophylaxis (PrEP) is taken every day
*/
// TODO: Replace placeholder with relevant CQL logic
define "Daily oral PrEP (PrEP)":
  exists "Daily oral PrEP (PrEP) Condition"
    or exists "Daily oral PrEP (PrEP) Observation"
define "Daily oral PrEP (PrEP) Condition":
  Elements."Daily oral PrEP (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Daily oral PrEP (PrEP) Observation":
  Elements."Daily oral PrEP (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Daily oral PrEP (PrEP) */

/*
@dataElement: HIV.C.DE13 - Event-driven PrEP 2+1+1 (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Event-driven pre-exposure prophylaxis (PrEP) is taken on an even-driven basis (2+1+1)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Event-driven PrEP 2+1+1 (PrEP)":
  exists "Event-driven PrEP 2+1+1 (PrEP) Condition"
    or exists "Event-driven PrEP 2+1+1 (PrEP) Observation"
define "Event-driven PrEP 2+1+1 (PrEP) Condition":
  Elements."Event-driven PrEP 2+1+1 (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Event-driven PrEP 2+1+1 (PrEP) Observation":
  Elements."Event-driven PrEP 2+1+1 (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Event-driven PrEP 2+1+1 (PrEP) */

/*
@dataElement: HIV.C.DE14 - Other PrEP dosing type (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Other PrEP dosing type
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other PrEP dosing type (PrEP)":
  exists "Other PrEP dosing type (PrEP) Condition"
    or exists "Other PrEP dosing type (PrEP) Observation"
define "Other PrEP dosing type (PrEP) Condition":
  Elements."Other PrEP dosing type (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other PrEP dosing type (PrEP) Observation":
  Elements."Other PrEP dosing type (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other PrEP dosing type (PrEP) */

/*
@dataElement: HIV.C.DE24 - Experience with PrEP (PrEP)
@activity: HIV.C3 Capture or update client history
@description: The client's experience in taking PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Experience with PrEP (PrEP)":
  exists "Experience with PrEP (PrEP) Observation"
define "Experience with PrEP (PrEP) Observation":
  Elements."Experience with PrEP (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Experience with PrEP (PrEP) */

/*
@dataElement: HIV.C.DE25 - First-time user (PrEP|CDE25)
@activity: HIV.C3 Capture or update client history
@description: The client has never used pre-exposure prophylaxis (PrEP) before (naive)
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-time user (PrEP|CDE25)":
  exists "First-time user (PrEP|CDE25) Condition"
    or exists "First-time user (PrEP|CDE25) Observation"
define "First-time user (PrEP|CDE25) Condition":
  Elements."First-time user (PrEP|CDE25) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "First-time user (PrEP|CDE25) Observation":
  Elements."First-time user (PrEP|CDE25) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of First-time user (PrEP|CDE25) */

/*
@dataElement: HIV.C.DE26 - Continuing user (PrEP)
@activity: HIV.C3 Capture or update client history
@description: The client has used PrEP before and is continuing to use PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Continuing user (PrEP)":
  exists "Continuing user (PrEP) Condition"
    or exists "Continuing user (PrEP) Observation"
define "Continuing user (PrEP) Condition":
  Elements."Continuing user (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Continuing user (PrEP) Observation":
  Elements."Continuing user (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Continuing user (PrEP) */

/*
@dataElement: HIV.C.DE27 - Restarting following a period of not taking PrEP (PrEP)
@activity: HIV.C3 Capture or update client history
@description: The client is restarting PrEP following a period of not taking PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Restarting following a period of not taking PrEP (PrEP)":
  exists "Restarting following a period of not taking PrEP (PrEP) Condition"
    or exists "Restarting following a period of not taking PrEP (PrEP) Observation"
define "Restarting following a period of not taking PrEP (PrEP) Condition":
  Elements."Restarting following a period of not taking PrEP (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Restarting following a period of not taking PrEP (PrEP) Observation":
  Elements."Restarting following a period of not taking PrEP (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Restarting following a period of not taking PrEP (PrEP) */

/*
@dataElement: HIV.C.DE35 - Date client completes PEP course (PrEP)
@activity: HIV.C3 Capture or update client history
@description: Date client completes PEP course
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date client completes PEP course (PrEP)":
  Elements."Date client completes PEP course (PrEP)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date client completes PEP course (PrEP) Value":
  "Date client completes PEP course (PrEP)" O
  return O.value
/* End of Date client completes PEP course (PrEP) */

/*
@dataElement: HIV.C.DE74 - Date medications prescribed (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Date the client was prescribed medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date medications prescribed (PrEP)":
  Elements."Date medications prescribed (PrEP)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date medications prescribed (PrEP) Value":
  "Date medications prescribed (PrEP)" O
  return O.value
/* End of Date medications prescribed (PrEP) */

/*
@dataElement: HIV.C.DE75 - Medications prescribed (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Medications the client was prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medications prescribed (PrEP)":
  exists "Medications prescribed (PrEP) Observation"
define "Medications prescribed (PrEP) Observation":
  Elements."Medications prescribed (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Medications prescribed (PrEP) */

/*
@dataElement: HIV.C.DE76 - PrEP for HIV prevention (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed pre-exposure prophylaxis (PrEP) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP for HIV prevention (PrEP)":
  exists "PrEP for HIV prevention (PrEP) Condition"
    or exists "PrEP for HIV prevention (PrEP) Observation"
define "PrEP for HIV prevention (PrEP) Condition":
  Elements."PrEP for HIV prevention (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "PrEP for HIV prevention (PrEP) Observation":
  Elements."PrEP for HIV prevention (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of PrEP for HIV prevention (PrEP) */

/*
@dataElement: HIV.C.DE77 - PEP for HIV prevention (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed post-exposure prophylaxis (PEP) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "PEP for HIV prevention (PrEP)":
  exists "PEP for HIV prevention (PrEP) Condition"
    or exists "PEP for HIV prevention (PrEP) Observation"
define "PEP for HIV prevention (PrEP) Condition":
  Elements."PEP for HIV prevention (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "PEP for HIV prevention (PrEP) Observation":
  Elements."PEP for HIV prevention (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of PEP for HIV prevention (PrEP) */

/*
@dataElement: HIV.C.DE78 - Other (PrEP|CDE78)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed other medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PrEP|CDE78)":
  exists "Other (PrEP|CDE78) Condition"
    or exists "Other (PrEP|CDE78) Observation"
define "Other (PrEP|CDE78) Condition":
  Elements."Other (PrEP|CDE78) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (PrEP|CDE78) Observation":
  Elements."Other (PrEP|CDE78) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (PrEP|CDE78) */

/*
@dataElement: HIV.C.DE80 - PrEP product prescribed (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: PrEP product that the client was prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP product prescribed (PrEP)":
  exists "PrEP product prescribed (PrEP) Observation"
define "PrEP product prescribed (PrEP) Observation":
  Elements."PrEP product prescribed (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of PrEP product prescribed (PrEP) */

/*
@dataElement: HIV.C.DE81 - Oral PrEP (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed oral PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Oral PrEP (PrEP)":
  exists "Oral PrEP (PrEP) Condition"
    or exists "Oral PrEP (PrEP) Observation"
define "Oral PrEP (PrEP) Condition":
  Elements."Oral PrEP (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Oral PrEP (PrEP) Observation":
  Elements."Oral PrEP (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Oral PrEP (PrEP) */

/*
@dataElement: HIV.C.DE82 - Dapivirine vaginal ring DVR (PrEP|CDE82)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed dapivirine vaginal ring (DVR)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dapivirine vaginal ring DVR (PrEP|CDE82)":
  exists "Dapivirine vaginal ring DVR (PrEP|CDE82) Condition"
    or exists "Dapivirine vaginal ring DVR (PrEP|CDE82) Observation"
define "Dapivirine vaginal ring DVR (PrEP|CDE82) Condition":
  Elements."Dapivirine vaginal ring DVR (PrEP|CDE82) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Dapivirine vaginal ring DVR (PrEP|CDE82) Observation":
  Elements."Dapivirine vaginal ring DVR (PrEP|CDE82) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Dapivirine vaginal ring DVR (PrEP|CDE82) */

/*
@dataElement: HIV.C.DE83 - CAB-LA (PrEP|CDE83)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed long-acting cabotegravir (CAB-LA)
*/
// TODO: Replace placeholder with relevant CQL logic
define "CAB-LA (PrEP|CDE83)":
  exists "CAB-LA (PrEP|CDE83) Condition"
    or exists "CAB-LA (PrEP|CDE83) Observation"
define "CAB-LA (PrEP|CDE83) Condition":
  Elements."CAB-LA (PrEP|CDE83) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "CAB-LA (PrEP|CDE83) Observation":
  Elements."CAB-LA (PrEP|CDE83) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of CAB-LA (PrEP|CDE83) */

/*
@dataElement: HIV.C.DE84 - Other (PrEP|CDE84)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed other PrEP product
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PrEP|CDE84)":
  exists "Other (PrEP|CDE84) Condition"
    or exists "Other (PrEP|CDE84) Observation"
define "Other (PrEP|CDE84) Condition":
  Elements."Other (PrEP|CDE84) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (PrEP|CDE84) Observation":
  Elements."Other (PrEP|CDE84) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (PrEP|CDE84) */

/*
@dataElement: HIV.C.DE121 - Number of days prescribed (PrEP)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Days of medication client has been prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of days prescribed (PrEP)":
  Elements."Number of days prescribed (PrEP)" O
    where O.effective.toInterval() during "Measurement Period"
define "Number of days prescribed (PrEP) Value":
  "Number of days prescribed (PrEP)" O
  return O.value
/* End of Number of days prescribed (PrEP) */

/*
@dataElement: HIV.C.DE138 - Condom type (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Type of condom provided to client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Condom type (PrEP)":
  exists "Condom type (PrEP) Observation"
define "Condom type (PrEP) Observation":
  Elements."Condom type (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Condom type (PrEP) */

/*
@dataElement: HIV.C.DE139 - Male condom (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Male condoms were provided to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Male condom (PrEP)":
  exists "Male condom (PrEP) Condition"
    or exists "Male condom (PrEP) Observation"
define "Male condom (PrEP) Condition":
  Elements."Male condom (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Male condom (PrEP) Observation":
  Elements."Male condom (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Male condom (PrEP) */

/*
@dataElement: HIV.C.DE140 - Female condom (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Female condoms were provided to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Female condom (PrEP)":
  exists "Female condom (PrEP) Condition"
    or exists "Female condom (PrEP) Observation"
define "Female condom (PrEP) Condition":
  Elements."Female condom (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Female condom (PrEP) Observation":
  Elements."Female condom (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Female condom (PrEP) */

/*
@dataElement: HIV.C.DE142 - Number of HIV self-test kits distributed (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Number of HIV self-test kits distributed to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of HIV self-test kits distributed (PrEP)":
  Elements."Number of HIV self-test kits distributed (PrEP)" O
    where O.effective.toInterval() during "Measurement Period"
define "Number of HIV self-test kits distributed (PrEP) Value":
  "Number of HIV self-test kits distributed (PrEP)" O
  return O.value
/* End of Number of HIV self-test kits distributed (PrEP) */

/*
@dataElement: HIV.C.DE143 - HIV self-test distributed for use by (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Whom the client plans to give the HIV self-test kit (self, sexual partner, social contact, etc.)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV self-test distributed for use by (PrEP)":
  exists "HIV self-test distributed for use by (PrEP) Observation"
define "HIV self-test distributed for use by (PrEP) Observation":
  Elements."HIV self-test distributed for use by (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV self-test distributed for use by (PrEP) */

/*
@dataElement: HIV.C.DE144 - Self (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to use the self-test kit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Self (PrEP)":
  exists "Self (PrEP) Condition"
    or exists "Self (PrEP) Observation"
define "Self (PrEP) Condition":
  Elements."Self (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Self (PrEP) Observation":
  Elements."Self (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Self (PrEP) */

/*
@dataElement: HIV.C.DE145 - Family member (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a family member to use
*/
// TODO: Replace placeholder with relevant CQL logic
define "Family member (PrEP)":
  exists "Family member (PrEP) Condition"
    or exists "Family member (PrEP) Observation"
define "Family member (PrEP) Condition":
  Elements."Family member (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Family member (PrEP) Observation":
  Elements."Family member (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Family member (PrEP) */

/*
@dataElement: HIV.C.DE146 - Drug-injecting partner (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a drug-injecting partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug-injecting partner (PrEP)":
  exists "Drug-injecting partner (PrEP) Condition"
    or exists "Drug-injecting partner (PrEP) Observation"
define "Drug-injecting partner (PrEP) Condition":
  Elements."Drug-injecting partner (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Drug-injecting partner (PrEP) Observation":
  Elements."Drug-injecting partner (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Drug-injecting partner (PrEP) */

/*
@dataElement: HIV.C.DE147 - Sexual partner (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a sexual partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual partner (PrEP)":
  exists "Sexual partner (PrEP) Condition"
    or exists "Sexual partner (PrEP) Observation"
define "Sexual partner (PrEP) Condition":
  Elements."Sexual partner (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Sexual partner (PrEP) Observation":
  Elements."Sexual partner (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Sexual partner (PrEP) */

/*
@dataElement: HIV.C.DE148 - Social contact (PrEP)
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a social contact
*/
// TODO: Replace placeholder with relevant CQL logic
define "Social contact (PrEP)":
  exists "Social contact (PrEP) Condition"
    or exists "Social contact (PrEP) Observation"
define "Social contact (PrEP) Condition":
  Elements."Social contact (PrEP) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Social contact (PrEP) Observation":
  Elements."Social contact (PrEP) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Social contact (PrEP) */

/*
@dataElement: HIV.D.DE32 - Breastfeeding (Care)
@activity: HIV.D8 Capture or update client history
@description: Client is giving infant breast milk
*/
// TODO: Replace placeholder with relevant CQL logic
define "Breastfeeding (Care)":
  exists "Breastfeeding (Care) Observation"
define "Breastfeeding (Care) Observation":
  Elements."Breastfeeding (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Breastfeeding (Care) */

/*
@dataElement: HIV.D.DE41 - Date ART stopped (Care)
@activity: HIV.D8 Capture or update client history
@description: Date on which client stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date ART stopped (Care)":
  Elements."Date ART stopped (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date ART stopped (Care) Value":
  "Date ART stopped (Care)" O
  return O.value
/* End of Date ART stopped (Care) */

/*
@dataElement: HIV.D.DE161 - HBsAg test date (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date client was tested for hepatitis B virus (HBV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test date (Care)":
  Elements."HBsAg test date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "HBsAg test date (Care) Value":
  "HBsAg test date (Care)" O
  return O.value
/* End of HBsAg test date (Care) */

/*
@dataElement: HIV.D.DE167 - HBV treatment TDF start date (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date when client started treatment (TDF) for hepatitis B virus (HBV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBV treatment TDF start date (Care)":
  Elements."HBV treatment TDF start date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "HBV treatment TDF start date (Care) Value":
  "HBV treatment TDF start date (Care)" O
  return O.value
/* End of HBV treatment TDF start date (Care) */

/*
@dataElement: HIV.D.DE169 - HCV test date (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date client was tested for hepatitis C virus (HCV antibody, HCV RNA or HCV core antigen)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV test date (Care)":
  Elements."HCV test date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "HCV test date (Care) Value":
  "HCV test date (Care)" O
  return O.value
/* End of HCV test date (Care) */

/*
@dataElement: HIV.D.DE175 - HCV treatment start date (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date when client started treatment for hepatitis C virus (HCV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV treatment start date (Care)":
  Elements."HCV treatment start date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "HCV treatment start date (Care) Value":
  "HCV treatment start date (Care)" O
  return O.value
/* End of HCV treatment start date (Care) */

/*
@dataElement: HIV.D.DE176 - HCV treatment completion date (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date when client completed treatment for hepatitis C virus (HCV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV treatment completion date (Care)":
  Elements."HCV treatment completion date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "HCV treatment completion date (Care) Value":
  "HCV treatment completion date (Care)" O
  return O.value
/* End of HCV treatment completion date (Care) */

/*
@dataElement: HIV.D.DE178 - HCV viral load test date (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Hepatitis C viral load test date
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test date (Care)":
  Elements."HCV viral load test date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "HCV viral load test date (Care) Value":
  "HCV viral load test date (Care)" O
  return O.value
/* End of HCV viral load test date (Care) */

/*
@dataElement: HIV.D.DE179 - HCV viral load test result (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Hepatitis C viral load test result (qualitative)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test result (Care)":
  exists "HCV viral load test result (Care) Observation"
define "HCV viral load test result (Care) Observation":
  Elements."HCV viral load test result (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HCV viral load test result (Care) */

/*
@dataElement: HIV.D.DE180 - Detected (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: HCV was detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Detected (Care)":
  exists "Detected (Care) Condition"
    or exists "Detected (Care) Observation"
define "Detected (Care) Condition":
  Elements."Detected (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Detected (Care) Observation":
  Elements."Detected (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Detected (Care) */

/*
@dataElement: HIV.D.DE181 - Not detected (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: HCV was not detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not detected (Care)":
  exists "Not detected (Care) Condition"
    or exists "Not detected (Care) Observation"
define "Not detected (Care) Condition":
  Elements."Not detected (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Not detected (Care) Observation":
  Elements."Not detected (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Not detected (Care) */

/*
@dataElement: HIV.D.DE182 - HCV medicine type (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Type of medicine client is prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV medicine type (Care)":
  exists "HCV medicine type (Care) Observation"
define "HCV medicine type (Care) Observation":
  Elements."HCV medicine type (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HCV medicine type (Care) */

/*
@dataElement: HIV.D.DE183 - Interferon (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Client is prescribed interferon
*/
// TODO: Replace placeholder with relevant CQL logic
define "Interferon (Care)":
  exists "Interferon (Care) Condition"
    or exists "Interferon (Care) Observation"
define "Interferon (Care) Condition":
  Elements."Interferon (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Interferon (Care) Observation":
  Elements."Interferon (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Interferon (Care) */

/*
@dataElement: HIV.D.DE184 - Direct acting antivirals (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Client is prescribed direct acting antivirals
*/
// TODO: Replace placeholder with relevant CQL logic
define "Direct acting antivirals (Care)":
  exists "Direct acting antivirals (Care) Condition"
    or exists "Direct acting antivirals (Care) Observation"
define "Direct acting antivirals (Care) Condition":
  Elements."Direct acting antivirals (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Direct acting antivirals (Care) Observation":
  Elements."Direct acting antivirals (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Direct acting antivirals (Care) */

/*
@dataElement: HIV.D.DE185 - Currently on TDF-based ART (Care)
@activity: HIV.D12 Determine recommended screenings and tests
@description: Client is currently on TDF-based ART regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently on TDF-based ART (Care)":
  exists "Currently on TDF-based ART (Care) Observation"
define "Currently on TDF-based ART (Care) Observation":
  Elements."Currently on TDF-based ART (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Currently on TDF-based ART (Care) */

/*
@dataElement: HIV.D.DE193 - Date viral load test results received by client (Care|DDE193)
@activity: HIV.D10 Counsel returning client
@description: The date on which the client received results from viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date viral load test results received by client (Care|DDE193)":
  Elements."Date viral load test results received by client (Care|DDE193)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date viral load test results received by client (Care|DDE193) Value":
  "Date viral load test results received by client (Care|DDE193)" O
  return O.value
/* End of Date viral load test results received by client (Care|DDE193) */

/*
@dataElement: HIV.D.DE217 - Reason ART stopped (Care)
@activity: HIV.D10 Counsel returning client
@description: Reason client intentionally stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason ART stopped (Care)":
  exists "Reason ART stopped (Care) Observation"
define "Reason ART stopped (Care) Observation":
  Elements."Reason ART stopped (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Reason ART stopped (Care) */

/*
@dataElement: HIV.D.DE218 - Toxicity/side effects (Care|DDE218)
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of toxicity/side effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Toxicity/side effects (Care|DDE218)":
  exists "Toxicity/side effects (Care|DDE218) Condition"
    or exists "Toxicity/side effects (Care|DDE218) Observation"
define "Toxicity/side effects (Care|DDE218) Condition":
  Elements."Toxicity/side effects (Care|DDE218) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Toxicity/side effects (Care|DDE218) Observation":
  Elements."Toxicity/side effects (Care|DDE218) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Toxicity/side effects (Care|DDE218) */

/*
@dataElement: HIV.D.DE219 - Severe illness, hospitalization (Care)
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of severe illness, hospitalization
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe illness, hospitalization (Care)":
  exists "Severe illness, hospitalization (Care) Condition"
    or exists "Severe illness, hospitalization (Care) Observation"
define "Severe illness, hospitalization (Care) Condition":
  Elements."Severe illness, hospitalization (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Severe illness, hospitalization (Care) Observation":
  Elements."Severe illness, hospitalization (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Severe illness, hospitalization (Care) */

/*
@dataElement: HIV.D.DE220 - Drugs out of stock (Care)
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because drugs were out of stock
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drugs out of stock (Care)":
  exists "Drugs out of stock (Care) Condition"
    or exists "Drugs out of stock (Care) Observation"
define "Drugs out of stock (Care) Condition":
  Elements."Drugs out of stock (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Drugs out of stock (Care) Observation":
  Elements."Drugs out of stock (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Drugs out of stock (Care) */

/*
@dataElement: HIV.D.DE221 - Client lacks finances (Care)
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of lack of finances
*/
// TODO: Replace placeholder with relevant CQL logic
define "Client lacks finances (Care)":
  exists "Client lacks finances (Care) Condition"
    or exists "Client lacks finances (Care) Observation"
define "Client lacks finances (Care) Condition":
  Elements."Client lacks finances (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Client lacks finances (Care) Observation":
  Elements."Client lacks finances (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Client lacks finances (Care) */

/*
@dataElement: HIV.D.DE222 - Excluded HIV infection in infant (Care)
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because HIV infection in infant was excluded
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excluded HIV infection in infant (Care)":
  exists "Excluded HIV infection in infant (Care) Condition"
    or exists "Excluded HIV infection in infant (Care) Observation"
define "Excluded HIV infection in infant (Care) Condition":
  Elements."Excluded HIV infection in infant (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Excluded HIV infection in infant (Care) Observation":
  Elements."Excluded HIV infection in infant (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Excluded HIV infection in infant (Care) */

/*
@dataElement: HIV.D.DE223 - Other reason for stopping ART (Care)
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other reason for stopping ART (Care)":
  exists "Other reason for stopping ART (Care) Condition"
    or exists "Other reason for stopping ART (Care) Observation"
define "Other reason for stopping ART (Care) Condition":
  Elements."Other reason for stopping ART (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other reason for stopping ART (Care) Observation":
  Elements."Other reason for stopping ART (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other reason for stopping ART (Care) */

/*
@dataElement: HIV.D.DE367 - Baseline CD4 count (Care)
@activity: HIV.D20 Diagnostics
@description: CD4 count performed at HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Baseline CD4 count (Care)":
  Elements."Baseline CD4 count (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Baseline CD4 count (Care) Value":
  "Baseline CD4 count (Care)" O
  return O.value
/* End of Baseline CD4 count (Care) */

/*
@dataElement: HIV.D.DE368 - Date of baseline CD4 count test (Care)
@activity: HIV.D20 Diagnostics
@description: Date and time when baseline CD4 count test was conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of baseline CD4 count test (Care)":
  Elements."Date of baseline CD4 count test (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date of baseline CD4 count test (Care) Value":
  "Date of baseline CD4 count test (Care)" O
  return O.value
/* End of Date of baseline CD4 count test (Care) */

/*
@dataElement: HIV.D.DE383 - Time to start ART (Care)
@activity: HIV.D8 Capture or update client history
@description: Time from HIV diagnosis to when client started ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Time to start ART (Care)":
  exists "Time to start ART (Care) Observation"
define "Time to start ART (Care) Observation":
  Elements."Time to start ART (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Time to start ART (Care) */

/*
@dataElement: HIV.D.DE384 - Within 7 days of HIV diagnosis (Care)
@activity: HIV.D8 Capture or update client history
@description: Client started ART within 7 days
*/
// TODO: Replace placeholder with relevant CQL logic
define "Within 7 days of HIV diagnosis (Care)":
  exists "Within 7 days of HIV diagnosis (Care) Condition"
    or exists "Within 7 days of HIV diagnosis (Care) Observation"
define "Within 7 days of HIV diagnosis (Care) Condition":
  Elements."Within 7 days of HIV diagnosis (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Within 7 days of HIV diagnosis (Care) Observation":
  Elements."Within 7 days of HIV diagnosis (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Within 7 days of HIV diagnosis (Care) */

/*
@dataElement: HIV.D.DE385 - Within 30 days of HIV diagnosis (Care)
@activity: HIV.D8 Capture or update client history
@description: Client started ART within 30 days of ART initiation (but over 7 days)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Within 30 days of HIV diagnosis (Care)":
  exists "Within 30 days of HIV diagnosis (Care) Condition"
    or exists "Within 30 days of HIV diagnosis (Care) Observation"
define "Within 30 days of HIV diagnosis (Care) Condition":
  Elements."Within 30 days of HIV diagnosis (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Within 30 days of HIV diagnosis (Care) Observation":
  Elements."Within 30 days of HIV diagnosis (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Within 30 days of HIV diagnosis (Care) */

/*
@dataElement: HIV.D.DE386 - Within 90 days of HIV diagnosis (Care)
@activity: HIV.D8 Capture or update client history
@description: Client started ART within 90 days of ART initiation (but over 30 days)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Within 90 days of HIV diagnosis (Care)":
  exists "Within 90 days of HIV diagnosis (Care) Condition"
    or exists "Within 90 days of HIV diagnosis (Care) Observation"
define "Within 90 days of HIV diagnosis (Care) Condition":
  Elements."Within 90 days of HIV diagnosis (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Within 90 days of HIV diagnosis (Care) Observation":
  Elements."Within 90 days of HIV diagnosis (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Within 90 days of HIV diagnosis (Care) */

/*
@dataElement: HIV.D.DE417 - Date viral load test results received by client (Care|DDE417)
@activity: HIV.D20 Diagnostics
@description: The date on which the client received results from a viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date viral load test results received by client (Care|DDE417)":
  Elements."Date viral load test results received by client (Care|DDE417)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date viral load test results received by client (Care|DDE417) Value":
  "Date viral load test results received by client (Care|DDE417)" O
  return O.value
/* End of Date viral load test results received by client (Care|DDE417) */

/*
@dataElement: HIV.D.DE418 - Reason for ARV drug regimen substitution (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Reason why a substitution was made to the antiretroviral (ARV) drug regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason for ARV drug regimen substitution (Care)":
  exists "Reason for ARV drug regimen substitution (Care) Observation"
define "Reason for ARV drug regimen substitution (Care) Observation":
  Elements."Reason for ARV drug regimen substitution (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Reason for ARV drug regimen substitution (Care) */

/*
@dataElement: HIV.D.DE419 - Toxicity/side effects (Care|DDE419)
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of toxicity/side effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Toxicity/side effects (Care|DDE419)":
  exists "Toxicity/side effects (Care|DDE419) Condition"
    or exists "Toxicity/side effects (Care|DDE419) Observation"
define "Toxicity/side effects (Care|DDE419) Condition":
  Elements."Toxicity/side effects (Care|DDE419) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Toxicity/side effects (Care|DDE419) Observation":
  Elements."Toxicity/side effects (Care|DDE419) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Toxicity/side effects (Care|DDE419) */

/*
@dataElement: HIV.D.DE420 - Drug-drug interaction (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of a drug-drug interaction
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug-drug interaction (Care)":
  exists "Drug-drug interaction (Care) Condition"
    or exists "Drug-drug interaction (Care) Observation"
define "Drug-drug interaction (Care) Condition":
  Elements."Drug-drug interaction (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Drug-drug interaction (Care) Observation":
  Elements."Drug-drug interaction (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Drug-drug interaction (Care) */

/*
@dataElement: HIV.D.DE421 - Pregnancy (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of pregnancy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pregnancy (Care)":
  exists "Pregnancy (Care) Condition"
    or exists "Pregnancy (Care) Observation"
define "Pregnancy (Care) Condition":
  Elements."Pregnancy (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Pregnancy (Care) Observation":
  Elements."Pregnancy (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Pregnancy (Care) */

/*
@dataElement: HIV.D.DE422 - New TB (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of new tuberculosis (TB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "New TB (Care)":
  exists "New TB (Care) Condition"
    or exists "New TB (Care) Observation"
define "New TB (Care) Condition":
  Elements."New TB (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "New TB (Care) Observation":
  Elements."New TB (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of New TB (Care) */

/*
@dataElement: HIV.D.DE423 - New drug available (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because a new drug was available
*/
// TODO: Replace placeholder with relevant CQL logic
define "New drug available (Care)":
  exists "New drug available (Care) Condition"
    or exists "New drug available (Care) Observation"
define "New drug available (Care) Condition":
  Elements."New drug available (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "New drug available (Care) Observation":
  Elements."New drug available (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of New drug available (Care) */

/*
@dataElement: HIV.D.DE424 - Drug out of stock (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because drug was out of stock
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug out of stock (Care)":
  exists "Drug out of stock (Care) Condition"
    or exists "Drug out of stock (Care) Observation"
define "Drug out of stock (Care) Condition":
  Elements."Drug out of stock (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Drug out of stock (Care) Observation":
  Elements."Drug out of stock (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Drug out of stock (Care) */

/*
@dataElement: HIV.D.DE425 - Other reason for regimen substitution (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made for another reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other reason for regimen substitution (Care)":
  exists "Other reason for regimen substitution (Care) Condition"
    or exists "Other reason for regimen substitution (Care) Observation"
define "Other reason for regimen substitution (Care) Condition":
  Elements."Other reason for regimen substitution (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other reason for regimen substitution (Care) Observation":
  Elements."Other reason for regimen substitution (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other reason for regimen substitution (Care) */

/*
@dataElement: HIV.D.DE457 - Medications prescribed (Care)
@activity: HIV.D23 Prescribe
@description: Name or regimen code of all other medications prescribed during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medications prescribed (Care)":
  exists "Medications prescribed (Care) Observation"
define "Medications prescribed (Care) Observation":
  Elements."Medications prescribed (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Medications prescribed (Care) */

/*
@dataElement: HIV.D.DE458 - Date medications prescribed (Care)
@activity: HIV.D23 Prescribe
@description: Date the medications were prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date medications prescribed (Care)":
  Elements."Date medications prescribed (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date medications prescribed (Care) Value":
  "Date medications prescribed (Care)" O
  return O.value
/* End of Date medications prescribed (Care) */

/*
@dataElement: HIV.D.DE459 - Dose of medications prescribed (Care)
@activity: HIV.D23 Prescribe
@description: Number of doses (quantity taken at a single point in time) of drugs prescribed/dispensed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dose of medications prescribed (Care)":
  Elements."Dose of medications prescribed (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Dose of medications prescribed (Care) Value":
  "Dose of medications prescribed (Care)" O
  return O.value
/* End of Dose of medications prescribed (Care) */

/*
@dataElement: HIV.D.DE460 - Number of days medications prescribed (Care)
@activity: HIV.D23 Prescribe
@description: Number of days supply of each medication or regimen prescribed during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of days medications prescribed (Care)":
  Elements."Number of days medications prescribed (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Number of days medications prescribed (Care) Value":
  "Number of days medications prescribed (Care)" O
  return O.value
/* End of Number of days medications prescribed (Care) */

/*
@dataElement: HIV.D.DE466 - Type of treatment-limiting toxicity (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Type of treatment-limiting toxicity experienced by client. Treatment-limiting toxicity is defined as a serious adverse drug reaction that results in drug discontinuation or substitution. In addition, any reaction that leads to treatment interruption or requires changing the drug or regimen because of an adverse drug reaction is also considered a serious adverse drug reaction.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of treatment-limiting toxicity (Care)":
  exists "Type of treatment-limiting toxicity (Care) Observation"
define "Type of treatment-limiting toxicity (Care) Observation":
  Elements."Type of treatment-limiting toxicity (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Type of treatment-limiting toxicity (Care) */

/*
@dataElement: HIV.D.DE467 - Gastrointestinal (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to GI issues (nausea, diarrhoea, abdominal pain, vomiting)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gastrointestinal (Care)":
  exists "Gastrointestinal (Care) Condition"
    or exists "Gastrointestinal (Care) Observation"
define "Gastrointestinal (Care) Condition":
  Elements."Gastrointestinal (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Gastrointestinal (Care) Observation":
  Elements."Gastrointestinal (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Gastrointestinal (Care) */

/*
@dataElement: HIV.D.DE468 - Skin issues (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to skin issues (rash, hypersensitivity reaction)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Skin issues (Care)":
  exists "Skin issues (Care) Condition"
    or exists "Skin issues (Care) Observation"
define "Skin issues (Care) Condition":
  Elements."Skin issues (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Skin issues (Care) Observation":
  Elements."Skin issues (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Skin issues (Care) */

/*
@dataElement: HIV.D.DE469 - Peripheral neuropathy (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to peripheral neuropathy (burning/numbness/ tingling)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Peripheral neuropathy (Care)":
  exists "Peripheral neuropathy (Care) Condition"
    or exists "Peripheral neuropathy (Care) Observation"
define "Peripheral neuropathy (Care) Condition":
  Elements."Peripheral neuropathy (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Peripheral neuropathy (Care) Observation":
  Elements."Peripheral neuropathy (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Peripheral neuropathy (Care) */

/*
@dataElement: HIV.D.DE470 - Central nervous system symptoms (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to central nervous system symptoms (dizzy, anxiety, nightmare, depression, seizures)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Central nervous system symptoms (Care)":
  exists "Central nervous system symptoms (Care) Condition"
    or exists "Central nervous system symptoms (Care) Observation"
define "Central nervous system symptoms (Care) Condition":
  Elements."Central nervous system symptoms (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Central nervous system symptoms (Care) Observation":
  Elements."Central nervous system symptoms (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Central nervous system symptoms (Care) */

/*
@dataElement: HIV.D.DE471 - Weight gain (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to weight gain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Weight gain (Care)":
  exists "Weight gain (Care) Condition"
    or exists "Weight gain (Care) Observation"
define "Weight gain (Care) Condition":
  Elements."Weight gain (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Weight gain (Care) Observation":
  Elements."Weight gain (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Weight gain (Care) */

/*
@dataElement: HIV.D.DE472 - Hepatic dysfunction (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to hepatic dysfunction (jaundice)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatic dysfunction (Care)":
  exists "Hepatic dysfunction (Care) Condition"
    or exists "Hepatic dysfunction (Care) Observation"
define "Hepatic dysfunction (Care) Condition":
  Elements."Hepatic dysfunction (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Hepatic dysfunction (Care) Observation":
  Elements."Hepatic dysfunction (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Hepatic dysfunction (Care) */

/*
@dataElement: HIV.D.DE473 - Haematological disorders (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to haematological (anaemia, neutropenia) disorders
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haematological disorders (Care)":
  exists "Haematological disorders (Care) Condition"
    or exists "Haematological disorders (Care) Observation"
define "Haematological disorders (Care) Condition":
  Elements."Haematological disorders (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Haematological disorders (Care) Observation":
  Elements."Haematological disorders (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Haematological disorders (Care) */

/*
@dataElement: HIV.D.DE474 - Fatigue (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to fatigue
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fatigue (Care)":
  exists "Fatigue (Care) Condition"
    or exists "Fatigue (Care) Observation"
define "Fatigue (Care) Condition":
  Elements."Fatigue (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Fatigue (Care) Observation":
  Elements."Fatigue (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Fatigue (Care) */

/*
@dataElement: HIV.D.DE475 - Headache (Care|DDE475)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to headache
*/
// TODO: Replace placeholder with relevant CQL logic
define "Headache (Care|DDE475)":
  exists "Headache (Care|DDE475) Condition"
    or exists "Headache (Care|DDE475) Observation"
define "Headache (Care|DDE475) Condition":
  Elements."Headache (Care|DDE475) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Headache (Care|DDE475) Observation":
  Elements."Headache (Care|DDE475) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Headache (Care|DDE475) */

/*
@dataElement: HIV.D.DE476 - Bone dysfunction (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to bone dysfunction (fractures, osteopenia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Bone dysfunction (Care)":
  exists "Bone dysfunction (Care) Condition"
    or exists "Bone dysfunction (Care) Observation"
define "Bone dysfunction (Care) Condition":
  Elements."Bone dysfunction (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Bone dysfunction (Care) Observation":
  Elements."Bone dysfunction (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Bone dysfunction (Care) */

/*
@dataElement: HIV.D.DE477 - Metabolic symptoms (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to metabolic symptoms (body fat changes, hyperglycaemia, dyslipidaemia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Metabolic symptoms (Care)":
  exists "Metabolic symptoms (Care) Condition"
    or exists "Metabolic symptoms (Care) Observation"
define "Metabolic symptoms (Care) Condition":
  Elements."Metabolic symptoms (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Metabolic symptoms (Care) Observation":
  Elements."Metabolic symptoms (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Metabolic symptoms (Care) */

/*
@dataElement: HIV.D.DE478 - Kidney dysfunction (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to kidney dysfunction (nephrolithiasis, renal insufficiency)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Kidney dysfunction (Care)":
  exists "Kidney dysfunction (Care) Condition"
    or exists "Kidney dysfunction (Care) Observation"
define "Kidney dysfunction (Care) Condition":
  Elements."Kidney dysfunction (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Kidney dysfunction (Care) Observation":
  Elements."Kidney dysfunction (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Kidney dysfunction (Care) */

/*
@dataElement: HIV.D.DE479 - Unexpected adverse drug reaction (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client experienced an unexpected adverse drug reaction
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexpected adverse drug reaction (Care)":
  exists "Unexpected adverse drug reaction (Care) Condition"
    or exists "Unexpected adverse drug reaction (Care) Observation"
define "Unexpected adverse drug reaction (Care) Condition":
  Elements."Unexpected adverse drug reaction (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Unexpected adverse drug reaction (Care) Observation":
  Elements."Unexpected adverse drug reaction (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Unexpected adverse drug reaction (Care) */

/*
@dataElement: HIV.D.DE487 - Dates of substitution within second-line regimen (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Date on which ARV drug regimen for client was changed within the second-line regimen (substitution)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dates of substitution within second-line regimen (Care)":
  Elements."Dates of substitution within second-line regimen (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Dates of substitution within second-line regimen (Care) Value":
  "Dates of substitution within second-line regimen (Care)" O
  return O.value
/* End of Dates of substitution within second-line regimen (Care) */

/*
@dataElement: HIV.D.DE493 - Dates of substitution within third-line regimen (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Date on which ARV drug regimen for client was changed within the third-line (substitution)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dates of substitution within third-line regimen (Care)":
  Elements."Dates of substitution within third-line regimen (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Dates of substitution within third-line regimen (Care) Value":
  "Dates of substitution within third-line regimen (Care)" O
  return O.value
/* End of Dates of substitution within third-line regimen (Care) */

/*
@dataElement: HIV.D.DE705 - Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care)
@activity: HIV.D28 Offer other services
@description: Date of diagnosis of cervical precancer lesions or invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care)":
  Elements."Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care) Value":
  "Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care)" O
  return O.value
/* End of Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care) */

/*
@dataElement: HIV.D.DE706 - Cervical cancer screening outcome (Care)
@activity: HIV.D28 Offer other services
@description: Client's screening outcome for cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening outcome (Care)":
  exists "Cervical cancer screening outcome (Care) Observation"
define "Cervical cancer screening outcome (Care) Observation":
  Elements."Cervical cancer screening outcome (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Cervical cancer screening outcome (Care) */

/*
@dataElement: HIV.D.DE707 - Positive for cervical precancer lesions (Care)
@activity: HIV.D28 Offer other services
@description: Screening outcome for cervical precancer lesions is positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive for cervical precancer lesions (Care)":
  exists "Positive for cervical precancer lesions (Care) Condition"
    or exists "Positive for cervical precancer lesions (Care) Observation"
define "Positive for cervical precancer lesions (Care) Condition":
  Elements."Positive for cervical precancer lesions (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Positive for cervical precancer lesions (Care) Observation":
  Elements."Positive for cervical precancer lesions (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Positive for cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE708 - Negative for cervical precancer lesions (Care)
@activity: HIV.D28 Offer other services
@description: Screening outcome for cervical precancer lesions is negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative for cervical precancer lesions (Care)":
  exists "Negative for cervical precancer lesions (Care) Condition"
    or exists "Negative for cervical precancer lesions (Care) Observation"
define "Negative for cervical precancer lesions (Care) Condition":
  Elements."Negative for cervical precancer lesions (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Negative for cervical precancer lesions (Care) Observation":
  Elements."Negative for cervical precancer lesions (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Negative for cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE709 - Cervical cancer diagnosis (Care)
@activity: HIV.D28 Offer other services
@description: Type of cervical cancer diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer diagnosis (Care)":
  exists "Cervical cancer diagnosis (Care) Observation"
define "Cervical cancer diagnosis (Care) Observation":
  Elements."Cervical cancer diagnosis (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Cervical cancer diagnosis (Care) */

/*
@dataElement: HIV.D.DE710 - Cervical precancer lesions (Care)
@activity: HIV.D28 Offer other services
@description: Client is diagnosed with cervical precancer lesions
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical precancer lesions (Care)":
  exists "Cervical precancer lesions (Care) Condition"
    or exists "Cervical precancer lesions (Care) Observation"
define "Cervical precancer lesions (Care) Condition":
  Elements."Cervical precancer lesions (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Cervical precancer lesions (Care) Observation":
  Elements."Cervical precancer lesions (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE711 - Invasive cervical cancer (Care)
@activity: HIV.D28 Offer other services
@description: Client is diagnosed with invasive cervical cancer disease
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical cancer (Care)":
  exists "Invasive cervical cancer (Care) Condition"
    or exists "Invasive cervical cancer (Care) Observation"
define "Invasive cervical cancer (Care) Condition":
  Elements."Invasive cervical cancer (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Invasive cervical cancer (Care) Observation":
  Elements."Invasive cervical cancer (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Invasive cervical cancer (Care) */

/*
@dataElement: HIV.D.DE712 - Cervical cancer stage at diagnosis (Care)
@activity: HIV.D28 Offer other services
@description: Cervical cancer stage at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer stage at diagnosis (Care)":
  exists "Cervical cancer stage at diagnosis (Care) Observation"
define "Cervical cancer stage at diagnosis (Care) Observation":
  Elements."Cervical cancer stage at diagnosis (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Cervical cancer stage at diagnosis (Care) */

/*
@dataElement: HIV.D.DE713 - Stage 0 (Care)
@activity: HIV.D28 Offer other services
@description: Stage 0 cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage 0 (Care)":
  exists "Stage 0 (Care) Condition"
    or exists "Stage 0 (Care) Observation"
define "Stage 0 (Care) Condition":
  Elements."Stage 0 (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Stage 0 (Care) Observation":
  Elements."Stage 0 (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Stage 0 (Care) */

/*
@dataElement: HIV.D.DE714 - Stage I (Care)
@activity: HIV.D28 Offer other services
@description: Stage I cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage I (Care)":
  exists "Stage I (Care) Condition"
    or exists "Stage I (Care) Observation"
define "Stage I (Care) Condition":
  Elements."Stage I (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Stage I (Care) Observation":
  Elements."Stage I (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Stage I (Care) */

/*
@dataElement: HIV.D.DE715 - Stage II (Care)
@activity: HIV.D28 Offer other services
@description: Stage II cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage II (Care)":
  exists "Stage II (Care) Condition"
    or exists "Stage II (Care) Observation"
define "Stage II (Care) Condition":
  Elements."Stage II (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Stage II (Care) Observation":
  Elements."Stage II (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Stage II (Care) */

/*
@dataElement: HIV.D.DE716 - Stage III (Care)
@activity: HIV.D28 Offer other services
@description: Stage III cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage III (Care)":
  exists "Stage III (Care) Condition"
    or exists "Stage III (Care) Observation"
define "Stage III (Care) Condition":
  Elements."Stage III (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Stage III (Care) Observation":
  Elements."Stage III (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Stage III (Care) */

/*
@dataElement: HIV.D.DE717 - Stage IV (Care)
@activity: HIV.D28 Offer other services
@description: Stage IV cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage IV (Care)":
  exists "Stage IV (Care) Condition"
    or exists "Stage IV (Care) Observation"
define "Stage IV (Care) Condition":
  Elements."Stage IV (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Stage IV (Care) Observation":
  Elements."Stage IV (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Stage IV (Care) */

/*
@dataElement: HIV.D.DE718 - Date of treatment for cervical precancer lesions (Care)
@activity: HIV.D28 Offer other services
@description: Date of treatment for cervical precancer lesions
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of treatment for cervical precancer lesions (Care)":
  Elements."Date of treatment for cervical precancer lesions (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date of treatment for cervical precancer lesions (Care) Value":
  "Date of treatment for cervical precancer lesions (Care)" O
  return O.value
/* End of Date of treatment for cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE730 - Invasive cervical cancer treatment episode (Care)
@activity: HIV.D28 Offer other services
@description: Client's lifetime number of treatments for invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical cancer treatment episode (Care)":
  Elements."Invasive cervical cancer treatment episode (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Invasive cervical cancer treatment episode (Care) Value":
  "Invasive cervical cancer treatment episode (Care)" O
  return O.value
/* End of Invasive cervical cancer treatment episode (Care) */

/*
@dataElement: HIV.D.DE731 - Invasive cervical cancer treatment method (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical cancer treatment method (Care)":
  exists "Invasive cervical cancer treatment method (Care) Observation"
define "Invasive cervical cancer treatment method (Care) Observation":
  Elements."Invasive cervical cancer treatment method (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Invasive cervical cancer treatment method (Care) */

/*
@dataElement: HIV.D.DE732 - Conization (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a conization
*/
// TODO: Replace placeholder with relevant CQL logic
define "Conization (Care)":
  exists "Conization (Care) Condition"
    or exists "Conization (Care) Observation"
define "Conization (Care) Condition":
  Elements."Conization (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Conization (Care) Observation":
  Elements."Conization (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Conization (Care) */

/*
@dataElement: HIV.D.DE733 - Trachelectomy (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a trachelectomy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Trachelectomy (Care)":
  exists "Trachelectomy (Care) Condition"
    or exists "Trachelectomy (Care) Observation"
define "Trachelectomy (Care) Condition":
  Elements."Trachelectomy (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Trachelectomy (Care) Observation":
  Elements."Trachelectomy (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Trachelectomy (Care) */

/*
@dataElement: HIV.D.DE734 - Hysterectomy (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a hysterectomy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hysterectomy (Care)":
  exists "Hysterectomy (Care) Condition"
    or exists "Hysterectomy (Care) Observation"
define "Hysterectomy (Care) Condition":
  Elements."Hysterectomy (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Hysterectomy (Care) Observation":
  Elements."Hysterectomy (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Hysterectomy (Care) */

/*
@dataElement: HIV.D.DE735 - Management of invasive cervical cancer (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is management of invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Management of invasive cervical cancer (Care)":
  exists "Management of invasive cervical cancer (Care) Condition"
    or exists "Management of invasive cervical cancer (Care) Observation"
define "Management of invasive cervical cancer (Care) Condition":
  Elements."Management of invasive cervical cancer (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Management of invasive cervical cancer (Care) Observation":
  Elements."Management of invasive cervical cancer (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Management of invasive cervical cancer (Care) */

/*
@dataElement: HIV.D.DE736 - Radiotherapy (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a radiotherapy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Radiotherapy (Care)":
  exists "Radiotherapy (Care) Condition"
    or exists "Radiotherapy (Care) Observation"
define "Radiotherapy (Care) Condition":
  Elements."Radiotherapy (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Radiotherapy (Care) Observation":
  Elements."Radiotherapy (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Radiotherapy (Care) */

/*
@dataElement: HIV.D.DE737 - Chemotherapy (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a chemotherapy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chemotherapy (Care)":
  exists "Chemotherapy (Care) Condition"
    or exists "Chemotherapy (Care) Observation"
define "Chemotherapy (Care) Condition":
  Elements."Chemotherapy (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Chemotherapy (Care) Observation":
  Elements."Chemotherapy (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Chemotherapy (Care) */

/*
@dataElement: HIV.D.DE738 - Chemoradiation (Care)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a chemoradiation
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chemoradiation (Care)":
  exists "Chemoradiation (Care) Condition"
    or exists "Chemoradiation (Care) Observation"
define "Chemoradiation (Care) Condition":
  Elements."Chemoradiation (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Chemoradiation (Care) Observation":
  Elements."Chemoradiation (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Chemoradiation (Care) */

/*
@dataElement: HIV.D.DE739 - Other (Care|DDE739)
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a not in list
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE739)":
  exists "Other (Care|DDE739) Condition"
    or exists "Other (Care|DDE739) Observation"
define "Other (Care|DDE739) Condition":
  Elements."Other (Care|DDE739) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (Care|DDE739) Observation":
  Elements."Other (Care|DDE739) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (Care|DDE739) */

/*
@dataElement: HIV.D.DE760 - Eligible for DSD ART (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is eligible for differentiated service delivery (DSD) for ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Eligible for DSD ART (Care)":
  exists "Eligible for DSD ART (Care) Observation"
define "Eligible for DSD ART (Care) Observation":
  Elements."Eligible for DSD ART (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Eligible for DSD ART (Care) */

/*
@dataElement: HIV.D.DE761 - Date DSD ART eligibility assessed (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Date client was assessed for eligibility for differentiated service delivery (DSD) for ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date DSD ART eligibility assessed (Care)":
  Elements."Date DSD ART eligibility assessed (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date DSD ART eligibility assessed (Care) Value":
  "Date DSD ART eligibility assessed (Care)" O
  return O.value
/* End of Date DSD ART eligibility assessed (Care) */

/*
@dataElement: HIV.D.DE762 - Currently enrolled in DSD ART model (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client currently enrolled in differentiated service delivery (DSD) ART model
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently enrolled in DSD ART model (Care)":
  exists "Currently enrolled in DSD ART model (Care) Observation"
define "Currently enrolled in DSD ART model (Care) Observation":
  Elements."Currently enrolled in DSD ART model (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Currently enrolled in DSD ART model (Care) */

/*
@dataElement: HIV.D.DE763 - DSD ART start date (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Date client started on differentiated service delivery (DSD) for ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "DSD ART start date (Care)":
  Elements."DSD ART start date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "DSD ART start date (Care) Value":
  "DSD ART start date (Care)" O
  return O.value
/* End of DSD ART start date (Care) */

/*
@dataElement: HIV.D.DE764 - DSD ART models (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Type of DSD ART model client is enrolled in (country-specific)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DSD ART models (Care)":
  exists "DSD ART models (Care) Observation"
define "DSD ART models (Care) Observation":
  Elements."DSD ART models (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of DSD ART models (Care) */

/*
@dataElement: HIV.D.DE765 - Fast track ART refill (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in fast track ART refill (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fast track ART refill (Care)":
  exists "Fast track ART refill (Care) Condition"
    or exists "Fast track ART refill (Care) Observation"
define "Fast track ART refill (Care) Condition":
  Elements."Fast track ART refill (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Fast track ART refill (Care) Observation":
  Elements."Fast track ART refill (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Fast track ART refill (Care) */

/*
@dataElement: HIV.D.DE766 - Facility adherence club (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in facility adherence club (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Facility adherence club (Care)":
  exists "Facility adherence club (Care) Condition"
    or exists "Facility adherence club (Care) Observation"
define "Facility adherence club (Care) Condition":
  Elements."Facility adherence club (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Facility adherence club (Care) Observation":
  Elements."Facility adherence club (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Facility adherence club (Care) */

/*
@dataElement: HIV.D.DE767 - Community ART distribution point (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in community ART distribution point (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Community ART distribution point (Care)":
  exists "Community ART distribution point (Care) Condition"
    or exists "Community ART distribution point (Care) Observation"
define "Community ART distribution point (Care) Condition":
  Elements."Community ART distribution point (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Community ART distribution point (Care) Observation":
  Elements."Community ART distribution point (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Community ART distribution point (Care) */

/*
@dataElement: HIV.D.DE768 - CHW/peer educator community ART group (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in community health worker/peer educator community ART group (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "CHW/peer educator community ART group (Care)":
  exists "CHW/peer educator community ART group (Care) Condition"
    or exists "CHW/peer educator community ART group (Care) Observation"
define "CHW/peer educator community ART group (Care) Condition":
  Elements."CHW/peer educator community ART group (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "CHW/peer educator community ART group (Care) Observation":
  Elements."CHW/peer educator community ART group (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of CHW/peer educator community ART group (Care) */

/*
@dataElement: HIV.D.DE769 - Patient/client community ART group (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in patient/client community ART group (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Patient/client community ART group (Care)":
  exists "Patient/client community ART group (Care) Condition"
    or exists "Patient/client community ART group (Care) Observation"
define "Patient/client community ART group (Care) Condition":
  Elements."Patient/client community ART group (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Patient/client community ART group (Care) Observation":
  Elements."Patient/client community ART group (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Patient/client community ART group (Care) */

/*
@dataElement: HIV.D.DE770 - Other DSD ART model (Care)
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in another DSD ART model
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other DSD ART model (Care)":
  exists "Other DSD ART model (Care) Condition"
    or exists "Other DSD ART model (Care) Observation"
define "Other DSD ART model (Care) Condition":
  Elements."Other DSD ART model (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other DSD ART model (Care) Observation":
  Elements."Other DSD ART model (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other DSD ART model (Care) */

/*
@dataElement: HIV.D.DE778 - Syndrome/STI diagnosed (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Syndrome or STI for which client is diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syndrome/STI diagnosed (Care)":
  exists "Syndrome/STI diagnosed (Care) Observation"
define "Syndrome/STI diagnosed (Care) Observation":
  Elements."Syndrome/STI diagnosed (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Syndrome/STI diagnosed (Care) */

/*
@dataElement: HIV.D.DE779 - Urethral discharge syndrome (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with urethral discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral discharge syndrome (Care)":
  exists "Urethral discharge syndrome (Care) Condition"
    or exists "Urethral discharge syndrome (Care) Observation"
define "Urethral discharge syndrome (Care) Condition":
  Elements."Urethral discharge syndrome (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Urethral discharge syndrome (Care) Observation":
  Elements."Urethral discharge syndrome (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Urethral discharge syndrome (Care) */

/*
@dataElement: HIV.D.DE780 - Vaginal discharge syndrome (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with vaginal discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Vaginal discharge syndrome (Care)":
  exists "Vaginal discharge syndrome (Care) Condition"
    or exists "Vaginal discharge syndrome (Care) Observation"
define "Vaginal discharge syndrome (Care) Condition":
  Elements."Vaginal discharge syndrome (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Vaginal discharge syndrome (Care) Observation":
  Elements."Vaginal discharge syndrome (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Vaginal discharge syndrome (Care) */

/*
@dataElement: HIV.D.DE781 - Lower Abdominal pain  (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with lower abdominal pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lower Abdominal pain  (Care)":
  exists "Lower Abdominal pain  (Care) Condition"
    or exists "Lower Abdominal pain  (Care) Observation"
define "Lower Abdominal pain  (Care) Condition":
  Elements."Lower Abdominal pain  (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Lower Abdominal pain  (Care) Observation":
  Elements."Lower Abdominal pain  (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Lower Abdominal pain  (Care) */

/*
@dataElement: HIV.D.DE782 - Genital ulcer disease syndrome (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with genital ulcer disease syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Genital ulcer disease syndrome (Care)":
  exists "Genital ulcer disease syndrome (Care) Condition"
    or exists "Genital ulcer disease syndrome (Care) Observation"
define "Genital ulcer disease syndrome (Care) Condition":
  Elements."Genital ulcer disease syndrome (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Genital ulcer disease syndrome (Care) Observation":
  Elements."Genital ulcer disease syndrome (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Genital ulcer disease syndrome (Care) */

/*
@dataElement: HIV.D.DE783 - Anorectal discharge (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with anorectal discharge
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anorectal discharge (Care)":
  exists "Anorectal discharge (Care) Condition"
    or exists "Anorectal discharge (Care) Observation"
define "Anorectal discharge (Care) Condition":
  Elements."Anorectal discharge (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Anorectal discharge (Care) Observation":
  Elements."Anorectal discharge (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Anorectal discharge (Care) */

/*
@dataElement: HIV.D.DE784 - Sent for testing (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Specimen sent for testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sent for testing (Care)":
  exists "Sent for testing (Care) Condition"
    or exists "Sent for testing (Care) Observation"
define "Sent for testing (Care) Condition":
  Elements."Sent for testing (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Sent for testing (Care) Observation":
  Elements."Sent for testing (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Sent for testing (Care) */

/*
@dataElement: HIV.D.DE785 - Other (Care|DDE785)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Other syndrome/STI diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE785)":
  exists "Other (Care|DDE785) Condition"
    or exists "Other (Care|DDE785) Observation"
define "Other (Care|DDE785) Condition":
  Elements."Other (Care|DDE785) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (Care|DDE785) Observation":
  Elements."Other (Care|DDE785) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (Care|DDE785) */

/*
@dataElement: HIV.D.DE787 - Any STI syndrome diagnosed (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Was the client diagnosed with any of the five STI syndromes during this visit?
*/
// TODO: Replace placeholder with relevant CQL logic
define "Any STI syndrome diagnosed (Care)":
  exists "Any STI syndrome diagnosed (Care) Observation"
define "Any STI syndrome diagnosed (Care) Observation":
  Elements."Any STI syndrome diagnosed (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Any STI syndrome diagnosed (Care) */

/*
@dataElement: HIV.D.DE801 - Syphilis test date (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test date (Care)":
  Elements."Syphilis test date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Syphilis test date (Care) Value":
  "Syphilis test date (Care)" O
  return O.value
/* End of Syphilis test date (Care) */

/*
@dataElement: HIV.D.DE806 - Syphilis treatment start date (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of initiation of syphilis treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis treatment start date (Care)":
  Elements."Syphilis treatment start date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Syphilis treatment start date (Care) Value":
  "Syphilis treatment start date (Care)" O
  return O.value
/* End of Syphilis treatment start date (Care) */

/*
@dataElement: HIV.D.DE807 - Gonorrhoea test date (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test date (Care)":
  Elements."Gonorrhoea test date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Gonorrhoea test date (Care) Value":
  "Gonorrhoea test date (Care)" O
  return O.value
/* End of Gonorrhoea test date (Care) */

/*
@dataElement: HIV.D.DE808 - Gonorrhoea test result (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Result from Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test result (Care)":
  exists "Gonorrhoea test result (Care) Observation"
define "Gonorrhoea test result (Care) Observation":
  Elements."Gonorrhoea test result (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Gonorrhoea test result (Care) */

/*
@dataElement: HIV.D.DE809 - Positive (Care|DDE809)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is positive for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Care|DDE809)":
  exists "Positive (Care|DDE809) Condition"
    or exists "Positive (Care|DDE809) Observation"
define "Positive (Care|DDE809) Condition":
  Elements."Positive (Care|DDE809) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Positive (Care|DDE809) Observation":
  Elements."Positive (Care|DDE809) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Positive (Care|DDE809) */

/*
@dataElement: HIV.D.DE810 - Negative (Care|DDE810)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is negative for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Care|DDE810)":
  exists "Negative (Care|DDE810) Condition"
    or exists "Negative (Care|DDE810) Observation"
define "Negative (Care|DDE810) Condition":
  Elements."Negative (Care|DDE810) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Negative (Care|DDE810) Observation":
  Elements."Negative (Care|DDE810) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Negative (Care|DDE810) */

/*
@dataElement: HIV.D.DE811 - Inconclusive (Care|DDE811)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (Care|DDE811)":
  exists "Inconclusive (Care|DDE811) Condition"
    or exists "Inconclusive (Care|DDE811) Observation"
define "Inconclusive (Care|DDE811) Condition":
  Elements."Inconclusive (Care|DDE811) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Inconclusive (Care|DDE811) Observation":
  Elements."Inconclusive (Care|DDE811) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Inconclusive (Care|DDE811) */

/*
@dataElement: HIV.D.DE812 - Gonorrhoea treatment start date (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of initiation of Gonorrhoea treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea treatment start date (Care)":
  Elements."Gonorrhoea treatment start date (Care)" O
    where O.effective.toInterval() during "Measurement Period"
define "Gonorrhoea treatment start date (Care) Value":
  "Gonorrhoea treatment start date (Care)" O
  return O.value
/* End of Gonorrhoea treatment start date (Care) */

/*
@dataElement: HIV.D.DE813 - Type of specimen (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Type of specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of specimen (Care)":
  exists "Type of specimen (Care) Observation"
define "Type of specimen (Care) Observation":
  Elements."Type of specimen (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Type of specimen (Care) */

/*
@dataElement: HIV.D.DE814 - Blood (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Blood specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Blood (Care)":
  exists "Blood (Care) Condition"
    or exists "Blood (Care) Observation"
define "Blood (Care) Condition":
  Elements."Blood (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Blood (Care) Observation":
  Elements."Blood (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Blood (Care) */

/*
@dataElement: HIV.D.DE815 - Urine (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Urine specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urine (Care)":
  exists "Urine (Care) Condition"
    or exists "Urine (Care) Observation"
define "Urine (Care) Condition":
  Elements."Urine (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Urine (Care) Observation":
  Elements."Urine (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Urine (Care) */

/*
@dataElement: HIV.D.DE816 - Cervical or vaginal swab (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Cervical or vaginal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical or vaginal swab (Care)":
  exists "Cervical or vaginal swab (Care) Condition"
    or exists "Cervical or vaginal swab (Care) Observation"
define "Cervical or vaginal swab (Care) Condition":
  Elements."Cervical or vaginal swab (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Cervical or vaginal swab (Care) Observation":
  Elements."Cervical or vaginal swab (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Cervical or vaginal swab (Care) */

/*
@dataElement: HIV.D.DE817 - Urethral or penile swab (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Urethral or penile swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral or penile swab (Care)":
  exists "Urethral or penile swab (Care) Condition"
    or exists "Urethral or penile swab (Care) Observation"
define "Urethral or penile swab (Care) Condition":
  Elements."Urethral or penile swab (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Urethral or penile swab (Care) Observation":
  Elements."Urethral or penile swab (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Urethral or penile swab (Care) */

/*
@dataElement: HIV.D.DE818 - Rectal swab (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Rectal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rectal swab (Care)":
  exists "Rectal swab (Care) Condition"
    or exists "Rectal swab (Care) Observation"
define "Rectal swab (Care) Condition":
  Elements."Rectal swab (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Rectal swab (Care) Observation":
  Elements."Rectal swab (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Rectal swab (Care) */

/*
@dataElement: HIV.D.DE819 - Other (Care|DDE819)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Other specimen type to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE819)":
  exists "Other (Care|DDE819) Condition"
    or exists "Other (Care|DDE819) Observation"
define "Other (Care|DDE819) Condition":
  Elements."Other (Care|DDE819) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (Care|DDE819) Observation":
  Elements."Other (Care|DDE819) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (Care|DDE819) */

/*
@dataElement: HIV.D.DE828 - Neisseria gonorrhoeae test type (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Type of diagnostic test used for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neisseria gonorrhoeae test type (Care)":
  exists "Neisseria gonorrhoeae test type (Care) Observation"
define "Neisseria gonorrhoeae test type (Care) Observation":
  Elements."Neisseria gonorrhoeae test type (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Neisseria gonorrhoeae test type (Care) */

/*
@dataElement: HIV.D.DE829 - NAAT (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Nucleic Acid Amplification Test (NAAT) used
*/
// TODO: Replace placeholder with relevant CQL logic
define "NAAT (Care)":
  exists "NAAT (Care) Condition"
    or exists "NAAT (Care) Observation"
define "NAAT (Care) Condition":
  Elements."NAAT (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "NAAT (Care) Observation":
  Elements."NAAT (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of NAAT (Care) */

/*
@dataElement: HIV.D.DE830 - POC Test (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Point-of-care (POC) test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "POC Test (Care)":
  exists "POC Test (Care) Condition"
    or exists "POC Test (Care) Observation"
define "POC Test (Care) Condition":
  Elements."POC Test (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "POC Test (Care) Observation":
  Elements."POC Test (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of POC Test (Care) */

/*
@dataElement: HIV.D.DE831 - Culture (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Culture test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Culture (Care)":
  exists "Culture (Care) Condition"
    or exists "Culture (Care) Observation"
define "Culture (Care) Condition":
  Elements."Culture (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Culture (Care) Observation":
  Elements."Culture (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Culture (Care) */

/*
@dataElement: HIV.D.DE832 - Microscopy (Care)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Microscopy test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Microscopy (Care)":
  exists "Microscopy (Care) Condition"
    or exists "Microscopy (Care) Observation"
define "Microscopy (Care) Condition":
  Elements."Microscopy (Care) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Microscopy (Care) Observation":
  Elements."Microscopy (Care) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Microscopy (Care) */

/*
@dataElement: HIV.D.DE833 - Other (Care|DDE833)
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Other type of test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE833)":
  exists "Other (Care|DDE833) Condition"
    or exists "Other (Care|DDE833) Observation"
define "Other (Care|DDE833) Condition":
  Elements."Other (Care|DDE833) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (Care|DDE833) Observation":
  Elements."Other (Care|DDE833) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (Care|DDE833) */

/*
@dataElement: HIV.D.DE952 - Date of TB diagnosis (HIV)
@activity: HIV.D8 Capture or update client history
@description: The date when the diagnosis was established
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of TB diagnosis (HIV)":
  Elements."Date of TB diagnosis (HIV)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date of TB diagnosis (HIV) Value":
  "Date of TB diagnosis (HIV)" O
  return O.value
/* End of Date of TB diagnosis (HIV) */

/*
@dataElement: HIV.D.DE954 - TB preventive treatment TPT start date (HIV)
@activity: HIV.D8 Capture or update client history
@description: The date on which the client began taking TPT
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB preventive treatment TPT start date (HIV)":
  Elements."TB preventive treatment TPT start date (HIV)" O
    where O.effective.toInterval() during "Measurement Period"
define "TB preventive treatment TPT start date (HIV) Value":
  "TB preventive treatment TPT start date (HIV)" O
  return O.value
/* End of TB preventive treatment TPT start date (HIV) */

/*
@dataElement: HIV.D.DE990 - TB screening date (HIV)
@activity: HIV.D4 Screen for TB
@description: Date the TB screening was conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB screening date (HIV)":
  Elements."TB screening date (HIV)" O
    where O.effective.toInterval() during "Measurement Period"
define "TB screening date (HIV) Value":
  "TB screening date (HIV)" O
  return O.value
/* End of TB screening date (HIV) */

/*
@dataElement: HIV.D.DE992 - TB diagnostic test category (HIV)
@activity: HIV.D4 Screen for TB
@description: The type of diagnostic test performed to detect tuberculosis (TB) disease
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB diagnostic test category (HIV)":
  exists "TB diagnostic test category (HIV) Observation"
define "TB diagnostic test category (HIV) Observation":
  Elements."TB diagnostic test category (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of TB diagnostic test category (HIV) */

/*
@dataElement: HIV.D.DE993 - LF-LAM (HIV)
@activity: HIV.D4 Screen for TB
@description: Client tested for tuberculosis with a lateral flow urine lipoarabinomannan assay
*/
// TODO: Replace placeholder with relevant CQL logic
define "LF-LAM (HIV)":
  exists "LF-LAM (HIV) Condition"
    or exists "LF-LAM (HIV) Observation"
define "LF-LAM (HIV) Condition":
  Elements."LF-LAM (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "LF-LAM (HIV) Observation":
  Elements."LF-LAM (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of LF-LAM (HIV) */

/*
@dataElement: HIV.D.DE994 - mWRD test for TB (HIV)
@activity: HIV.D4 Screen for TB
@description: Client tested with a WHO-recommended molecular diagnostic test to detect Mycobacterium tuberculosis (MTB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "mWRD test for TB (HIV)":
  exists "mWRD test for TB (HIV) Condition"
    or exists "mWRD test for TB (HIV) Observation"
define "mWRD test for TB (HIV) Condition":
  Elements."mWRD test for TB (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "mWRD test for TB (HIV) Observation":
  Elements."mWRD test for TB (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of mWRD test for TB (HIV) */

/*
@dataElement: HIV.D.DE995 - Microscopy - Sputum acid-fast bacilli AFB (HIV)
@activity: HIV.D4 Screen for TB
@description: Client tested for tuberculosis with a sputum acid-fast bacilli (AFB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Microscopy - Sputum acid-fast bacilli AFB (HIV)":
  exists "Microscopy - Sputum acid-fast bacilli AFB (HIV) Condition"
    or exists "Microscopy - Sputum acid-fast bacilli AFB (HIV) Observation"
define "Microscopy - Sputum acid-fast bacilli AFB (HIV) Condition":
  Elements."Microscopy - Sputum acid-fast bacilli AFB (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Microscopy - Sputum acid-fast bacilli AFB (HIV) Observation":
  Elements."Microscopy - Sputum acid-fast bacilli AFB (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Microscopy - Sputum acid-fast bacilli AFB (HIV) */

/*
@dataElement: HIV.D.DE996 - TB Culture (HIV)
@activity: HIV.D4 Screen for TB
@description: Client tested for tuberculosis (TB) with a culture
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB Culture (HIV)":
  exists "TB Culture (HIV) Condition"
    or exists "TB Culture (HIV) Observation"
define "TB Culture (HIV) Condition":
  Elements."TB Culture (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "TB Culture (HIV) Observation":
  Elements."TB Culture (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of TB Culture (HIV) */

/*
@dataElement: HIV.D.DE997 - TB diagnostic test date (HIV)
@activity: HIV.D4 Screen for TB
@description: The date when TB diagnostic test was performed
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB diagnostic test date (HIV)":
  Elements."TB diagnostic test date (HIV)" O
    where O.effective.toInterval() during "Measurement Period"
define "TB diagnostic test date (HIV) Value":
  "TB diagnostic test date (HIV)" O
  return O.value
/* End of TB diagnostic test date (HIV) */

/*
@dataElement: HIV.D.DE1001 - TB treatment start date (HIV)
@activity: HIV.D8 Capture or update client history
@description: The date on which the client start or restarted tuberculosis (TB) treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB treatment start date (HIV)":
  Elements."TB treatment start date (HIV)" O
    where O.effective.toInterval() during "Measurement Period"
define "TB treatment start date (HIV) Value":
  "TB treatment start date (HIV)" O
  return O.value
/* End of TB treatment start date (HIV) */

/*
@dataElement: HIV.D.DE1017 - Eligible for TB preventive treatment (HIV)
@activity: HIV.D14 Prevent, screen, and manage comorbidities and coinfections
@description: Client is eligible for tuberculosis preventive treatment (TPT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Eligible for TB preventive treatment (HIV)":
  exists "Eligible for TB preventive treatment (HIV) Observation"
define "Eligible for TB preventive treatment (HIV) Observation":
  Elements."Eligible for TB preventive treatment (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Eligible for TB preventive treatment (HIV) */

/*
@dataElement: HIV.D.DE1028 - TPT regimen type (HIV)
@activity: HIV.D4 Screen for TB
@description: Type of TPT regimen the client is currently on
*/
// TODO: Replace placeholder with relevant CQL logic
define "TPT regimen type (HIV)":
  exists "TPT regimen type (HIV) Observation"
define "TPT regimen type (HIV) Observation":
  Elements."TPT regimen type (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of TPT regimen type (HIV) */

/*
@dataElement: HIV.D.DE1029 - 3HP (HIV)
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is 3HP
*/
// TODO: Replace placeholder with relevant CQL logic
define "3HP (HIV)":
  exists "3HP (HIV) Condition"
    or exists "3HP (HIV) Observation"
define "3HP (HIV) Condition":
  Elements."3HP (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "3HP (HIV) Observation":
  Elements."3HP (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of 3HP (HIV) */

/*
@dataElement: HIV.D.DE1030 - 1HP (HIV)
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is 1HP
*/
// TODO: Replace placeholder with relevant CQL logic
define "1HP (HIV)":
  exists "1HP (HIV) Condition"
    or exists "1HP (HIV) Observation"
define "1HP (HIV) Condition":
  Elements."1HP (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "1HP (HIV) Observation":
  Elements."1HP (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of 1HP (HIV) */

/*
@dataElement: HIV.D.DE1031 - 6H (HIV)
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is 6H
*/
// TODO: Replace placeholder with relevant CQL logic
define "6H (HIV)":
  exists "6H (HIV) Condition"
    or exists "6H (HIV) Observation"
define "6H (HIV) Condition":
  Elements."6H (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "6H (HIV) Observation":
  Elements."6H (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of 6H (HIV) */

/*
@dataElement: HIV.D.DE1032 - Six months of levofloxacin daily (HIV)
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is six months of levofloxacin daily
*/
// TODO: Replace placeholder with relevant CQL logic
define "Six months of levofloxacin daily (HIV)":
  exists "Six months of levofloxacin daily (HIV) Condition"
    or exists "Six months of levofloxacin daily (HIV) Observation"
define "Six months of levofloxacin daily (HIV) Condition":
  Elements."Six months of levofloxacin daily (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Six months of levofloxacin daily (HIV) Observation":
  Elements."Six months of levofloxacin daily (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Six months of levofloxacin daily (HIV) */

/*
@dataElement: HIV.D.DE1033 - Other TB preventive treatment TPT regimen (HIV)
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is another regimen than those listed above
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other TB preventive treatment TPT regimen (HIV)":
  exists "Other TB preventive treatment TPT regimen (HIV) Condition"
    or exists "Other TB preventive treatment TPT regimen (HIV) Observation"
define "Other TB preventive treatment TPT regimen (HIV) Condition":
  Elements."Other TB preventive treatment TPT regimen (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other TB preventive treatment TPT regimen (HIV) Observation":
  Elements."Other TB preventive treatment TPT regimen (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other TB preventive treatment TPT regimen (HIV) */

/*
@dataElement: HIV.D.DE1034 - TB preventive treatment TPT status (HIV)
@activity: HIV.D4 Screen for TB
@description: Indicates the current status of TB preventive treatment (TPT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB preventive treatment TPT status (HIV)":
  exists "TB preventive treatment TPT status (HIV) Observation"
define "TB preventive treatment TPT status (HIV) Observation":
  Elements."TB preventive treatment TPT status (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of TB preventive treatment TPT status (HIV) */

/*
@dataElement: HIV.D.DE1035 - Not started (HIV)
@activity: HIV.D4 Screen for TB
@description: The client did not start the TB preventive treatment (TPT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not started (HIV)":
  exists "Not started (HIV) Condition"
    or exists "Not started (HIV) Observation"
define "Not started (HIV) Condition":
  Elements."Not started (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Not started (HIV) Observation":
  Elements."Not started (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Not started (HIV) */

/*
@dataElement: HIV.D.DE1036 - On TPT (HIV)
@activity: HIV.D4 Screen for TB
@description: The client started the TB preventive treatment (TPT) and is currently taking the medication, without treatment interruptions
*/
// TODO: Replace placeholder with relevant CQL logic
define "On TPT (HIV)":
  exists "On TPT (HIV) Condition"
    or exists "On TPT (HIV) Observation"
define "On TPT (HIV) Condition":
  Elements."On TPT (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "On TPT (HIV) Observation":
  Elements."On TPT (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of On TPT (HIV) */

/*
@dataElement: HIV.D.DE1037 - On TPT with interruptions (HIV)
@activity: HIV.D4 Screen for TB
@description: The client started the TB preventive treatment (TPT) and is currently taking the medication, with treatment interruptions
*/
// TODO: Replace placeholder with relevant CQL logic
define "On TPT with interruptions (HIV)":
  exists "On TPT with interruptions (HIV) Condition"
    or exists "On TPT with interruptions (HIV) Observation"
define "On TPT with interruptions (HIV) Condition":
  Elements."On TPT with interruptions (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "On TPT with interruptions (HIV) Observation":
  Elements."On TPT with interruptions (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of On TPT with interruptions (HIV) */

/*
@dataElement: HIV.D.DE1038 - On hold (HIV)
@activity: HIV.D4 Screen for TB
@description: The health care worker has temporarily stopped the TB preventive treatment (TPT), but TPT is expected to continue again later. May also be called 'suspended'.
*/
// TODO: Replace placeholder with relevant CQL logic
define "On hold (HIV)":
  exists "On hold (HIV) Condition"
    or exists "On hold (HIV) Observation"
define "On hold (HIV) Condition":
  Elements."On hold (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "On hold (HIV) Observation":
  Elements."On hold (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of On hold (HIV) */

/*
@dataElement: HIV.D.DE1039 - Completed (HIV)
@activity: HIV.D4 Screen for TB
@description: TB preventive treatment (TPT) was completed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Completed (HIV)":
  exists "Completed (HIV) Condition"
    or exists "Completed (HIV) Observation"
define "Completed (HIV) Condition":
  Elements."Completed (HIV) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Completed (HIV) Observation":
  Elements."Completed (HIV) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Completed (HIV) */

/*
@dataElement: HIV.E.DE41 - Timing of ART initiation (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: When the pregnant woman or mother initiated ART, for women living with HIV.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Timing of ART initiation (PMTCT)":
  exists "Timing of ART initiation (PMTCT) Observation"
define "Timing of ART initiation (PMTCT) Observation":
  Elements."Timing of ART initiation (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Timing of ART initiation (PMTCT) */

/*
@dataElement: HIV.E.DE42 - Already on ART at first antenatal care visit (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The pregnant woman was already on antiretroviral therapy (ART) at first antenatal care visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Already on ART at first antenatal care visit (PMTCT)":
  exists "Already on ART at first antenatal care visit (PMTCT) Condition"
    or exists "Already on ART at first antenatal care visit (PMTCT) Observation"
define "Already on ART at first antenatal care visit (PMTCT) Condition":
  Elements."Already on ART at first antenatal care visit (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Already on ART at first antenatal care visit (PMTCT) Observation":
  Elements."Already on ART at first antenatal care visit (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Already on ART at first antenatal care visit (PMTCT) */

/*
@dataElement: HIV.E.DE43 - Newly on ART during pregnancy (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The pregnant woman started ART during her pregnancy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Newly on ART during pregnancy (PMTCT)":
  exists "Newly on ART during pregnancy (PMTCT) Condition"
    or exists "Newly on ART during pregnancy (PMTCT) Observation"
define "Newly on ART during pregnancy (PMTCT) Condition":
  Elements."Newly on ART during pregnancy (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Newly on ART during pregnancy (PMTCT) Observation":
  Elements."Newly on ART during pregnancy (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Newly on ART during pregnancy (PMTCT) */

/*
@dataElement: HIV.E.DE44 - Newly on ART during labour and delivery (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The woman started ART during labour and delivery
*/
// TODO: Replace placeholder with relevant CQL logic
define "Newly on ART during labour and delivery (PMTCT)":
  exists "Newly on ART during labour and delivery (PMTCT) Condition"
    or exists "Newly on ART during labour and delivery (PMTCT) Observation"
define "Newly on ART during labour and delivery (PMTCT) Condition":
  Elements."Newly on ART during labour and delivery (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Newly on ART during labour and delivery (PMTCT) Observation":
  Elements."Newly on ART during labour and delivery (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Newly on ART during labour and delivery (PMTCT) */

/*
@dataElement: HIV.E.DE46 - Delivery date (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Date on which the woman delivered
*/
// TODO: Replace placeholder with relevant CQL logic
define "Delivery date (PMTCT)":
  Elements."Delivery date (PMTCT)" O
    where O.effective.toInterval() during "Measurement Period"
define "Delivery date (PMTCT) Value":
  "Delivery date (PMTCT)" O
  return O.value
/* End of Delivery date (PMTCT) */

/*
@dataElement: HIV.E.DE67 - Place of delivery (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The type of place where the woman delivered
*/
// TODO: Replace placeholder with relevant CQL logic
define "Place of delivery (PMTCT)":
  exists "Place of delivery (PMTCT) Observation"
define "Place of delivery (PMTCT) Observation":
  Elements."Place of delivery (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Place of delivery (PMTCT) */

/*
@dataElement: HIV.E.DE68 - Health facility (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The woman delivered at a health facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Health facility (PMTCT)":
  exists "Health facility (PMTCT) Condition"
    or exists "Health facility (PMTCT) Observation"
define "Health facility (PMTCT) Condition":
  Elements."Health facility (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Health facility (PMTCT) Observation":
  Elements."Health facility (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Health facility (PMTCT) */

/*
@dataElement: HIV.E.DE69 - Home (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The woman delivered at home
*/
// TODO: Replace placeholder with relevant CQL logic
define "Home (PMTCT)":
  exists "Home (PMTCT) Condition"
    or exists "Home (PMTCT) Observation"
define "Home (PMTCT) Condition":
  Elements."Home (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Home (PMTCT) Observation":
  Elements."Home (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Home (PMTCT) */

/*
@dataElement: HIV.E.DE70 - Other (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The woman delivered at another location that is not at home or at a health facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PMTCT)":
  exists "Other (PMTCT) Condition"
    or exists "Other (PMTCT) Observation"
define "Other (PMTCT) Condition":
  Elements."Other (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (PMTCT) Observation":
  Elements."Other (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (PMTCT) */

/*
@dataElement: HIV.E.DE87 - Infant date of birth (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: The infant's date of birth (DOB) if known
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infant date of birth (PMTCT)":
  Elements."Infant date of birth (PMTCT)" O
    where O.effective.toInterval() during "Measurement Period"
define "Infant date of birth (PMTCT) Value":
  "Infant date of birth (PMTCT)" O
  return O.value
/* End of Infant date of birth (PMTCT) */

/*
@dataElement: HIV.E.DE90 - Age of infant (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Infant age calculated using date of birth
*/
// TODO: Replace placeholder with relevant CQL logic
define "Age of infant (PMTCT)":
  Elements."Age of infant (PMTCT)" O
    where O.effective.toInterval() during "Measurement Period"
define "Age of infant (PMTCT) Value":
  "Age of infant (PMTCT)" O
  return O.value
/* End of Age of infant (PMTCT) */

/*
@dataElement: HIV.E.DE112 - HIV-exposed infant or child (PMTCT)
@activity: HIV.F6 Check whether infant/child had HIV exposure
@description: Whether the infant or child was determined to have had HIV exposure
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-exposed infant or child (PMTCT)":
  exists "HIV-exposed infant or child (PMTCT) Observation"
define "HIV-exposed infant or child (PMTCT) Observation":
  Elements."HIV-exposed infant or child (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-exposed infant or child (PMTCT) */

/*
@dataElement: HIV.E.DE173 - Maternal and child health service visit (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: Maternal and child health service visit attended by an HIV-exposed infant
*/
// TODO: Replace placeholder with relevant CQL logic
define "Maternal and child health service visit (PMTCT)":
  exists "Maternal and child health service visit (PMTCT) Observation"
define "Maternal and child health service visit (PMTCT) Observation":
  Elements."Maternal and child health service visit (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Maternal and child health service visit (PMTCT) */

/*
@dataElement: HIV.E.DE174 - 12-month visit (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: HIV-exposed infant attending MCH services for a 12-month visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "12-month visit (PMTCT)":
  exists "12-month visit (PMTCT) Condition"
    or exists "12-month visit (PMTCT) Observation"
define "12-month visit (PMTCT) Condition":
  Elements."12-month visit (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "12-month visit (PMTCT) Observation":
  Elements."12-month visit (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of 12-month visit (PMTCT) */

/*
@dataElement: HIV.E.DE175 - 24-month visit (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: HIV-exposed infants attending MCH services for a 24-month visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "24-month visit (PMTCT)":
  exists "24-month visit (PMTCT) Condition"
    or exists "24-month visit (PMTCT) Observation"
define "24-month visit (PMTCT) Condition":
  Elements."24-month visit (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "24-month visit (PMTCT) Observation":
  Elements."24-month visit (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of 24-month visit (PMTCT) */

/*
@dataElement: HIV.E.DE176 - First visit after the end of breastfeeding (PMTCT)
@activity: HIV.E1 Capture or update mother's history
@description: HIV-exposed infant attending MCH services for a first visit after the end of breastfeeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "First visit after the end of breastfeeding (PMTCT)":
  exists "First visit after the end of breastfeeding (PMTCT) Condition"
    or exists "First visit after the end of breastfeeding (PMTCT) Observation"
define "First visit after the end of breastfeeding (PMTCT) Condition":
  Elements."First visit after the end of breastfeeding (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "First visit after the end of breastfeeding (PMTCT) Observation":
  Elements."First visit after the end of breastfeeding (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of First visit after the end of breastfeeding (PMTCT) */

/*
@dataElement: HIV.E.DE179 - Registered in birth cohort (PMTCT)
@activity: HIV.F3 Capture or update infant's/child's history
@description: Whether the infant has been registered in a birth cohort
*/
// TODO: Replace placeholder with relevant CQL logic
define "Registered in birth cohort (PMTCT)":
  exists "Registered in birth cohort (PMTCT) Observation"
define "Registered in birth cohort (PMTCT) Observation":
  Elements."Registered in birth cohort (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Registered in birth cohort (PMTCT) */

/*
@dataElement: HIV.E.DE224 - HIV test date (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Date of the HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test date (PMTCT)":
  Elements."HIV test date (PMTCT)" O
    where O.effective.toInterval() during "Measurement Period"
define "HIV test date (PMTCT) Value":
  "HIV test date (PMTCT)" O
  return O.value
/* End of HIV test date (PMTCT) */

/*
@dataElement: HIV.E.DE225 - Infant HIV status (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: HIV status reported after applying the HIV testing algorithm. No single HIV test can provide an HIV-positive diagnosis.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infant HIV status (PMTCT)":
  exists "Infant HIV status (PMTCT) Observation"
define "Infant HIV status (PMTCT) Observation":
  Elements."Infant HIV status (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Infant HIV status (PMTCT) */

/*
@dataElement: HIV.E.DE226 - HIV-positive (PMTCT|EDE226)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Infant is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (PMTCT|EDE226)":
  exists "HIV-positive (PMTCT|EDE226) Condition"
    or exists "HIV-positive (PMTCT|EDE226) Observation"
define "HIV-positive (PMTCT|EDE226) Condition":
  Elements."HIV-positive (PMTCT|EDE226) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "HIV-positive (PMTCT|EDE226) Observation":
  Elements."HIV-positive (PMTCT|EDE226) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-positive (PMTCT|EDE226) */

/*
@dataElement: HIV.E.DE227 - HIV-negative (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Infant is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative (PMTCT)":
  exists "HIV-negative (PMTCT) Condition"
    or exists "HIV-negative (PMTCT) Observation"
define "HIV-negative (PMTCT) Condition":
  Elements."HIV-negative (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "HIV-negative (PMTCT) Observation":
  Elements."HIV-negative (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-negative (PMTCT) */

/*
@dataElement: HIV.E.DE228 - Unknown (PMTCT)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Infant has unknown HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unknown (PMTCT)":
  exists "Unknown (PMTCT) Condition"
    or exists "Unknown (PMTCT) Observation"
define "Unknown (PMTCT) Condition":
  Elements."Unknown (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Unknown (PMTCT) Observation":
  Elements."Unknown (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Unknown (PMTCT) */

/*
@dataElement: HIV.E.DE229 - Infant ART start date (PMTCT)
@activity: HIV.F16 Immediately start infant on ART
@description: The date on which the infant was started or restarted on antiretroviral therapy (ART)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infant ART start date (PMTCT)":
  Elements."Infant ART start date (PMTCT)" O
    where O.effective.toInterval() during "Measurement Period"
define "Infant ART start date (PMTCT) Value":
  "Infant ART start date (PMTCT)" O
  return O.value
/* End of Infant ART start date (PMTCT) */

/*
@dataElement: HIV.E.DE230 - Final diagnosis of HIV-exposed infant (PMTCT)
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: HIV-exposed infant final status at 18 months or 3 months after cessation of breastfeeding (whichever is later).
*/
// TODO: Replace placeholder with relevant CQL logic
define "Final diagnosis of HIV-exposed infant (PMTCT)":
  exists "Final diagnosis of HIV-exposed infant (PMTCT) Observation"
define "Final diagnosis of HIV-exposed infant (PMTCT) Observation":
  Elements."Final diagnosis of HIV-exposed infant (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Final diagnosis of HIV-exposed infant (PMTCT) */

/*
@dataElement: HIV.E.DE231 - HIV-positive (PMTCT|EDE231)
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: The infant is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (PMTCT|EDE231)":
  exists "HIV-positive (PMTCT|EDE231) Condition"
    or exists "HIV-positive (PMTCT|EDE231) Observation"
define "HIV-positive (PMTCT|EDE231) Condition":
  Elements."HIV-positive (PMTCT|EDE231) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "HIV-positive (PMTCT|EDE231) Observation":
  Elements."HIV-positive (PMTCT|EDE231) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-positive (PMTCT|EDE231) */

/*
@dataElement: HIV.E.DE232 - HIV-negative and no longer breastfeeding (PMTCT)
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: The infant is HIV-negative and the mother has quit breastfeeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative and no longer breastfeeding (PMTCT)":
  exists "HIV-negative and no longer breastfeeding (PMTCT) Condition"
    or exists "HIV-negative and no longer breastfeeding (PMTCT) Observation"
define "HIV-negative and no longer breastfeeding (PMTCT) Condition":
  Elements."HIV-negative and no longer breastfeeding (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "HIV-negative and no longer breastfeeding (PMTCT) Observation":
  Elements."HIV-negative and no longer breastfeeding (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-negative and no longer breastfeeding (PMTCT) */

/*
@dataElement: HIV.E.DE233 - HIV status unknown (PMTCT)
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: The final HIV status of the child is unknown because the infant died, was lost to follow-up or transferred out without ever having an HIV-positive diagnosis or is active in care but was not tested at 18 months
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV status unknown (PMTCT)":
  exists "HIV status unknown (PMTCT) Condition"
    or exists "HIV status unknown (PMTCT) Observation"
define "HIV status unknown (PMTCT) Condition":
  Elements."HIV status unknown (PMTCT) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "HIV status unknown (PMTCT) Observation":
  Elements."HIV status unknown (PMTCT) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV status unknown (PMTCT) */

/*
@dataElement: HIV.G.DE3 - Baseline CD4 count (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: CD4 count performed at HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Baseline CD4 count (Diagnostics)":
  Elements."Baseline CD4 count (Diagnostics)" O
    where O.effective.toInterval() during "Measurement Period"
define "Baseline CD4 count (Diagnostics) Value":
  "Baseline CD4 count (Diagnostics)" O
  return O.value
/* End of Baseline CD4 count (Diagnostics) */

/*
@dataElement: HIV.G.DE17 - HBsAg test date (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: Date client was tested for hepatitis B virus (HBV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test date (Diagnostics)":
  Elements."HBsAg test date (Diagnostics)" O
    where O.effective.toInterval() during "Measurement Period"
define "HBsAg test date (Diagnostics) Value":
  "HBsAg test date (Diagnostics)" O
  return O.value
/* End of HBsAg test date (Diagnostics) */

/*
@dataElement: HIV.G.DE42 - HCV test date (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: Date client was tested for hepatitis C virus (HCV antibody, HCV RNA or HCV core antigen)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV test date (Diagnostics)":
  Elements."HCV test date (Diagnostics)" O
    where O.effective.toInterval() during "Measurement Period"
define "HCV test date (Diagnostics) Value":
  "HCV test date (Diagnostics)" O
  return O.value
/* End of HCV test date (Diagnostics) */

/*
@dataElement: HIV.G.DE47 - HCV viral load test date (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: Hepatitis C viral load test date
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test date (Diagnostics)":
  Elements."HCV viral load test date (Diagnostics)" O
    where O.effective.toInterval() during "Measurement Period"
define "HCV viral load test date (Diagnostics) Value":
  "HCV viral load test date (Diagnostics)" O
  return O.value
/* End of HCV viral load test date (Diagnostics) */

/*
@dataElement: HIV.G.DE48 - HCV viral load test result (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: Hepatitis C viral load test result (qualitative)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test result (Diagnostics)":
  exists "HCV viral load test result (Diagnostics) Observation"
define "HCV viral load test result (Diagnostics) Observation":
  Elements."HCV viral load test result (Diagnostics) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HCV viral load test result (Diagnostics) */

/*
@dataElement: HIV.G.DE49 - Detected (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: HCV was detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Detected (Diagnostics)":
  exists "Detected (Diagnostics) Condition"
    or exists "Detected (Diagnostics) Observation"
define "Detected (Diagnostics) Condition":
  Elements."Detected (Diagnostics) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Detected (Diagnostics) Observation":
  Elements."Detected (Diagnostics) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Detected (Diagnostics) */

/*
@dataElement: HIV.G.DE50 - Not detected (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: HCV was not detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not detected (Diagnostics)":
  exists "Not detected (Diagnostics) Condition"
    or exists "Not detected (Diagnostics) Observation"
define "Not detected (Diagnostics) Condition":
  Elements."Not detected (Diagnostics) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Not detected (Diagnostics) Observation":
  Elements."Not detected (Diagnostics) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Not detected (Diagnostics) */

/*
@dataElement: HIV.G.DE69 - Syphilis test date (Diagnostics)
@activity: HIV.D20 Diagnostics
@description: Date of syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test date (Diagnostics)":
  Elements."Syphilis test date (Diagnostics)" O
    where O.effective.toInterval() during "Measurement Period"
define "Syphilis test date (Diagnostics) Value":
  "Syphilis test date (Diagnostics)" O
  return O.value
/* End of Syphilis test date (Diagnostics) */

/*
@dataElement: HIV.H.DE41 - HIV treatment outcome (Follow)
@activity: HIV.H3 Record outreach and result
@description: The outcome for the client which is used for reporting retention/attrition.
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV treatment outcome (Follow)":
  exists "HIV treatment outcome (Follow) Observation"
define "HIV treatment outcome (Follow) Observation":
  Elements."HIV treatment outcome (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV treatment outcome (Follow) */

/*
@dataElement: HIV.H.DE42 - Lost to follow-up (Follow)
@activity: HIV.H3 Record outreach and result
@description: Twenty-eight days or more since last missed appointment 
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lost to follow-up (Follow)":
  exists "Lost to follow-up (Follow) Condition"
    or exists "Lost to follow-up (Follow) Observation"
define "Lost to follow-up (Follow) Condition":
  Elements."Lost to follow-up (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Lost to follow-up (Follow) Observation":
  Elements."Lost to follow-up (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Lost to follow-up (Follow) */

/*
@dataElement: HIV.H.DE43 - Transferred out (Follow)
@activity: HIV.H3 Record outreach and result
@description: The client transferred to another facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Transferred out (Follow)":
  exists "Transferred out (Follow) Condition"
    or exists "Transferred out (Follow) Observation"
define "Transferred out (Follow) Condition":
  Elements."Transferred out (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Transferred out (Follow) Observation":
  Elements."Transferred out (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Transferred out (Follow) */

/*
@dataElement: HIV.H.DE44 - Death documented (Follow)
@activity: HIV.H3 Record outreach and result
@description: People living with HIV previously on ART who are confirmed to have died from any cause
*/
// TODO: Replace placeholder with relevant CQL logic
define "Death documented (Follow)":
  exists "Death documented (Follow) Condition"
    or exists "Death documented (Follow) Observation"
define "Death documented (Follow) Condition":
  Elements."Death documented (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Death documented (Follow) Observation":
  Elements."Death documented (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Death documented (Follow) */

/*
@dataElement: HIV.H.DE45 - Refused stopped treatment (Follow)
@activity: HIV.H3 Record outreach and result
@description: Client was contacted and confirmed to have stopped ART (reasons may include stigma and discrimination, faith healing, etc.)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Refused stopped treatment (Follow)":
  exists "Refused stopped treatment (Follow) Condition"
    or exists "Refused stopped treatment (Follow) Observation"
define "Refused stopped treatment (Follow) Condition":
  Elements."Refused stopped treatment (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Refused stopped treatment (Follow) Observation":
  Elements."Refused stopped treatment (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Refused stopped treatment (Follow) */

/*
@dataElement: HIV.H.DE73 - Date ART stopped (Follow)
@activity: HIV.H3 Record outreach and result
@description: Date on which client stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date ART stopped (Follow)":
  Elements."Date ART stopped (Follow)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date ART stopped (Follow) Value":
  "Date ART stopped (Follow)" O
  return O.value
/* End of Date ART stopped (Follow) */

/*
@dataElement: HIV.H.DE74 - Reason ART stopped (Follow)
@activity: HIV.H3 Record outreach and result
@description: Reason why client intentionally stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason ART stopped (Follow)":
  exists "Reason ART stopped (Follow) Observation"
define "Reason ART stopped (Follow) Observation":
  Elements."Reason ART stopped (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Reason ART stopped (Follow) */

/*
@dataElement: HIV.H.DE75 - Toxicity/side effects (Follow)
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because of toxicity/side effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Toxicity/side effects (Follow)":
  exists "Toxicity/side effects (Follow) Condition"
    or exists "Toxicity/side effects (Follow) Observation"
define "Toxicity/side effects (Follow) Condition":
  Elements."Toxicity/side effects (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Toxicity/side effects (Follow) Observation":
  Elements."Toxicity/side effects (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Toxicity/side effects (Follow) */

/*
@dataElement: HIV.H.DE76 - Severe illness, hospitalization (Follow)
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because of severe illness, hospitalization
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe illness, hospitalization (Follow)":
  exists "Severe illness, hospitalization (Follow) Condition"
    or exists "Severe illness, hospitalization (Follow) Observation"
define "Severe illness, hospitalization (Follow) Condition":
  Elements."Severe illness, hospitalization (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Severe illness, hospitalization (Follow) Observation":
  Elements."Severe illness, hospitalization (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Severe illness, hospitalization (Follow) */

/*
@dataElement: HIV.H.DE77 - Drugs out of stock  (Follow)
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because of drugs being out of stock 
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drugs out of stock  (Follow)":
  exists "Drugs out of stock  (Follow) Condition"
    or exists "Drugs out of stock  (Follow) Observation"
define "Drugs out of stock  (Follow) Condition":
  Elements."Drugs out of stock  (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Drugs out of stock  (Follow) Observation":
  Elements."Drugs out of stock  (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Drugs out of stock  (Follow) */

/*
@dataElement: HIV.H.DE78 - Client lacks finances  (Follow)
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because client lacked finances 
*/
// TODO: Replace placeholder with relevant CQL logic
define "Client lacks finances  (Follow)":
  exists "Client lacks finances  (Follow) Condition"
    or exists "Client lacks finances  (Follow) Observation"
define "Client lacks finances  (Follow) Condition":
  Elements."Client lacks finances  (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Client lacks finances  (Follow) Observation":
  Elements."Client lacks finances  (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Client lacks finances  (Follow) */

/*
@dataElement: HIV.H.DE79 - Excluded HIV infection in infant (Follow)
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because the infant was determined to not have HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excluded HIV infection in infant (Follow)":
  exists "Excluded HIV infection in infant (Follow) Condition"
    or exists "Excluded HIV infection in infant (Follow) Observation"
define "Excluded HIV infection in infant (Follow) Condition":
  Elements."Excluded HIV infection in infant (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Excluded HIV infection in infant (Follow) Observation":
  Elements."Excluded HIV infection in infant (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Excluded HIV infection in infant (Follow) */

/*
@dataElement: HIV.H.DE80 - Other reason for stopping ART (Follow)
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART for other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other reason for stopping ART (Follow)":
  exists "Other reason for stopping ART (Follow) Condition"
    or exists "Other reason for stopping ART (Follow) Observation"
define "Other reason for stopping ART (Follow) Condition":
  Elements."Other reason for stopping ART (Follow) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other reason for stopping ART (Follow) Observation":
  Elements."Other reason for stopping ART (Follow) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other reason for stopping ART (Follow) */

/*
@dataElement: HIV.PRV.DE2 - HIV prevention intervention (Prevention)
@activity: HIV.B6 Capture or update client history
@description: HIV prevention intervention that client accessed
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV prevention intervention (Prevention)":
  exists "HIV prevention intervention (Prevention) Observation"
define "HIV prevention intervention (Prevention) Observation":
  Elements."HIV prevention intervention (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV prevention intervention (Prevention) */

/*
@dataElement: HIV.PRV.DE3 - PrEP service (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client accessed PrEP services
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP service (Prevention)":
  exists "PrEP service (Prevention) Condition"
    or exists "PrEP service (Prevention) Observation"
define "PrEP service (Prevention) Condition":
  Elements."PrEP service (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "PrEP service (Prevention) Observation":
  Elements."PrEP service (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of PrEP service (Prevention) */

/*
@dataElement: HIV.PRV.DE4 - OAMT (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client accessed opioid agonist maintenance treatment (OAMT) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "OAMT (Prevention)":
  exists "OAMT (Prevention) Condition"
    or exists "OAMT (Prevention) Observation"
define "OAMT (Prevention) Condition":
  Elements."OAMT (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "OAMT (Prevention) Observation":
  Elements."OAMT (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of OAMT (Prevention) */

/*
@dataElement: HIV.PRV.DE5 - NSP (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client accessed needle-syringe programme (NSP) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "NSP (Prevention)":
  exists "NSP (Prevention) Condition"
    or exists "NSP (Prevention) Observation"
define "NSP (Prevention) Condition":
  Elements."NSP (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "NSP (Prevention) Observation":
  Elements."NSP (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of NSP (Prevention) */

/*
@dataElement: HIV.PRV.DE6 - STI services (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client accessed sexually transmitted infection (STI) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI services (Prevention)":
  exists "STI services (Prevention) Condition"
    or exists "STI services (Prevention) Observation"
define "STI services (Prevention) Condition":
  Elements."STI services (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "STI services (Prevention) Observation":
  Elements."STI services (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of STI services (Prevention) */

/*
@dataElement: HIV.PRV.DE7 - VMMC (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client accessed voluntary medical male circumcision (VMMC) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "VMMC (Prevention)":
  exists "VMMC (Prevention) Condition"
    or exists "VMMC (Prevention) Observation"
define "VMMC (Prevention) Condition":
  Elements."VMMC (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "VMMC (Prevention) Observation":
  Elements."VMMC (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of VMMC (Prevention) */

/*
@dataElement: HIV.PRV.DE8 - Other (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client accessed other HIV prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Prevention)":
  exists "Other (Prevention) Condition"
    or exists "Other (Prevention) Observation"
define "Other (Prevention) Condition":
  Elements."Other (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Other (Prevention) Observation":
  Elements."Other (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other (Prevention) */

/*
@dataElement: HIV.PRV.DE10 - Date accessed HIV prevention intervention (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Date the client accessed HIV prevention intervention
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date accessed HIV prevention intervention (Prevention)":
  Elements."Date accessed HIV prevention intervention (Prevention)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date accessed HIV prevention intervention (Prevention) Value":
  "Date accessed HIV prevention intervention (Prevention)" O
  return O.value
/* End of Date accessed HIV prevention intervention (Prevention) */

/*
@dataElement: HIV.PRV.DE11 - HIV status of contact (Prevention)
@activity: HIV.B6 Capture or update client history
@description: The HIV status of the client's contact
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV status of contact (Prevention)":
  exists "HIV status of contact (Prevention) Observation"
define "HIV status of contact (Prevention) Observation":
  Elements."HIV status of contact (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV status of contact (Prevention) */

/*
@dataElement: HIV.PRV.DE12 - HIV-positive (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client's contact is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (Prevention)":
  exists "HIV-positive (Prevention) Condition"
    or exists "HIV-positive (Prevention) Observation"
define "HIV-positive (Prevention) Condition":
  Elements."HIV-positive (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "HIV-positive (Prevention) Observation":
  Elements."HIV-positive (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-positive (Prevention) */

/*
@dataElement: HIV.PRV.DE13 - HIV-negative (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client's contact is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative (Prevention)":
  exists "HIV-negative (Prevention) Condition"
    or exists "HIV-negative (Prevention) Observation"
define "HIV-negative (Prevention) Condition":
  Elements."HIV-negative (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "HIV-negative (Prevention) Observation":
  Elements."HIV-negative (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-negative (Prevention) */

/*
@dataElement: HIV.PRV.DE14 - Unknown (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client does not know contact's HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unknown (Prevention)":
  exists "Unknown (Prevention) Condition"
    or exists "Unknown (Prevention) Observation"
define "Unknown (Prevention) Condition":
  Elements."Unknown (Prevention) Condition" C
    where C.prevalenceInterval() overlaps before "Measurement Period"
      or C.prevalenceInterval() overlaps after "Measurement Period"
define "Unknown (Prevention) Observation":
  Elements."Unknown (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Unknown (Prevention) */

/*
@dataElement: HIV.PRV.DE15 - Date injecting equipment provided (Prevention)
@activity: HIV.B21 Offer prevention options
@description: Date client was provided with injecting equipment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date injecting equipment provided (Prevention)":
  Elements."Date injecting equipment provided (Prevention)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date injecting equipment provided (Prevention) Value":
  "Date injecting equipment provided (Prevention)" O
  return O.value
/* End of Date injecting equipment provided (Prevention) */

/*
@dataElement: HIV.PRV.DE17 - Date OAMT initiated (Prevention)
@activity: HIV.B21 Offer prevention options
@description: Date client initiated opioid agonist maintenance treatment (OAMT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date OAMT initiated (Prevention)":
  Elements."Date OAMT initiated (Prevention)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date OAMT initiated (Prevention) Value":
  "Date OAMT initiated (Prevention)" O
  return O.value
/* End of Date OAMT initiated (Prevention) */

/*
@dataElement: HIV.PRV.DE20 - Currently on OAMT (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client is currently on opioid agonist maintenance treatment (OAMT) at reporting date, defined according to country/program to account for medication dispensed and LTFU criterion
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently on OAMT (Prevention)":
  exists "Currently on OAMT (Prevention) Observation"
define "Currently on OAMT (Prevention) Observation":
  Elements."Currently on OAMT (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Currently on OAMT (Prevention) */

/*
@dataElement: HIV.PRV.DE21 - Retained on OAMT (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Client is retained on opioid agonist maintenance treatment (OAMT) at reporting date, defined according to country/program to account for medication dispensed and LTFU criterion
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retained on OAMT (Prevention)":
  exists "Retained on OAMT (Prevention) Observation"
define "Retained on OAMT (Prevention) Observation":
  Elements."Retained on OAMT (Prevention) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Retained on OAMT (Prevention) */

/*
@dataElement: HIV.PRV.DE25 - Date of loss to follow-up or OAMT stopped (Prevention)
@activity: HIV.B6 Capture or update client history
@description: Date of loss to follow-up or opioid agonist maintenance treatment (OAMT) stopped
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of loss to follow-up or OAMT stopped (Prevention)":
  Elements."Date of loss to follow-up or OAMT stopped (Prevention)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date of loss to follow-up or OAMT stopped (Prevention) Value":
  "Date of loss to follow-up or OAMT stopped (Prevention)" O
  return O.value
/* End of Date of loss to follow-up or OAMT stopped (Prevention) */

/*
@dataElement: HIV.PRV.DE27 - Date medications prescribed (Prevention)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Date the client was prescribed medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date medications prescribed (Prevention)":
  Elements."Date medications prescribed (Prevention)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date medications prescribed (Prevention) Value":
  "Date medications prescribed (Prevention)" O
  return O.value
/* End of Date medications prescribed (Prevention) */

/*
@dataElement: HIV.PRV.DE28 - Number of days prescribed (Prevention)
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Days of medication client has been prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of days prescribed (Prevention)":
  Elements."Number of days prescribed (Prevention)" O
    where O.effective.toInterval() during "Measurement Period"
define "Number of days prescribed (Prevention) Value":
  "Number of days prescribed (Prevention)" O
  return O.value
/* End of Number of days prescribed (Prevention) */

/*
@dataElement: HIV.SRV.DE1 - HIV test date (Surveillance)
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Date of the HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test date (Surveillance)":
  Elements."HIV test date (Surveillance)" O
    where O.effective.toInterval() during "Measurement Period"
define "HIV test date (Surveillance) Value":
  "HIV test date (Surveillance)" O
  return O.value
/* End of HIV test date (Surveillance) */

/*
@dataElement: HIV.SRV.DE3 - Baseline CD4 count (Surveillance)
@activity: HIV.D20 Diagnostics
@description: CD4 count performed at HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Baseline CD4 count (Surveillance)":
  Elements."Baseline CD4 count (Surveillance)" O
    where O.effective.toInterval() during "Measurement Period"
define "Baseline CD4 count (Surveillance) Value":
  "Baseline CD4 count (Surveillance)" O
  return O.value
/* End of Baseline CD4 count (Surveillance) */

/*
@dataElement: HIV.SRV.DE4 - Date of baseline CD4 count test (Surveillance)
@activity: HIV.D20 Diagnostics
@description: Date and time when baseline CD4 count test was conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of baseline CD4 count test (Surveillance)":
  Elements."Date of baseline CD4 count test (Surveillance)" O
    where O.effective.toInterval() during "Measurement Period"
define "Date of baseline CD4 count test (Surveillance) Value":
  "Date of baseline CD4 count test (Surveillance)" O
  return O.value
/* End of Date of baseline CD4 count test (Surveillance) */

/*
@dataElement: HIV.SRV.DE20 - HIV-exposed infant or child (Surveillance)
@activity: HIV.F6 Check whether infant/child had HIV exposure
@description: Whether the infant or child was determined to have had HIV exposure
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-exposed infant or child (Surveillance)":
  exists "HIV-exposed infant or child (Surveillance) Observation"
define "HIV-exposed infant or child (Surveillance) Observation":
  Elements."HIV-exposed infant or child (Surveillance) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of HIV-exposed infant or child (Surveillance) */

/*
@dataElement: HIV.SRV.DE22 - Final diagnosis of HIV-exposed infant (Surveillance)
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: HIV-exposed infant final status at 18 months or 3 months after cessation of breastfeeding (whichever is later).
*/
// TODO: Replace placeholder with relevant CQL logic
define "Final diagnosis of HIV-exposed infant (Surveillance)":
  exists "Final diagnosis of HIV-exposed infant (Surveillance) Observation"
define "Final diagnosis of HIV-exposed infant (Surveillance) Observation":
  Elements."Final diagnosis of HIV-exposed infant (Surveillance) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Final diagnosis of HIV-exposed infant (Surveillance) */

/*
@dataElement: HIV.Config.DE19 - Other priority populations (Configuration)
@activity: HIV.Configuration
@description: Other populations of priority of HIV prevention and care in local context (provided during adaptation)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other priority populations (Configuration)":
  exists "Other priority populations (Configuration) Observation"
define "Other priority populations (Configuration) Observation":
  Elements."Other priority populations (Configuration) Observation" O
    where O.effective.toInterval() during "Measurement Period"
/* End of Other priority populations (Configuration) */

/*
@dataElement: HIV.Config.DE20 - Reporting period end date (Configuration)
@activity: HIV.Configuration
@description: End date of the reporting period
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reporting period end date (Configuration)":
  Elements."Reporting period end date (Configuration)" O
    where O.effective.toInterval() during "Measurement Period"
define "Reporting period end date (Configuration) Value":
  "Reporting period end date (Configuration)" O
  return O.value
/* End of Reporting period end date (Configuration) */

/*
@dataElement: HIV.Config.DE21 - Reporting period start date (Configuration)
@activity: HIV.Configuration
@description: Start date of the reporting period
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reporting period start date (Configuration)":
  Elements."Reporting period start date (Configuration)" O
    where O.effective.toInterval() during "Measurement Period"
define "Reporting period start date (Configuration) Value":
  "Reporting period start date (Configuration)" O
  return O.value
/* End of Reporting period start date (Configuration) */

/*
@dataElement: HIV.Config.DE22 - Reporting date (Configuration)
@activity: HIV.Configuration
@description: Reporting date, for surveys performed on a specific date
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reporting date (Configuration)":
  Elements."Reporting date (Configuration)" O
    where O.effective.toInterval() during "Measurement Period"
define "Reporting date (Configuration) Value":
  "Reporting date (Configuration)" O
  return O.value
/* End of Reporting date (Configuration) */


/*
 * Custom elements and logic for use DT and IND CQL Libraries
 */