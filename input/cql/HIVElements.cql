library HIVElements

using FHIR version '4.0.1'

include fhir.cqf.common.FHIRCommon called FC
include FHIRHelpers version '4.0.1'

include WHOConcepts
include WHOCommon called WC
include WHOElements called WE

include HIVConcepts called Concepts
include HIVCommon called Common

context Patient

/**
 * HIV Elements
 */

// Auto-generated Elements from DAK Data Dictionary
//   Entries based on DAK Data Dictionary for Data Elements marked as used
//   in at least one Decision Support Table or Aggregate Indicator

/*
@dataElement: HIV.A.DE3 - Visit date
@activity: HIV.A2 Gather client details
@description: The date and time of the client's visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Visit date (Registration)":
  [Observation: Concepts."Visit date - HIV.A.DE3"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Visit date (Registration) Value":
  "Visit date (Registration)" O
  return O.value
/* End of Visit date (Registration) */

/*
@dataElement: HIV.A.DE16 - Estimated age
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: If DOB is unknown, enter the client's estimated age. Display client's age in number of years.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Estimated age (Registration)":
  [Observation: Concepts."Estimated age"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Estimated age (Registration) Value":
  "Estimated age (Registration)" O
  return O.value
/* End of Estimated age (Registration) */

/*
@dataElement: HIV.A.DE17 - Age
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Calculated age (number of years) of the client based on date of birth
*/
// TODO: Replace placeholder with relevant CQL logic
define "Age (Registration)":
  [Observation: Concepts."Age"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Age (Registration) Value":
  "Age (Registration)" O
  return O.value
/* End of Age (Registration) */

/*
@dataElement: HIV.A.DE18 - Gender*
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Gender of the client*
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gender* (Registration)":
  exists "Gender* (Registration) Observation"
define "Gender* (Registration) Observation":
  [Observation: Concepts."Gender*"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Gender* (Registration) */

/*
@dataElement: HIV.A.DE19 - Female
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Client identifies as female
*/
// TODO: Replace placeholder with relevant CQL logic
define "Female (Registration)":
  exists "Female (Registration) Condition"
    or exists "Female (Registration) Observation"
define "Female (Registration) Condition":
  [Condition: Concepts."Female"]
define "Female (Registration) Observation":
  "Gender* (Registration) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Female"
/* End of Female (Registration) */

/*
@dataElement: HIV.A.DE20 - Male
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Client identifies as male
*/
// TODO: Replace placeholder with relevant CQL logic
define "Male (Registration)":
  exists "Male (Registration) Condition"
    or exists "Male (Registration) Observation"
define "Male (Registration) Condition":
  [Condition: Concepts."Male"]
define "Male (Registration) Observation":
  "Gender* (Registration) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Male"
/* End of Male (Registration) */

/*
@dataElement: HIV.A.DE21 - Transgender male
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Client identifies as transgender male
*/
// TODO: Replace placeholder with relevant CQL logic
define "Transgender male (Registration)":
  exists "Transgender male (Registration) Condition"
    or exists "Transgender male (Registration) Observation"
define "Transgender male (Registration) Condition":
  [Condition: Concepts."Transgender male"]
define "Transgender male (Registration) Observation":
  "Gender* (Registration) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Transgender male"
/* End of Transgender male (Registration) */

/*
@dataElement: HIV.A.DE22 - Transgender female
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Client identifies as transgender female
*/
// TODO: Replace placeholder with relevant CQL logic
define "Transgender female (Registration)":
  exists "Transgender female (Registration) Condition"
    or exists "Transgender female (Registration) Observation"
define "Transgender female (Registration) Condition":
  [Condition: Concepts."Transgender female"]
define "Transgender female (Registration) Observation":
  "Gender* (Registration) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Transgender female"
/* End of Transgender female (Registration) */

/*
@dataElement: HIV.A.DE23 - Other
@activity: HIV.A6.1 Review sociodemographic data with client | HIV.A5 Create new client record
@description: Additional category
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Registration)":
  exists "Other (Registration) Condition"
    or exists "Other (Registration) Observation"
define "Other (Registration) Condition":
  [Condition: Concepts."Other - HIV.A.DE23"]
define "Other (Registration) Observation":
  "Gender* (Registration) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.A.DE23"
/* End of Other (Registration) */

/*
@dataElement: HIV.B.DE1 - Reason for visit
@activity: HIV.B1 Determine reason for visit
@description: Reason for HIV testing services visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason for visit (HTS)":
  exists "Reason for visit (HTS) Observation"
define "Reason for visit (HTS) Observation":
  [Observation: Concepts."Reason for visit - HIV.B.DE1"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Reason for visit (HTS) */

/*
@dataElement: HIV.B.DE2 - First-time HIV test
@activity: HIV.B1 Determine reason for visit
@description: First encounter for screening for human immunodeficiency virus
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-time HIV test (HTS)":
  exists "First-time HIV test (HTS) Condition"
    or exists "First-time HIV test (HTS) Observation"
define "First-time HIV test (HTS) Condition":
  [Condition: Concepts."First-time HIV test"]
define "First-time HIV test (HTS) Observation":
  "Reason for visit (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First-time HIV test"
/* End of First-time HIV test (HTS) */

/*
@dataElement: HIV.B.DE3 - Retesting for HIV
@activity: HIV.B1 Determine reason for visit
@description: Retesting for human immunodeficiency virus
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retesting for HIV (HTS|BDE3)":
  exists "Retesting for HIV (HTS|BDE3) Condition"
    or exists "Retesting for HIV (HTS|BDE3) Observation"
define "Retesting for HIV (HTS|BDE3) Condition":
  [Condition: Concepts."Retesting for HIV - HIV.B.DE3"]
define "Retesting for HIV (HTS|BDE3) Observation":
  "Reason for visit (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Retesting for HIV - HIV.B.DE3"
/* End of Retesting for HIV (HTS|BDE3) */

/*
@dataElement: HIV.B.DE4 - HIV testing services visit
@activity: HIV.B1 Determine reason for visit
@description: Client attending facility for HIV testing services visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing services visit (HTS)":
  exists "HIV testing services visit (HTS) Condition"
    or exists "HIV testing services visit (HTS) Observation"
define "HIV testing services visit (HTS) Condition":
  [Condition: Concepts."HIV testing services visit"]
define "HIV testing services visit (HTS) Observation":
  "Reason for visit (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV testing services visit"
/* End of HIV testing services visit (HTS) */

/*
@dataElement: HIV.B.DE5 - Referred through partner services
@activity: HIV.B1 Determine reason for visit
@description: Client reported coming to the facility after receiving a provider-assisted referral or patient referral from a contact or partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "Referred through partner services (HTS)":
  exists "Referred through partner services (HTS) Observation"
define "Referred through partner services (HTS) Observation":
  [Observation: Concepts."Referred through partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Referred through partner services (HTS) */

/*
@dataElement: HIV.B.DE6 - Partner or contact of an index case
@activity: HIV.B1 Determine reason for visit
@description: The client is a contact or partner of a person diagnosed with HIV (an index case)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner or contact of an index case (HTS)":
  exists "Partner or contact of an index case (HTS) Condition"
    or exists "Partner or contact of an index case (HTS) Observation"
define "Partner or contact of an index case (HTS) Condition":
  [Condition: Concepts."Partner or contact of an index case"]
define "Partner or contact of an index case (HTS) Observation":
  "Referred through partner services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Partner or contact of an index case"
/* End of Partner or contact of an index case (HTS) */

/*
@dataElement: HIV.B.DE7 - Partner or contact of an HIV testing client non-index case
@activity: HIV.B1 Determine reason for visit
@description: The client is a contact or partner identified through partner or social network services, but is not known to be a partner of an index-case
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner or contact of an HIV testing client non-index case (HTS)":
  exists "Partner or contact of an HIV testing client non-index case (HTS) Condition"
    or exists "Partner or contact of an HIV testing client non-index case (HTS) Observation"
define "Partner or contact of an HIV testing client non-index case (HTS) Condition":
  [Condition: Concepts."Partner or contact of an HIV testing client non-index case"]
define "Partner or contact of an HIV testing client non-index case (HTS) Observation":
  "Referred through partner services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Partner or contact of an HIV testing client non-index case"
/* End of Partner or contact of an HIV testing client non-index case (HTS) */

/*
@dataElement: HIV.B.DE8 - Type of contact or partner for partner services
@activity: HIV.B1 Determine reason for visit
@description: Client's relationship to the person that referred the client for partner services or family services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of contact or partner for partner services (HTS)":
  exists "Type of contact or partner for partner services (HTS) Observation"
define "Type of contact or partner for partner services (HTS) Observation":
  [Observation: Concepts."Type of contact or partner for partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of contact or partner for partner services (HTS) */

/*
@dataElement: HIV.B.DE9 - Biological child
@activity: HIV.B1 Determine reason for visit
@description: Client is the biological child of the person that referred the client for family services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Biological child (HTS)":
  exists "Biological child (HTS) Condition"
    or exists "Biological child (HTS) Observation"
define "Biological child (HTS) Condition":
  [Condition: Concepts."Biological child"]
define "Biological child (HTS) Observation":
  "Type of contact or partner for partner services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Biological child"
/* End of Biological child (HTS) */

/*
@dataElement: HIV.B.DE10 - Drug-injecting partner
@activity: HIV.B1 Determine reason for visit
@description: Client is a drug-injecting partner of the person that referred the client for partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug-injecting partner (HTS)":
  exists "Drug-injecting partner (HTS) Condition"
    or exists "Drug-injecting partner (HTS) Observation"
define "Drug-injecting partner (HTS) Condition":
  [Condition: Concepts."Drug-injecting partner - HIV.B.DE10"]
define "Drug-injecting partner (HTS) Observation":
  "Type of contact or partner for partner services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Drug-injecting partner - HIV.B.DE10"
/* End of Drug-injecting partner (HTS) */

/*
@dataElement: HIV.B.DE11 - Sexual partner
@activity: HIV.B1 Determine reason for visit
@description: Client is a sexual partner of the person that referred the client for partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual partner (HTS)":
  exists "Sexual partner (HTS) Condition"
    or exists "Sexual partner (HTS) Observation"
define "Sexual partner (HTS) Condition":
  [Condition: Concepts."Sexual partner - HIV.B.DE11"]
define "Sexual partner (HTS) Observation":
  "Type of contact or partner for partner services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sexual partner - HIV.B.DE11"
/* End of Sexual partner (HTS) */

/*
@dataElement: HIV.B.DE12 - Social contact
@activity: HIV.B1 Determine reason for visit
@description: Client is a social contact of the person that referred the client for social-network services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Social contact (HTS)":
  exists "Social contact (HTS) Condition"
    or exists "Social contact (HTS) Observation"
define "Social contact (HTS) Condition":
  [Condition: Concepts."Social contact - HIV.B.DE12"]
define "Social contact (HTS) Observation":
  "Type of contact or partner for partner services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Social contact - HIV.B.DE12"
/* End of Social contact (HTS) */

/*
@dataElement: HIV.B.DE14 - Date/time of suspected exposure to HIV
@activity: HIV.B1 Determine reason for visit
@description: Date and time when the client had suspected exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of suspected exposure to HIV (HTS)":
  [Observation: Concepts."Date/time of suspected exposure to HIV - HIV.B.DE14"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date/time of suspected exposure to HIV (HTS) Value":
  "Date/time of suspected exposure to HIV (HTS)" O
  return O.value
/* End of Date/time of suspected exposure to HIV (HTS) */

/*
@dataElement: HIV.B.DE15 - Testing entry point
@activity: HIV.B1 Determine reason for visit
@description: Whether testing is happening in the community or at a facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Testing entry point (HTS)":
  exists "Testing entry point (HTS) Observation"
define "Testing entry point (HTS) Observation":
  [Observation: Concepts."Testing entry point"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Testing entry point (HTS) */

/*
@dataElement: HIV.B.DE16 - Community-level testing
@activity: HIV.B1 Determine reason for visit
@description: Testing is happening in the community, which includes mobile testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Community-level testing (HTS)":
  exists "Community-level testing (HTS) Condition"
    or exists "Community-level testing (HTS) Observation"
define "Community-level testing (HTS) Condition":
  [Condition: Concepts."Community-level testing"]
define "Community-level testing (HTS) Observation":
  "Testing entry point (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Community-level testing"
/* End of Community-level testing (HTS) */

/*
@dataElement: HIV.B.DE17 - Facility-level testing
@activity: HIV.B1 Determine reason for visit
@description: Testing is happening at a facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Facility-level testing (HTS)":
  exists "Facility-level testing (HTS) Condition"
    or exists "Facility-level testing (HTS) Observation"
define "Facility-level testing (HTS) Condition":
  [Condition: Concepts."Facility-level testing"]
define "Facility-level testing (HTS) Observation":
  "Testing entry point (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Facility-level testing"
/* End of Facility-level testing (HTS) */

/*
@dataElement: HIV.B.DE29 - Currently pregnant
@activity: HIV.B6 Capture or update client history
@description: Client is currently pregnant
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently pregnant (HTS)":
  exists "Currently pregnant (HTS) Observation"
define "Currently pregnant (HTS) Observation":
  [Observation: Concepts."Currently pregnant - HIV.B.DE29"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Currently pregnant (HTS) */

/*
@dataElement: HIV.B.DE32 - Breastfeeding
@activity: HIV.B6 Capture or update client history
@description: Infant is being breastfed by mother
*/
// TODO: Replace placeholder with relevant CQL logic
define "Breastfeeding (HTS)":
  exists "Breastfeeding (HTS) Observation"
define "Breastfeeding (HTS) Observation":
  [Observation: Concepts."Breastfeeding - HIV.B.DE32"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Breastfeeding (HTS) */

/*
@dataElement: HIV.B.DE33 - Partner HIV status reported
@activity: HIV.B6 Capture or update client history
@description: The HIV status of the client's partner.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner HIV status reported (HTS)":
  exists "Partner HIV status reported (HTS) Observation"
define "Partner HIV status reported (HTS) Observation":
  [Observation: Concepts."Partner HIV status reported"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Partner HIV status reported (HTS) */

/*
@dataElement: HIV.B.DE34 - HIV-positive
@activity: HIV.B6 Capture or update client history
@description: Client's partner is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (HTS|BDE34)":
  exists "HIV-positive (HTS|BDE34) Condition"
    or exists "HIV-positive (HTS|BDE34) Observation"
define "HIV-positive (HTS|BDE34) Condition":
  [Condition: Concepts."HIV-positive - HIV.B.DE34"]
define "HIV-positive (HTS|BDE34) Observation":
  "Partner HIV status reported (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive - HIV.B.DE34"
/* End of HIV-positive (HTS|BDE34) */

/*
@dataElement: HIV.B.DE35 - HIV-negative
@activity: HIV.B6 Capture or update client history
@description: Client's partner is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative (HTS|BDE35)":
  exists "HIV-negative (HTS|BDE35) Condition"
    or exists "HIV-negative (HTS|BDE35) Observation"
define "HIV-negative (HTS|BDE35) Condition":
  [Condition: Concepts."HIV-negative - HIV.B.DE35"]
define "HIV-negative (HTS|BDE35) Observation":
  "Partner HIV status reported (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-negative - HIV.B.DE35"
/* End of HIV-negative (HTS|BDE35) */

/*
@dataElement: HIV.B.DE36 - Unknown
@activity: HIV.B6 Capture or update client history
@description: Don't know HIV status - client does not know partner's HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unknown (HTS|BDE36)":
  exists "Unknown (HTS|BDE36) Condition"
    or exists "Unknown (HTS|BDE36) Observation"
define "Unknown (HTS|BDE36) Condition":
  [Condition: Concepts."Unknown - HIV.B.DE36"]
define "Unknown (HTS|BDE36) Observation":
  "Partner HIV status reported (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unknown - HIV.B.DE36"
/* End of Unknown (HTS|BDE36) */

/*
@dataElement: HIV.B.DE49 - Key population member*
@activity: HIV.B6 Capture or update client history
@description: Client is a member of a key population that has an increased risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Key population member* (HTS)":
  exists "Key population member* (HTS) Observation"
define "Key population member* (HTS) Observation":
  [Observation: Concepts."Key population member* - HIV.B.DE49"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Key population member* (HTS) */

/*
@dataElement: HIV.B.DE50 - Key population member type*
@activity: HIV.B6 Capture or update client history
@description: The type of key population that the client is included in
*/
// TODO: Replace placeholder with relevant CQL logic
define "Key population member type* (HTS)":
  exists "Key population member type* (HTS) Observation"
define "Key population member type* (HTS) Observation":
  [Observation: Concepts."Key population member type* - HIV.B.DE50"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Key population member type* (HTS) */

/*
@dataElement: HIV.B.DE51 - Sex worker
@activity: HIV.B6 Capture or update client history
@description: Client is a sex worker
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sex worker (HTS)":
  exists "Sex worker (HTS) Condition"
    or exists "Sex worker (HTS) Observation"
define "Sex worker (HTS) Condition":
  [Condition: Concepts."Sex worker - HIV.B.DE51"]
define "Sex worker (HTS) Observation":
  "Key population member type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sex worker - HIV.B.DE51"
/* End of Sex worker (HTS) */

/*
@dataElement: HIV.B.DE52 - Men who have sex with men
@activity: HIV.B6 Capture or update client history
@description: Client is a man who has sex with men
*/
// TODO: Replace placeholder with relevant CQL logic
define "Men who have sex with men (HTS)":
  exists "Men who have sex with men (HTS) Condition"
    or exists "Men who have sex with men (HTS) Observation"
define "Men who have sex with men (HTS) Condition":
  [Condition: Concepts."Men who have sex with men"]
define "Men who have sex with men (HTS) Observation":
  "Key population member type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Men who have sex with men"
/* End of Men who have sex with men (HTS) */

/*
@dataElement: HIV.B.DE53 - Trans and gender-diverse people
@activity: HIV.B6 Capture or update client history
@description: Client identifies as trans and gender-diverse
*/
// TODO: Replace placeholder with relevant CQL logic
define "Trans and gender-diverse people (HTS)":
  exists "Trans and gender-diverse people (HTS) Condition"
    or exists "Trans and gender-diverse people (HTS) Observation"
define "Trans and gender-diverse people (HTS) Condition":
  [Condition: Concepts."Trans and gender-diverse people - HIV.B.DE53"]
define "Trans and gender-diverse people (HTS) Observation":
  "Key population member type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Trans and gender-diverse people - HIV.B.DE53"
/* End of Trans and gender-diverse people (HTS) */

/*
@dataElement: HIV.B.DE54 - People who inject drugs
@activity: HIV.B6 Capture or update client history
@description: Client is a person who injects drugs
*/
// TODO: Replace placeholder with relevant CQL logic
define "People who inject drugs (HTS)":
  exists "People who inject drugs (HTS) Condition"
    or exists "People who inject drugs (HTS) Observation"
define "People who inject drugs (HTS) Condition":
  [Condition: Concepts."People who inject drugs - HIV.B.DE54"]
define "People who inject drugs (HTS) Observation":
  "Key population member type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."People who inject drugs - HIV.B.DE54"
/* End of People who inject drugs (HTS) */

/*
@dataElement: HIV.B.DE55 - People living in prisons and other closed settings
@activity: HIV.B6 Capture or update client history
@description: Client lives in a prison or another closed setting
*/
// TODO: Replace placeholder with relevant CQL logic
define "People living in prisons and other closed settings (HTS)":
  exists "People living in prisons and other closed settings (HTS) Condition"
    or exists "People living in prisons and other closed settings (HTS) Observation"
define "People living in prisons and other closed settings (HTS) Condition":
  [Condition: Concepts."People living in prisons and other closed settings"]
define "People living in prisons and other closed settings (HTS) Observation":
  "Key population member type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."People living in prisons and other closed settings"
/* End of People living in prisons and other closed settings (HTS) */

/*
@dataElement: HIV.B.DE60 - Date HIV test results returned
@activity: HIV.B6 Capture or update client history
@description: Date HIV test result returned to client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date HIV test results returned (HTS)":
  [Observation: Concepts."Date HIV test results returned"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date HIV test results returned (HTS) Value":
  "Date HIV test results returned (HTS)" O
  return O.value
/* End of Date HIV test results returned (HTS) */

/*
@dataElement: HIV.B.DE61 - HIV exposure type*
@activity: HIV.B6 Capture or update client history
@description: Ways in which the client was exposed to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV exposure type* (HTS)":
  exists "HIV exposure type* (HTS) Observation"
define "HIV exposure type* (HTS) Observation":
  [Observation: Concepts."HIV exposure type*"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV exposure type* (HTS) */

/*
@dataElement: HIV.B.DE62 - Occupational
@activity: HIV.B6 Capture or update client history
@description: Occupational exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Occupational (HTS)":
  exists "Occupational (HTS) Condition"
    or exists "Occupational (HTS) Observation"
define "Occupational (HTS) Condition":
  [Condition: Concepts."Occupational"]
define "Occupational (HTS) Observation":
  "HIV exposure type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Occupational"
/* End of Occupational (HTS) */

/*
@dataElement: HIV.B.DE63 - Non-occupational violent
@activity: HIV.B6 Capture or update client history
@description: Non-occupational violent exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-occupational violent (HTS)":
  exists "Non-occupational violent (HTS) Condition"
    or exists "Non-occupational violent (HTS) Observation"
define "Non-occupational violent (HTS) Condition":
  [Condition: Concepts."Non-occupational violent"]
define "Non-occupational violent (HTS) Observation":
  "HIV exposure type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-occupational violent"
/* End of Non-occupational violent (HTS) */

/*
@dataElement: HIV.B.DE64 - Non-occupational consensual sex
@activity: HIV.B6 Capture or update client history
@description: Exposure to HIV through non-occupational consensual sex
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-occupational consensual sex (HTS)":
  exists "Non-occupational consensual sex (HTS) Condition"
    or exists "Non-occupational consensual sex (HTS) Observation"
define "Non-occupational consensual sex (HTS) Condition":
  [Condition: Concepts."Non-occupational consensual sex"]
define "Non-occupational consensual sex (HTS) Observation":
  "HIV exposure type* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-occupational consensual sex"
/* End of Non-occupational consensual sex (HTS) */

/*
@dataElement: HIV.B.DE65 - Date informed of HIV-positive diagnosis
@activity: HIV.B6 Capture or update client history
@description: The date on which the client was diagnosed with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date informed of HIV-positive diagnosis (HTS)":
  [Observation: Concepts."Date informed of HIV-positive diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date informed of HIV-positive diagnosis (HTS) Value":
  "Date informed of HIV-positive diagnosis (HTS)" O
  return O.value
/* End of Date informed of HIV-positive diagnosis (HTS) */

/*
@dataElement: HIV.B.DE71 - HIV diagnosis date
@activity: HIV.B8 Provide post-test counselling
@description: Date diagnosis was returned to client
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV diagnosis date (HTS)":
  [Observation: Concepts."HIV diagnosis date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HIV diagnosis date (HTS) Value":
  "HIV diagnosis date (HTS)" O
  return O.value
/* End of HIV diagnosis date (HTS) */

/*
@dataElement: HIV.B.DE72 - ART start date
@activity: HIV.B8 Provide post-test counselling
@description: The date on which the client started or restarted antiretroviral therapy (ART)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART start date (HTS)":
  [Observation: Concepts."ART start date - HIV.B.DE72"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "ART start date (HTS) Value":
  "ART start date (HTS)" O
  return O.value
/* End of ART start date (HTS) */

/*
@dataElement: HIV.B.DE80 - HIV test conducted
@activity: HIV.B7 Test for HIV using testing algorithm
@description: An HIV test was performed on the client during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test conducted (HTS)":
  exists "HIV test conducted (HTS) Observation"
define "HIV test conducted (HTS) Observation":
  [Observation: Concepts."HIV test conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of HIV test conducted (HTS) */

/*
@dataElement: HIV.B.DE81 - HIV test type
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Type of HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test type (HTS)":
  exists "HIV test type (HTS) Observation"
define "HIV test type (HTS) Observation":
  [Observation: Concepts."HIV test type - HIV.B.DE81"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV test type (HTS) */

/*
@dataElement: HIV.B.DE82 - Rapid diagnostic test for HIV
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Antibody test for HIV performed with a rapid diagnostic
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rapid diagnostic test for HIV (HTS)":
  exists "Rapid diagnostic test for HIV (HTS) Condition"
    or exists "Rapid diagnostic test for HIV (HTS) Observation"
define "Rapid diagnostic test for HIV (HTS) Condition":
  [Condition: Concepts."Rapid diagnostic test for HIV - HIV.B.DE82"]
define "Rapid diagnostic test for HIV (HTS) Observation":
  "HIV test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Rapid diagnostic test for HIV - HIV.B.DE82"
/* End of Rapid diagnostic test for HIV (HTS) */

/*
@dataElement: HIV.B.DE83 - Enzyme immunoassay for HIV
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Antibody test for HIV performed with an enzyme immunoassay
*/
// TODO: Replace placeholder with relevant CQL logic
define "Enzyme immunoassay for HIV (HTS)":
  exists "Enzyme immunoassay for HIV (HTS) Condition"
    or exists "Enzyme immunoassay for HIV (HTS) Observation"
define "Enzyme immunoassay for HIV (HTS) Condition":
  [Condition: Concepts."Enzyme immunoassay for HIV - HIV.B.DE83"]
define "Enzyme immunoassay for HIV (HTS) Observation":
  "HIV test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Enzyme immunoassay for HIV - HIV.B.DE83"
/* End of Enzyme immunoassay for HIV (HTS) */

/*
@dataElement: HIV.B.DE84 - Nucleic acid test for HIV
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Virological test, which includes testing for early infant diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Nucleic acid test for HIV (HTS)":
  exists "Nucleic acid test for HIV (HTS) Condition"
    or exists "Nucleic acid test for HIV (HTS) Observation"
define "Nucleic acid test for HIV (HTS) Condition":
  [Condition: Concepts."Nucleic acid test for HIV - HIV.B.DE84"]
define "Nucleic acid test for HIV (HTS) Observation":
  "HIV test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Nucleic acid test for HIV - HIV.B.DE84"
/* End of Nucleic acid test for HIV (HTS) */

/*
@dataElement: HIV.B.DE85 - Dual HIV/syphilis rapid diagnostic test
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Antibody test for HIV and syphilis performed with a rapid diagnostic
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dual HIV/syphilis rapid diagnostic test (HTS)":
  exists "Dual HIV/syphilis rapid diagnostic test (HTS) Condition"
    or exists "Dual HIV/syphilis rapid diagnostic test (HTS) Observation"
define "Dual HIV/syphilis rapid diagnostic test (HTS) Condition":
  [Condition: Concepts."Dual HIV/syphilis rapid diagnostic test - HIV.B.DE85"]
define "Dual HIV/syphilis rapid diagnostic test (HTS) Observation":
  "HIV test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Dual HIV/syphilis rapid diagnostic test - HIV.B.DE85"
/* End of Dual HIV/syphilis rapid diagnostic test (HTS) */

/*
@dataElement: HIV.B.DE86 - HIV self-test
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Antibody test for HIV performed by self-tester using a rapid diagnostic
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV self-test (HTS)":
  exists "HIV self-test (HTS) Condition"
    or exists "HIV self-test (HTS) Observation"
define "HIV self-test (HTS) Condition":
  [Condition: Concepts."HIV self-test"]
define "HIV self-test (HTS) Observation":
  "HIV test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV self-test"
/* End of HIV self-test (HTS) */

/*
@dataElement: HIV.B.DE88 - Assay number in testing strategy
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The number of the assay (test kit) in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay number in testing strategy (HTS)":
  exists "Assay number in testing strategy (HTS) Observation"
define "Assay number in testing strategy (HTS) Observation":
  [Observation: Concepts."Assay number in testing strategy - HIV.B.DE88"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Assay number in testing strategy (HTS) */

/*
@dataElement: HIV.B.DE89 - Assay 0
@activity: HIV.B7 Test for HIV using testing algorithm
@description: A community outreach test-for-triage or self-test which is not included in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 0 (HTS)":
  exists "Assay 0 (HTS) Condition"
    or exists "Assay 0 (HTS) Observation"
define "Assay 0 (HTS) Condition":
  [Condition: Concepts."Assay 0 - HIV.B.DE89"]
define "Assay 0 (HTS) Observation":
  "Assay number in testing strategy (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 0 - HIV.B.DE89"
/* End of Assay 0 (HTS) */

/*
@dataElement: HIV.B.DE90 - Assay 1
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 (HTS)":
  exists "Assay 1 (HTS) Condition"
    or exists "Assay 1 (HTS) Observation"
define "Assay 1 (HTS) Condition":
  [Condition: Concepts."Assay 1 - HIV.B.DE90"]
define "Assay 1 (HTS) Observation":
  "Assay number in testing strategy (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 1 - HIV.B.DE90"
/* End of Assay 1 (HTS) */

/*
@dataElement: HIV.B.DE91 - Assay 2
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The second test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 2 (HTS)":
  exists "Assay 2 (HTS) Condition"
    or exists "Assay 2 (HTS) Observation"
define "Assay 2 (HTS) Condition":
  [Condition: Concepts."Assay 2 - HIV.B.DE91"]
define "Assay 2 (HTS) Observation":
  "Assay number in testing strategy (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 2 - HIV.B.DE91"
/* End of Assay 2 (HTS) */

/*
@dataElement: HIV.B.DE92 - Assay 3
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The third test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 3 (HTS)":
  exists "Assay 3 (HTS) Condition"
    or exists "Assay 3 (HTS) Observation"
define "Assay 3 (HTS) Condition":
  [Condition: Concepts."Assay 3 - HIV.B.DE92"]
define "Assay 3 (HTS) Observation":
  "Assay number in testing strategy (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 3 - HIV.B.DE92"
/* End of Assay 3 (HTS) */

/*
@dataElement: HIV.B.DE93 - Assay 1 repeated
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 repeated (HTS)":
  exists "Assay 1 repeated (HTS) Condition"
    or exists "Assay 1 repeated (HTS) Observation"
define "Assay 1 repeated (HTS) Condition":
  [Condition: Concepts."Assay 1 repeated - HIV.B.DE93"]
define "Assay 1 repeated (HTS) Observation":
  "Assay number in testing strategy (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 1 repeated - HIV.B.DE93"
/* End of Assay 1 repeated (HTS) */

/*
@dataElement: HIV.B.DE94 - Test result of HIV assay 1
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 (HTS)":
  exists "Test result of HIV assay 1 (HTS) Observation"
define "Test result of HIV assay 1 (HTS) Observation":
  [Observation: Concepts."Test result of HIV assay 1 - HIV.B.DE94"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 1 (HTS) */

/*
@dataElement: HIV.B.DE95 - Reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE95)":
  exists "Reactive (HTS|BDE95) Condition"
    or exists "Reactive (HTS|BDE95) Observation"
define "Reactive (HTS|BDE95) Condition":
  [Condition: Concepts."Reactive - HIV.B.DE95"]
define "Reactive (HTS|BDE95) Observation":
  "Test result of HIV assay 1 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.B.DE95"
/* End of Reactive (HTS|BDE95) */

/*
@dataElement: HIV.B.DE96 - Non-reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE96)":
  exists "Non-reactive (HTS|BDE96) Condition"
    or exists "Non-reactive (HTS|BDE96) Observation"
define "Non-reactive (HTS|BDE96) Condition":
  [Condition: Concepts."Non-reactive - HIV.B.DE96"]
define "Non-reactive (HTS|BDE96) Observation":
  "Test result of HIV assay 1 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.B.DE96"
/* End of Non-reactive (HTS|BDE96) */

/*
@dataElement: HIV.B.DE97 - Invalid
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE97)":
  exists "Invalid (HTS|BDE97) Condition"
    or exists "Invalid (HTS|BDE97) Observation"
define "Invalid (HTS|BDE97) Condition":
  [Condition: Concepts."Invalid - HIV.B.DE97"]
define "Invalid (HTS|BDE97) Observation":
  "Test result of HIV assay 1 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.B.DE97"
/* End of Invalid (HTS|BDE97) */

/*
@dataElement: HIV.B.DE98 - Test result of HIV assay 2
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the second HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 2 (HTS)":
  exists "Test result of HIV assay 2 (HTS) Observation"
define "Test result of HIV assay 2 (HTS) Observation":
  [Observation: Concepts."Test result of HIV assay 2 - HIV.B.DE98"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 2 (HTS) */

/*
@dataElement: HIV.B.DE99 - Reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE99)":
  exists "Reactive (HTS|BDE99) Condition"
    or exists "Reactive (HTS|BDE99) Observation"
define "Reactive (HTS|BDE99) Condition":
  [Condition: Concepts."Reactive - HIV.B.DE99"]
define "Reactive (HTS|BDE99) Observation":
  "Test result of HIV assay 2 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.B.DE99"
/* End of Reactive (HTS|BDE99) */

/*
@dataElement: HIV.B.DE100 - Non-reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE100)":
  exists "Non-reactive (HTS|BDE100) Condition"
    or exists "Non-reactive (HTS|BDE100) Observation"
define "Non-reactive (HTS|BDE100) Condition":
  [Condition: Concepts."Non-reactive - HIV.B.DE100"]
define "Non-reactive (HTS|BDE100) Observation":
  "Test result of HIV assay 2 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.B.DE100"
/* End of Non-reactive (HTS|BDE100) */

/*
@dataElement: HIV.B.DE101 - Invalid
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE101)":
  exists "Invalid (HTS|BDE101) Condition"
    or exists "Invalid (HTS|BDE101) Observation"
define "Invalid (HTS|BDE101) Condition":
  [Condition: Concepts."Invalid - HIV.B.DE101"]
define "Invalid (HTS|BDE101) Observation":
  "Test result of HIV assay 2 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.B.DE101"
/* End of Invalid (HTS|BDE101) */

/*
@dataElement: HIV.B.DE102 - Test result of HIV assay 3
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the third HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 3 (HTS)":
  exists "Test result of HIV assay 3 (HTS) Observation"
define "Test result of HIV assay 3 (HTS) Observation":
  [Observation: Concepts."Test result of HIV assay 3 - HIV.B.DE102"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 3 (HTS) */

/*
@dataElement: HIV.B.DE103 - Reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE103)":
  exists "Reactive (HTS|BDE103) Condition"
    or exists "Reactive (HTS|BDE103) Observation"
define "Reactive (HTS|BDE103) Condition":
  [Condition: Concepts."Reactive - HIV.B.DE103"]
define "Reactive (HTS|BDE103) Observation":
  "Test result of HIV assay 3 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.B.DE103"
/* End of Reactive (HTS|BDE103) */

/*
@dataElement: HIV.B.DE104 - Non-reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE104)":
  exists "Non-reactive (HTS|BDE104) Condition"
    or exists "Non-reactive (HTS|BDE104) Observation"
define "Non-reactive (HTS|BDE104) Condition":
  [Condition: Concepts."Non-reactive - HIV.B.DE104"]
define "Non-reactive (HTS|BDE104) Observation":
  "Test result of HIV assay 3 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.B.DE104"
/* End of Non-reactive (HTS|BDE104) */

/*
@dataElement: HIV.B.DE105 - Invalid
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE105)":
  exists "Invalid (HTS|BDE105) Condition"
    or exists "Invalid (HTS|BDE105) Observation"
define "Invalid (HTS|BDE105) Condition":
  [Condition: Concepts."Invalid - HIV.B.DE105"]
define "Invalid (HTS|BDE105) Observation":
  "Test result of HIV assay 3 (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.B.DE105"
/* End of Invalid (HTS|BDE105) */

/*
@dataElement: HIV.B.DE106 - Test result of HIV assay 1 repeated
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the repeated first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 repeated (HTS)":
  exists "Test result of HIV assay 1 repeated (HTS) Observation"
define "Test result of HIV assay 1 repeated (HTS) Observation":
  [Observation: Concepts."Test result of HIV assay 1 repeated - HIV.B.DE106"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 1 repeated (HTS) */

/*
@dataElement: HIV.B.DE107 - Reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (HTS|BDE107)":
  exists "Reactive (HTS|BDE107) Condition"
    or exists "Reactive (HTS|BDE107) Observation"
define "Reactive (HTS|BDE107) Condition":
  [Condition: Concepts."Reactive - HIV.B.DE107"]
define "Reactive (HTS|BDE107) Observation":
  "Test result of HIV assay 1 repeated (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.B.DE107"
/* End of Reactive (HTS|BDE107) */

/*
@dataElement: HIV.B.DE108 - Non-reactive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (HTS|BDE108)":
  exists "Non-reactive (HTS|BDE108) Condition"
    or exists "Non-reactive (HTS|BDE108) Observation"
define "Non-reactive (HTS|BDE108) Condition":
  [Condition: Concepts."Non-reactive - HIV.B.DE108"]
define "Non-reactive (HTS|BDE108) Observation":
  "Test result of HIV assay 1 repeated (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.B.DE108"
/* End of Non-reactive (HTS|BDE108) */

/*
@dataElement: HIV.B.DE109 - Invalid
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (HTS|BDE109)":
  exists "Invalid (HTS|BDE109) Condition"
    or exists "Invalid (HTS|BDE109) Observation"
define "Invalid (HTS|BDE109) Condition":
  [Condition: Concepts."Invalid - HIV.B.DE109"]
define "Invalid (HTS|BDE109) Observation":
  "Test result of HIV assay 1 repeated (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.B.DE109"
/* End of Invalid (HTS|BDE109) */

/*
@dataElement: HIV.B.DE110 - HIV test date
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Date of the HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test date (HTS)":
  [Observation: Concepts."HIV test date - HIV.B.DE110"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HIV test date (HTS) Value":
  "HIV test date (HTS)" O
  return O.value
/* End of HIV test date (HTS) */

/*
@dataElement: HIV.B.DE111 - HIV test result
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result from HIV testing after applying the testing algorithm
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test result (HTS)":
  exists "HIV test result (HTS) Observation"
define "HIV test result (HTS) Observation":
  [Observation: Concepts."HIV test result - HIV.B.DE111"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV test result (HTS) */

/*
@dataElement: HIV.B.DE112 - HIV-positive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Test result is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (HTS|BDE112)":
  exists "HIV-positive (HTS|BDE112) Condition"
    or exists "HIV-positive (HTS|BDE112) Observation"
define "HIV-positive (HTS|BDE112) Condition":
  [Condition: Concepts."HIV-positive - HIV.B.DE112"]
define "HIV-positive (HTS|BDE112) Observation":
  "HIV test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive - HIV.B.DE112"
/* End of HIV-positive (HTS|BDE112) */

/*
@dataElement: HIV.B.DE113 - HIV-negative
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Test result is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative (HTS|BDE113)":
  exists "HIV-negative (HTS|BDE113) Condition"
    or exists "HIV-negative (HTS|BDE113) Observation"
define "HIV-negative (HTS|BDE113) Condition":
  [Condition: Concepts."HIV-negative - HIV.B.DE113"]
define "HIV-negative (HTS|BDE113) Observation":
  "HIV test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-negative - HIV.B.DE113"
/* End of HIV-negative (HTS|BDE113) */

/*
@dataElement: HIV.B.DE114 - HIV-inconclusive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Test result is HIV-inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-inconclusive (HTS)":
  exists "HIV-inconclusive (HTS) Condition"
    or exists "HIV-inconclusive (HTS) Observation"
define "HIV-inconclusive (HTS) Condition":
  [Condition: Concepts."HIV-inconclusive"]
define "HIV-inconclusive (HTS) Observation":
  "HIV test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-inconclusive"
/* End of HIV-inconclusive (HTS) */

/*
@dataElement: HIV.B.DE115 - HIV status
@activity: HIV.B7 Test for HIV using testing algorithm
@description: HIV status reported after applying the national HIV testing algorithm. No single HIV test can provide an HIV-positive diagnosis.
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV status (HTS)":
  exists "HIV status (HTS) Observation"
define "HIV status (HTS) Observation":
  [Observation: Concepts."HIV status"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV status (HTS) */

/*
@dataElement: HIV.B.DE116 - HIV-positive
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Client is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (HTS|BDE116)":
  exists "HIV-positive (HTS|BDE116) Condition"
    or exists "HIV-positive (HTS|BDE116) Observation"
define "HIV-positive (HTS|BDE116) Condition":
  [Condition: Concepts."HIV-positive - HIV.B.DE116"]
define "HIV-positive (HTS|BDE116) Observation":
  "HIV status (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive - HIV.B.DE116"
/* End of HIV-positive (HTS|BDE116) */

/*
@dataElement: HIV.B.DE117 - HIV-negative
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Client is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative (HTS|BDE117)":
  exists "HIV-negative (HTS|BDE117) Condition"
    or exists "HIV-negative (HTS|BDE117) Observation"
define "HIV-negative (HTS|BDE117) Condition":
  [Condition: Concepts."HIV-negative - HIV.B.DE117"]
define "HIV-negative (HTS|BDE117) Observation":
  "HIV status (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-negative - HIV.B.DE117"
/* End of HIV-negative (HTS|BDE117) */

/*
@dataElement: HIV.B.DE118 - Unknown
@activity: HIV.B7 Test for HIV using testing algorithm
@description: Client has unknown HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unknown (HTS|BDE118)":
  exists "Unknown (HTS|BDE118) Condition"
    or exists "Unknown (HTS|BDE118) Observation"
define "Unknown (HTS|BDE118) Condition":
  [Condition: Concepts."Unknown - HIV.B.DE118"]
define "Unknown (HTS|BDE118) Observation":
  "HIV status (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unknown - HIV.B.DE118"
/* End of Unknown (HTS|BDE118) */

/*
@dataElement: HIV.B.DE121 - Probable route of transmission*
@activity: HIV.B8 Provide post-test counselling
@description: Probable route(s) of transmission of HIV to client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Probable route of transmission* (HTS)":
  exists "Probable route of transmission* (HTS) Observation"
define "Probable route of transmission* (HTS) Observation":
  [Observation: Concepts."Probable route of transmission*"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Probable route of transmission* (HTS) */

/*
@dataElement: HIV.B.DE122 - Heterosexual sex
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through heterosexual sex
*/
// TODO: Replace placeholder with relevant CQL logic
define "Heterosexual sex (HTS)":
  exists "Heterosexual sex (HTS) Condition"
    or exists "Heterosexual sex (HTS) Observation"
define "Heterosexual sex (HTS) Condition":
  [Condition: Concepts."Heterosexual sex"]
define "Heterosexual sex (HTS) Observation":
  "Probable route of transmission* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Heterosexual sex"
/* End of Heterosexual sex (HTS) */

/*
@dataElement: HIV.B.DE123 - Sex between men
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through sex between men
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sex between men (HTS)":
  exists "Sex between men (HTS) Condition"
    or exists "Sex between men (HTS) Observation"
define "Sex between men (HTS) Condition":
  [Condition: Concepts."Sex between men"]
define "Sex between men (HTS) Observation":
  "Probable route of transmission* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sex between men"
/* End of Sex between men (HTS) */

/*
@dataElement: HIV.B.DE124 - Unprotected intercourse during sex work
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through unprotected intercourse during sex work
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unprotected intercourse during sex work (HTS)":
  exists "Unprotected intercourse during sex work (HTS) Condition"
    or exists "Unprotected intercourse during sex work (HTS) Observation"
define "Unprotected intercourse during sex work (HTS) Condition":
  [Condition: Concepts."Unprotected intercourse during sex work"]
define "Unprotected intercourse during sex work (HTS) Observation":
  "Probable route of transmission* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unprotected intercourse during sex work"
/* End of Unprotected intercourse during sex work (HTS) */

/*
@dataElement: HIV.B.DE125 - Injecting drug use with unsterile equipment
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was through injecting drug use with unsterile equipment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Injecting drug use with unsterile equipment (HTS)":
  exists "Injecting drug use with unsterile equipment (HTS) Condition"
    or exists "Injecting drug use with unsterile equipment (HTS) Observation"
define "Injecting drug use with unsterile equipment (HTS) Condition":
  [Condition: Concepts."Injecting drug use with unsterile equipment"]
define "Injecting drug use with unsterile equipment (HTS) Observation":
  "Probable route of transmission* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Injecting drug use with unsterile equipment"
/* End of Injecting drug use with unsterile equipment (HTS) */

/*
@dataElement: HIV.B.DE126 - Nosocomial
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was nosocomial
*/
// TODO: Replace placeholder with relevant CQL logic
define "Nosocomial (HTS)":
  exists "Nosocomial (HTS) Condition"
    or exists "Nosocomial (HTS) Observation"
define "Nosocomial (HTS) Condition":
  [Condition: Concepts."Nosocomial"]
define "Nosocomial (HTS) Observation":
  "Probable route of transmission* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Nosocomial"
/* End of Nosocomial (HTS) */

/*
@dataElement: HIV.B.DE127 - Vertical
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission to an infant was during pregnancy, labour, delivery and breastfeeding (vertical transmission)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Vertical (HTS)":
  exists "Vertical (HTS) Condition"
    or exists "Vertical (HTS) Observation"
define "Vertical (HTS) Condition":
  [Condition: Concepts."Vertical"]
define "Vertical (HTS) Observation":
  "Probable route of transmission* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Vertical"
/* End of Vertical (HTS) */

/*
@dataElement: HIV.B.DE128 - Other
@activity: HIV.B8 Provide post-test counselling
@description: Probable route of HIV transmission was other and may include needle accidents, blood transfusion, blood products or organ/tissue donations, tattoos, piercings, circumcision, or acupuncture.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE128)":
  exists "Other (HTS|BDE128) Condition"
    or exists "Other (HTS|BDE128) Observation"
define "Other (HTS|BDE128) Condition":
  [Condition: Concepts."Other - HIV.B.DE128"]
define "Other (HTS|BDE128) Observation":
  "Probable route of transmission* (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.B.DE128"
/* End of Other (HTS|BDE128) */

/*
@dataElement: HIV.B.DE141 - Partner virally suppressed on ART
@activity: HIV.B6 Capture or update client history
@description: ART and virally suppression status of a partner of the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner virally suppressed on ART (HTS)":
  exists "Partner virally suppressed on ART (HTS) Observation"
define "Partner virally suppressed on ART (HTS) Observation":
  [Observation: Concepts."Partner virally suppressed on ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Partner virally suppressed on ART (HTS) */

/*
@dataElement: HIV.B.DE142 - Counselling provided
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Counselling provided (HTS)":
  exists "Counselling provided (HTS) Observation"
define "Counselling provided (HTS) Observation":
  [Observation: Concepts."Counselling provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Counselling provided (HTS) */

/*
@dataElement: HIV.B.DE143 - HIV-positive counselling conducted
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client who has been diagnosed with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive counselling conducted (HTS)":
  exists "HIV-positive counselling conducted (HTS) Condition"
    or exists "HIV-positive counselling conducted (HTS) Observation"
define "HIV-positive counselling conducted (HTS) Condition":
  [Condition: Concepts."HIV-positive counselling conducted"]
define "HIV-positive counselling conducted (HTS) Observation":
  "Counselling provided (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive counselling conducted"
/* End of HIV-positive counselling conducted (HTS) */

/*
@dataElement: HIV.B.DE144 - Hepatitis B positive counselling conducted
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client who has been diagnosed with hepatitis B
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B positive counselling conducted (HTS)":
  exists "Hepatitis B positive counselling conducted (HTS) Condition"
    or exists "Hepatitis B positive counselling conducted (HTS) Observation"
define "Hepatitis B positive counselling conducted (HTS) Condition":
  [Condition: Concepts."Hepatitis B positive counselling conducted"]
define "Hepatitis B positive counselling conducted (HTS) Observation":
  "Counselling provided (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hepatitis B positive counselling conducted"
/* End of Hepatitis B positive counselling conducted (HTS) */

/*
@dataElement: HIV.B.DE145 - Hepatitis C positive counselling conducted
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling was provided to a client who has been diagnosed with hepatitis C
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis C positive counselling conducted (HTS)":
  exists "Hepatitis C positive counselling conducted (HTS) Condition"
    or exists "Hepatitis C positive counselling conducted (HTS) Observation"
define "Hepatitis C positive counselling conducted (HTS) Condition":
  [Condition: Concepts."Hepatitis C positive counselling conducted"]
define "Hepatitis C positive counselling conducted (HTS) Observation":
  "Counselling provided (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hepatitis C positive counselling conducted"
/* End of Hepatitis C positive counselling conducted (HTS) */

/*
@dataElement: HIV.B.DE146 - Syphilis counselling, treatment and further testing
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling and treatment was provided to a client who has been diagnosed with syphilis. Additional testing (RPR test) recommended.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis counselling, treatment and further testing (HTS)":
  exists "Syphilis counselling, treatment and further testing (HTS) Condition"
    or exists "Syphilis counselling, treatment and further testing (HTS) Observation"
define "Syphilis counselling, treatment and further testing (HTS) Condition":
  [Condition: Concepts."Syphilis counselling, treatment and further testing"]
define "Syphilis counselling, treatment and further testing (HTS) Observation":
  "Counselling provided (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Syphilis counselling, treatment and further testing"
/* End of Syphilis counselling, treatment and further testing (HTS) */

/*
@dataElement: HIV.B.DE147 - Linked to enrolment in care and ART initiation
@activity: HIV.B8 Provide post-test counselling
@description: Linkage made from HIV testing to enrolment in care following an HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Linked to enrolment in care and ART initiation (HTS)":
  exists "Linked to enrolment in care and ART initiation (HTS) Condition"
    or exists "Linked to enrolment in care and ART initiation (HTS) Observation"
define "Linked to enrolment in care and ART initiation (HTS) Condition":
  [Condition: Concepts."Linked to enrolment in care and ART initiation"]
define "Linked to enrolment in care and ART initiation (HTS) Observation":
  "Counselling provided (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Linked to enrolment in care and ART initiation"
/* End of Linked to enrolment in care and ART initiation (HTS) */

/*
@dataElement: HIV.B.DE148 - VMMC counselling provided
@activity: HIV.B8 Provide post-test counselling
@description: Whether counselling for voluntary medical male circumcision (VMMC) was provided following an HIV-negative test
*/
// TODO: Replace placeholder with relevant CQL logic
define "VMMC counselling provided (HTS)":
  exists "VMMC counselling provided (HTS) Condition"
    or exists "VMMC counselling provided (HTS) Observation"
define "VMMC counselling provided (HTS) Condition":
  [Condition: Concepts."VMMC counselling provided"]
define "VMMC counselling provided (HTS) Observation":
  "Counselling provided (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."VMMC counselling provided"
/* End of VMMC counselling provided (HTS) */

/*
@dataElement: HIV.B.DE149 - Prevention services offered and referrals
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention services offered and referrals (HTS)":
  exists "Prevention services offered and referrals (HTS) Observation"
define "Prevention services offered and referrals (HTS) Observation":
  [Observation: Concepts."Prevention services offered and referrals - HIV.B.DE149"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Prevention services offered and referrals (HTS) */

/*
@dataElement: HIV.B.DE150 - Offer male and female condoms and condom-compatible lubricants
@activity: HIV.B9 Determine recommended services
@description: Offer male and female condoms and condom-compatible lubricants
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer male and female condoms and condom-compatible lubricants (HTS)":
  exists "Offer male and female condoms and condom-compatible lubricants (HTS) Condition"
    or exists "Offer male and female condoms and condom-compatible lubricants (HTS) Observation"
define "Offer male and female condoms and condom-compatible lubricants (HTS) Condition":
  [Condition: Concepts."Offer male and female condoms and condom-compatible lubricants - HIV.B.DE150"]
define "Offer male and female condoms and condom-compatible lubricants (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Offer male and female condoms and condom-compatible lubricants - HIV.B.DE150"
/* End of Offer male and female condoms and condom-compatible lubricants (HTS) */

/*
@dataElement: HIV.B.DE151 - Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition
@activity: HIV.B9 Determine recommended services
@description: Offer pre-exposure prophylaxis (PrEP) to people with substantial ongoing risk of HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS)":
  exists "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Condition"
    or exists "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Observation"
define "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Condition":
  [Condition: Concepts."Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition"]
define "Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition"
/* End of Offer pre-exposure prophylaxis PrEP for people at elevated risk for HIV acquisition (HTS) */

/*
@dataElement: HIV.B.DE152 - Offer post-exposure prophylaxis PEP following suspected exposure
@activity: HIV.B9 Determine recommended services
@description: Offer or refer client for PEP following suspected exposure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer post-exposure prophylaxis PEP following suspected exposure (HTS)":
  exists "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Condition"
    or exists "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Observation"
define "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Condition":
  [Condition: Concepts."Offer post-exposure prophylaxis PEP following suspected exposure"]
define "Offer post-exposure prophylaxis PEP following suspected exposure (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Offer post-exposure prophylaxis PEP following suspected exposure"
/* End of Offer post-exposure prophylaxis PEP following suspected exposure (HTS) */

/*
@dataElement: HIV.B.DE153 - Voluntary medical male circumcision VMMC
@activity: HIV.B9 Determine recommended services
@description: Offer referral for VMMC services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Voluntary medical male circumcision VMMC (HTS)":
  exists "Voluntary medical male circumcision VMMC (HTS) Condition"
    or exists "Voluntary medical male circumcision VMMC (HTS) Observation"
define "Voluntary medical male circumcision VMMC (HTS) Condition":
  [Condition: Concepts."Voluntary medical male circumcision VMMC"]
define "Voluntary medical male circumcision VMMC (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Voluntary medical male circumcision VMMC"
/* End of Voluntary medical male circumcision VMMC (HTS) */

/*
@dataElement: HIV.B.DE154 - Harm reduction for people who inject drugs
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to harm reduction services for people who inject drugs (needle and syringe programmes, opioid substitution therapy, other drug-dependence treatment and opioid overdose prevention and management)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Harm reduction for people who inject drugs (HTS)":
  exists "Harm reduction for people who inject drugs (HTS) Condition"
    or exists "Harm reduction for people who inject drugs (HTS) Observation"
define "Harm reduction for people who inject drugs (HTS) Condition":
  [Condition: Concepts."Harm reduction for people who inject drugs - HIV.B.DE154"]
define "Harm reduction for people who inject drugs (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Harm reduction for people who inject drugs - HIV.B.DE154"
/* End of Harm reduction for people who inject drugs (HTS) */

/*
@dataElement: HIV.B.DE155 - Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations
*/
// TODO: Replace placeholder with relevant CQL logic
define "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS)":
  exists "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Condition"
    or exists "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Observation"
define "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Condition":
  [Condition: Concepts."Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations"]
define "Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations"
/* End of Behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations (HTS) */

/*
@dataElement: HIV.B.DE156 - HIV testing for partners and biological children
@activity: HIV.B9 Determine recommended services
@description: Offer voluntary testing for all partners and biological children of positive cases (includes partner services and index case testing), as welll as partners and social contacts of people from key populations, where appropriate
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing for partners and biological children (HTS)":
  exists "HIV testing for partners and biological children (HTS) Condition"
    or exists "HIV testing for partners and biological children (HTS) Observation"
define "HIV testing for partners and biological children (HTS) Condition":
  [Condition: Concepts."HIV testing for partners and biological children - HIV.B.DE156"]
define "HIV testing for partners and biological children (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV testing for partners and biological children - HIV.B.DE156"
/* End of HIV testing for partners and biological children (HTS) */

/*
@dataElement: HIV.B.DE157 - HIV testing for partners and social contacts of people from key populations, where appropriate
@activity: HIV.B9 Determine recommended services
@description: Offer voluntary testing for partners and social contacts of people from key populations, where appropriate
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS)":
  exists "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Condition"
    or exists "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Observation"
define "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Condition":
  [Condition: Concepts."HIV testing for partners and social contacts of people from key populations, where appropriate"]
define "HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) Observation":
  "Prevention services offered and referrals (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV testing for partners and social contacts of people from key populations, where appropriate"
/* End of HIV testing for partners and social contacts of people from key populations, where appropriate (HTS) */

/*
@dataElement: HIV.B.DE158 - Sexual and reproductive health integrated services
@activity: HIV.B9 Determine recommended services
@description: Offer or refer to sexual and reproductive health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual and reproductive health integrated services (HTS)":
  exists "Sexual and reproductive health integrated services (HTS) Observation"
define "Sexual and reproductive health integrated services (HTS) Observation":
  [Observation: Concepts."Sexual and reproductive health integrated services - HIV.B.DE158"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Sexual and reproductive health integrated services (HTS) */

/*
@dataElement: HIV.B.DE159 - Contraception and family planning
@activity: HIV.B9 Determine recommended services
@description: Offer contraception and family planning services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraception and family planning (HTS)":
  exists "Contraception and family planning (HTS) Condition"
    or exists "Contraception and family planning (HTS) Observation"
define "Contraception and family planning (HTS) Condition":
  [Condition: Concepts."Contraception and family planning - HIV.B.DE159"]
define "Contraception and family planning (HTS) Observation":
  "Sexual and reproductive health integrated services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Contraception and family planning - HIV.B.DE159"
/* End of Contraception and family planning (HTS) */

/*
@dataElement: HIV.B.DE160 - Check pregnancy status
@activity: HIV.B9 Determine recommended services
@description: Check women's pregnancy status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Check pregnancy status (HTS)":
  exists "Check pregnancy status (HTS) Condition"
    or exists "Check pregnancy status (HTS) Observation"
define "Check pregnancy status (HTS) Condition":
  [Condition: Concepts."Check pregnancy status - HIV.B.DE160"]
define "Check pregnancy status (HTS) Observation":
  "Sexual and reproductive health integrated services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Check pregnancy status - HIV.B.DE160"
/* End of Check pregnancy status (HTS) */

/*
@dataElement: HIV.B.DE161 - Prevention of mother-to-child transmission counselling
@activity: HIV.B9 Determine recommended services
@description: Offer services for prevention of mother-to-child transmission (counselling)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention of mother-to-child transmission counselling (HTS)":
  exists "Prevention of mother-to-child transmission counselling (HTS) Condition"
    or exists "Prevention of mother-to-child transmission counselling (HTS) Observation"
define "Prevention of mother-to-child transmission counselling (HTS) Condition":
  [Condition: Concepts."Prevention of mother-to-child transmission counselling"]
define "Prevention of mother-to-child transmission counselling (HTS) Observation":
  "Sexual and reproductive health integrated services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Prevention of mother-to-child transmission counselling"
/* End of Prevention of mother-to-child transmission counselling (HTS) */

/*
@dataElement: HIV.B.DE162 - Cervical cancer screening and treatment counselling
@activity: HIV.B9 Determine recommended services
@description: Offer cervical cancer screening and treatment counselling and services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening and treatment counselling (HTS)":
  exists "Cervical cancer screening and treatment counselling (HTS) Condition"
    or exists "Cervical cancer screening and treatment counselling (HTS) Observation"
define "Cervical cancer screening and treatment counselling (HTS) Condition":
  [Condition: Concepts."Cervical cancer screening and treatment counselling"]
define "Cervical cancer screening and treatment counselling (HTS) Observation":
  "Sexual and reproductive health integrated services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cervical cancer screening and treatment counselling"
/* End of Cervical cancer screening and treatment counselling (HTS) */

/*
@dataElement: HIV.B.DE163 - Anal cancer screening for men who have sex with men
@activity: HIV.B9 Determine recommended services
@description: Offer services for anal cancer screening (for men who have sex with men)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anal cancer screening for men who have sex with men (HTS)":
  exists "Anal cancer screening for men who have sex with men (HTS) Condition"
    or exists "Anal cancer screening for men who have sex with men (HTS) Observation"
define "Anal cancer screening for men who have sex with men (HTS) Condition":
  [Condition: Concepts."Anal cancer screening for men who have sex with men - HIV.B.DE163"]
define "Anal cancer screening for men who have sex with men (HTS) Observation":
  "Sexual and reproductive health integrated services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Anal cancer screening for men who have sex with men - HIV.B.DE163"
/* End of Anal cancer screening for men who have sex with men (HTS) */

/*
@dataElement: HIV.B.DE164 - STI testing and treatment services
@activity: HIV.B9 Determine recommended services
@description: Offer sexually transmitted infection (STI) testing and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI testing and treatment services (HTS)":
  exists "STI testing and treatment services (HTS) Condition"
    or exists "STI testing and treatment services (HTS) Observation"
define "STI testing and treatment services (HTS) Condition":
  [Condition: Concepts."STI testing and treatment services"]
define "STI testing and treatment services (HTS) Observation":
  "Sexual and reproductive health integrated services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."STI testing and treatment services"
/* End of STI testing and treatment services (HTS) */

/*
@dataElement: HIV.B.DE165 - Offer other clinical services
@activity: HIV.B9 Determine recommended services
@description: Other clinical services offered or referrals given to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer other clinical services (HTS)":
  exists "Offer other clinical services (HTS) Observation"
define "Offer other clinical services (HTS) Observation":
  [Observation: Concepts."Offer other clinical services - HIV.B.DE165"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Offer other clinical services (HTS) */

/*
@dataElement: HIV.B.DE166 - Assessment and provision of vaccinations
@activity: HIV.B9 Determine recommended services
@description: Assessment and provision of vaccinations, such as for people from key populations, pregnant women and infants; and, where appropriate, tetanus vaccination for adolescent boys and men receiving VMMC
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assessment and provision of vaccinations (HTS)":
  exists "Assessment and provision of vaccinations (HTS) Condition"
    or exists "Assessment and provision of vaccinations (HTS) Observation"
define "Assessment and provision of vaccinations (HTS) Condition":
  [Condition: Concepts."Assessment and provision of vaccinations - HIV.B.DE166"]
define "Assessment and provision of vaccinations (HTS) Observation":
  "Offer other clinical services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assessment and provision of vaccinations - HIV.B.DE166"
/* End of Assessment and provision of vaccinations (HTS) */

/*
@dataElement: HIV.B.DE167 - Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for HBV and/or HCV testing and treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS)":
  exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Condition"
    or exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Observation"
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Condition":
  [Condition: Concepts."Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided"]
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) Observation":
  "Offer other clinical services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided"
/* End of Hepatitis B HBV and hepatitis C virus HCV testing and treatment provided (HTS) */

/*
@dataElement: HIV.B.DE168 - Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS)":
  exists "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Condition"
    or exists "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Observation"
define "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Condition":
  [Condition: Concepts."Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided"]
define "Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) Observation":
  "Offer other clinical services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided"
/* End of Co-trimoxazole chemoprophylaxis to prevent Pneumocystis carinii pneumonia provided (HTS) */

/*
@dataElement: HIV.B.DE169 - Intensified TB case finding and linkage to TB treatment provided
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for intensified TB case finding and linkage to TB treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intensified TB case finding and linkage to TB treatment provided (HTS)":
  exists "Intensified TB case finding and linkage to TB treatment provided (HTS) Condition"
    or exists "Intensified TB case finding and linkage to TB treatment provided (HTS) Observation"
define "Intensified TB case finding and linkage to TB treatment provided (HTS) Condition":
  [Condition: Concepts."Intensified TB case finding and linkage to TB treatment provided"]
define "Intensified TB case finding and linkage to TB treatment provided (HTS) Observation":
  "Offer other clinical services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Intensified TB case finding and linkage to TB treatment provided"
/* End of Intensified TB case finding and linkage to TB treatment provided (HTS) */

/*
@dataElement: HIV.B.DE170 - Provision of isoniazid preventive therapy if person does not have TB
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for provision of isoniazid preventive therapy if person does not have TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Provision of isoniazid preventive therapy if person does not have TB (HTS)":
  exists "Provision of isoniazid preventive therapy if person does not have TB (HTS) Condition"
    or exists "Provision of isoniazid preventive therapy if person does not have TB (HTS) Observation"
define "Provision of isoniazid preventive therapy if person does not have TB (HTS) Condition":
  [Condition: Concepts."Provision of isoniazid preventive therapy if person does not have TB - HIV.B.DE170"]
define "Provision of isoniazid preventive therapy if person does not have TB (HTS) Observation":
  "Offer other clinical services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Provision of isoniazid preventive therapy if person does not have TB - HIV.B.DE170"
/* End of Provision of isoniazid preventive therapy if person does not have TB (HTS) */

/*
@dataElement: HIV.B.DE171 - Malaria prevention such as bed nets and prophylaxis, depending on epidemiology
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for malaria prevention (such as bed nets and prophylaxis), depending on epidemiology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS)":
  exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Condition"
    or exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Observation"
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Condition":
  [Condition: Concepts."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology - HIV.B.DE171"]
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) Observation":
  "Offer other clinical services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology - HIV.B.DE171"
/* End of Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (HTS) */

/*
@dataElement: HIV.B.DE172 - Other support services
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for other support services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other support services (HTS)":
  exists "Other support services (HTS) Observation"
define "Other support services (HTS) Observation":
  [Observation: Concepts."Other support services - HIV.B.DE172"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Other support services (HTS) */

/*
@dataElement: HIV.B.DE173 - Mental health services
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for mental health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mental health services (HTS)":
  exists "Mental health services (HTS) Condition"
    or exists "Mental health services (HTS) Observation"
define "Mental health services (HTS) Condition":
  [Condition: Concepts."Mental health services - HIV.B.DE173"]
define "Mental health services (HTS) Observation":
  "Other support services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Mental health services - HIV.B.DE173"
/* End of Mental health services (HTS) */

/*
@dataElement: HIV.B.DE174 - Psychosocial counselling, support and treatment adherence counselling
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for psychosocial counselling, support and treatment adherence counselling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Psychosocial counselling, support and treatment adherence counselling (HTS)":
  exists "Psychosocial counselling, support and treatment adherence counselling (HTS) Condition"
    or exists "Psychosocial counselling, support and treatment adherence counselling (HTS) Observation"
define "Psychosocial counselling, support and treatment adherence counselling (HTS) Condition":
  [Condition: Concepts."Psychosocial counselling, support and treatment adherence counselling - HIV.B.DE174"]
define "Psychosocial counselling, support and treatment adherence counselling (HTS) Observation":
  "Other support services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Psychosocial counselling, support and treatment adherence counselling - HIV.B.DE174"
/* End of Psychosocial counselling, support and treatment adherence counselling (HTS) */

/*
@dataElement: HIV.B.DE175 - Support for disclosure and partner services
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for support for disclosure and partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Support for disclosure and partner services (HTS)":
  exists "Support for disclosure and partner services (HTS) Condition"
    or exists "Support for disclosure and partner services (HTS) Observation"
define "Support for disclosure and partner services (HTS) Condition":
  [Condition: Concepts."Support for disclosure and partner services - HIV.B.DE175"]
define "Support for disclosure and partner services (HTS) Observation":
  "Other support services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Support for disclosure and partner services - HIV.B.DE175"
/* End of Support for disclosure and partner services (HTS) */

/*
@dataElement: HIV.B.DE176 - Legal and social services
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for legal and social services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Legal and social services (HTS)":
  exists "Legal and social services (HTS) Condition"
    or exists "Legal and social services (HTS) Observation"
define "Legal and social services (HTS) Condition":
  [Condition: Concepts."Legal and social services - HIV.B.DE176"]
define "Legal and social services (HTS) Observation":
  "Other support services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Legal and social services - HIV.B.DE176"
/* End of Legal and social services (HTS) */

/*
@dataElement: HIV.B.DE177 - Services for responding to violence against women
@activity: HIV.B9 Determine recommended services
@description: Offer or refer for services for responding to violence against women, including first-line support and psychosocial support, post-rape care and other support services including shelters, legal services and women and child protection services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Services for responding to violence against women (HTS)":
  exists "Services for responding to violence against women (HTS) Condition"
    or exists "Services for responding to violence against women (HTS) Observation"
define "Services for responding to violence against women (HTS) Condition":
  [Condition: Concepts."Services for responding to violence against women - HIV.B.DE177"]
define "Services for responding to violence against women (HTS) Observation":
  "Other support services (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Services for responding to violence against women - HIV.B.DE177"
/* End of Services for responding to violence against women (HTS) */

/*
@dataElement: HIV.B.DE191 - Type of follow-up appointment
@activity: HIV.B20 Schedule retest
@description: Type of follow-up appointment for testing services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of follow-up appointment (HTS)":
  exists "Type of follow-up appointment (HTS) Observation"
define "Type of follow-up appointment (HTS) Observation":
  [Observation: Concepts."Type of follow-up appointment - HIV.B.DE191"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of follow-up appointment (HTS) */

/*
@dataElement: HIV.B.DE192 - Retesting for HIV
@activity: HIV.B20 Schedule retest
@description: Retesting follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retesting for HIV (HTS|BDE192)":
  exists "Retesting for HIV (HTS|BDE192) Condition"
    or exists "Retesting for HIV (HTS|BDE192) Observation"
define "Retesting for HIV (HTS|BDE192) Condition":
  [Condition: Concepts."Retesting for HIV - HIV.B.DE192"]
define "Retesting for HIV (HTS|BDE192) Observation":
  "Type of follow-up appointment (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Retesting for HIV - HIV.B.DE192"
/* End of Retesting for HIV (HTS|BDE192) */

/*
@dataElement: HIV.B.DE193 - Other
@activity: HIV.B20 Schedule retest
@description: Other reason for the follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE193)":
  exists "Other (HTS|BDE193) Condition"
    or exists "Other (HTS|BDE193) Observation"
define "Other (HTS|BDE193) Condition":
  [Condition: Concepts."Other - HIV.B.DE193"]
define "Other (HTS|BDE193) Observation":
  "Type of follow-up appointment (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.B.DE193"
/* End of Other (HTS|BDE193) */

/*
@dataElement: HIV.B.DE195 - Date/time of follow-up appointment
@activity: HIV.B20 Schedule retest
@description: Date the patient is to return for monitoring, re-supply or any other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of follow-up appointment (HTS)":
  [Observation: Concepts."Date/time of follow-up appointment - HIV.B.DE195"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date/time of follow-up appointment (HTS) Value":
  "Date/time of follow-up appointment (HTS)" O
  return O.value
/* End of Date/time of follow-up appointment (HTS) */

/*
@dataElement: HIV.B.DE198 - VMMC procedure date
@activity: HIV.B21 Offer prevention options
@description: Date on which a voluntary medical male circumcision procedure was performed
*/
// TODO: Replace placeholder with relevant CQL logic
define "VMMC procedure date (HTS)":
  [Observation: Concepts."VMMC procedure date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "VMMC procedure date (HTS) Value":
  "VMMC procedure date (HTS)" O
  return O.value
/* End of VMMC procedure date (HTS) */

/*
@dataElement: HIV.B.DE201 - Adverse event severity
@activity: HIV.B21 Offer prevention options
@description: Severity of the adverse event associated with voluntary medical male circumcision (VMMC) procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Adverse event severity (HTS)":
  exists "Adverse event severity (HTS) Observation"
define "Adverse event severity (HTS) Observation":
  [Observation: Concepts."Adverse event severity"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Adverse event severity (HTS) */

/*
@dataElement: HIV.B.DE202 - Moderate
@activity: HIV.B21 Offer prevention options
@description: Severity of the adverse event associated with VMMC procedure was moderate
*/
// TODO: Replace placeholder with relevant CQL logic
define "Moderate (HTS)":
  exists "Moderate (HTS) Condition"
    or exists "Moderate (HTS) Observation"
define "Moderate (HTS) Condition":
  [Condition: Concepts."Moderate"]
define "Moderate (HTS) Observation":
  "Adverse event severity (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Moderate"
/* End of Moderate (HTS) */

/*
@dataElement: HIV.B.DE203 - Severe
@activity: HIV.B21 Offer prevention options
@description: Severity of the adverse event associated with VMMC procedure was severe
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe (HTS)":
  exists "Severe (HTS) Condition"
    or exists "Severe (HTS) Observation"
define "Severe (HTS) Condition":
  [Condition: Concepts."Severe"]
define "Severe (HTS) Observation":
  "Adverse event severity (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Severe"
/* End of Severe (HTS) */

/*
@dataElement: HIV.B.DE204 - Timing of adverse event
@activity: HIV.B21 Offer prevention options
@description: When the adverse event associated with VMMC procedure occurred
*/
// TODO: Replace placeholder with relevant CQL logic
define "Timing of adverse event (HTS)":
  exists "Timing of adverse event (HTS) Observation"
define "Timing of adverse event (HTS) Observation":
  [Observation: Concepts."Timing of adverse event"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Timing of adverse event (HTS) */

/*
@dataElement: HIV.B.DE205 - Intraoperative
@activity: HIV.B21 Offer prevention options
@description: The adverse event associated with VMMC procedure occurred during the procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intraoperative (HTS)":
  exists "Intraoperative (HTS) Condition"
    or exists "Intraoperative (HTS) Observation"
define "Intraoperative (HTS) Condition":
  [Condition: Concepts."Intraoperative"]
define "Intraoperative (HTS) Observation":
  "Timing of adverse event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Intraoperative"
/* End of Intraoperative (HTS) */

/*
@dataElement: HIV.B.DE206 - Postoperative
@activity: HIV.B21 Offer prevention options
@description: The adverse event associated with VMMC procedure occurred within the first 30 days after the procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Postoperative (HTS)":
  exists "Postoperative (HTS) Condition"
    or exists "Postoperative (HTS) Observation"
define "Postoperative (HTS) Condition":
  [Condition: Concepts."Postoperative"]
define "Postoperative (HTS) Observation":
  "Timing of adverse event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Postoperative"
/* End of Postoperative (HTS) */

/*
@dataElement: HIV.B.DE207 - Type of adverse VMMC event
@activity: HIV.B21 Offer prevention options
@description: Type of adverse event associated with voluntary medical male circumcision (VMMC) procedure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of adverse VMMC event (HTS)":
  exists "Type of adverse VMMC event (HTS) Observation"
define "Type of adverse VMMC event (HTS) Observation":
  [Observation: Concepts."Type of adverse VMMC event"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of adverse VMMC event (HTS) */

/*
@dataElement: HIV.B.DE208 - Abnormal pain
@activity: HIV.B21 Offer prevention options
@description: Client experienced abnormal pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Abnormal pain (HTS)":
  exists "Abnormal pain (HTS) Condition"
    or exists "Abnormal pain (HTS) Observation"
define "Abnormal pain (HTS) Condition":
  [Condition: Concepts."Abnormal pain"]
define "Abnormal pain (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Abnormal pain"
/* End of Abnormal pain (HTS) */

/*
@dataElement: HIV.B.DE209 - Anaesthesia-related effects
@activity: HIV.B21 Offer prevention options
@description: Client had anaesthesia-related effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anaesthesia-related effects (HTS)":
  exists "Anaesthesia-related effects (HTS) Condition"
    or exists "Anaesthesia-related effects (HTS) Observation"
define "Anaesthesia-related effects (HTS) Condition":
  [Condition: Concepts."Anaesthesia-related effects"]
define "Anaesthesia-related effects (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Anaesthesia-related effects"
/* End of Anaesthesia-related effects (HTS) */

/*
@dataElement: HIV.B.DE210 - Bleeding
@activity: HIV.B21 Offer prevention options
@description: Client had bleeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "Bleeding (HTS)":
  exists "Bleeding (HTS) Condition"
    or exists "Bleeding (HTS) Observation"
define "Bleeding (HTS) Condition":
  [Condition: Concepts."Bleeding"]
define "Bleeding (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Bleeding"
/* End of Bleeding (HTS) */

/*
@dataElement: HIV.B.DE211 - Damage to the penis
@activity: HIV.B21 Offer prevention options
@description: Client had damage to the penis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Damage to the penis (HTS)":
  exists "Damage to the penis (HTS) Condition"
    or exists "Damage to the penis (HTS) Observation"
define "Damage to the penis (HTS) Condition":
  [Condition: Concepts."Damage to the penis"]
define "Damage to the penis (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Damage to the penis"
/* End of Damage to the penis (HTS) */

/*
@dataElement: HIV.B.DE212 - Difficulty urinating
@activity: HIV.B21 Offer prevention options
@description: Client had difficulty urinating
*/
// TODO: Replace placeholder with relevant CQL logic
define "Difficulty urinating (HTS)":
  exists "Difficulty urinating (HTS) Condition"
    or exists "Difficulty urinating (HTS) Observation"
define "Difficulty urinating (HTS) Condition":
  [Condition: Concepts."Difficulty urinating"]
define "Difficulty urinating (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Difficulty urinating"
/* End of Difficulty urinating (HTS) */

/*
@dataElement: HIV.B.DE213 - Excessive bleeding
@activity: HIV.B21 Offer prevention options
@description: Client experienced excessive bleeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excessive bleeding (HTS)":
  exists "Excessive bleeding (HTS) Condition"
    or exists "Excessive bleeding (HTS) Observation"
define "Excessive bleeding (HTS) Condition":
  [Condition: Concepts."Excessive bleeding"]
define "Excessive bleeding (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Excessive bleeding"
/* End of Excessive bleeding (HTS) */

/*
@dataElement: HIV.B.DE214 - Excessive skin removal
@activity: HIV.B21 Offer prevention options
@description: Client experienced excessive skin removal
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excessive skin removal (HTS)":
  exists "Excessive skin removal (HTS) Condition"
    or exists "Excessive skin removal (HTS) Observation"
define "Excessive skin removal (HTS) Condition":
  [Condition: Concepts."Excessive skin removal"]
define "Excessive skin removal (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Excessive skin removal"
/* End of Excessive skin removal (HTS) */

/*
@dataElement: HIV.B.DE215 - Excessive swelling
@activity: HIV.B21 Offer prevention options
@description: Client experienced excessive swelling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excessive swelling (HTS)":
  exists "Excessive swelling (HTS) Condition"
    or exists "Excessive swelling (HTS) Observation"
define "Excessive swelling (HTS) Condition":
  [Condition: Concepts."Excessive swelling"]
define "Excessive swelling (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Excessive swelling"
/* End of Excessive swelling (HTS) */

/*
@dataElement: HIV.B.DE216 - Haematoma
@activity: HIV.B21 Offer prevention options
@description: Client experienced haematoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haematoma (HTS)":
  exists "Haematoma (HTS) Condition"
    or exists "Haematoma (HTS) Observation"
define "Haematoma (HTS) Condition":
  [Condition: Concepts."Haematoma"]
define "Haematoma (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Haematoma"
/* End of Haematoma (HTS) */

/*
@dataElement: HIV.B.DE217 - Infection
@activity: HIV.B21 Offer prevention options
@description: Client experienced infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infection (HTS)":
  exists "Infection (HTS) Condition"
    or exists "Infection (HTS) Observation"
define "Infection (HTS) Condition":
  [Condition: Concepts."Infection"]
define "Infection (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Infection"
/* End of Infection (HTS) */

/*
@dataElement: HIV.B.DE218 - Injury to glans
@activity: HIV.B21 Offer prevention options
@description: Client experienced injury to glans
*/
// TODO: Replace placeholder with relevant CQL logic
define "Injury to glans (HTS)":
  exists "Injury to glans (HTS) Condition"
    or exists "Injury to glans (HTS) Observation"
define "Injury to glans (HTS) Condition":
  [Condition: Concepts."Injury to glans"]
define "Injury to glans (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Injury to glans"
/* End of Injury to glans (HTS) */

/*
@dataElement: HIV.B.DE219 - Scar or disfigurement
@activity: HIV.B21 Offer prevention options
@description: Client experienced scar or disfigurement
*/
// TODO: Replace placeholder with relevant CQL logic
define "Scar or disfigurement (HTS)":
  exists "Scar or disfigurement (HTS) Condition"
    or exists "Scar or disfigurement (HTS) Observation"
define "Scar or disfigurement (HTS) Condition":
  [Condition: Concepts."Scar or disfigurement"]
define "Scar or disfigurement (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Scar or disfigurement"
/* End of Scar or disfigurement (HTS) */

/*
@dataElement: HIV.B.DE220 - Sharps injury to personnel
@activity: HIV.B21 Offer prevention options
@description: During VMMC procedure there was sharps injury to personnel
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sharps injury to personnel (HTS)":
  exists "Sharps injury to personnel (HTS) Condition"
    or exists "Sharps injury to personnel (HTS) Observation"
define "Sharps injury to personnel (HTS) Condition":
  [Condition: Concepts."Sharps injury to personnel"]
define "Sharps injury to personnel (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sharps injury to personnel"
/* End of Sharps injury to personnel (HTS) */

/*
@dataElement: HIV.B.DE221 - Wound disruption
@activity: HIV.B21 Offer prevention options
@description: Client experienced wound disruption
*/
// TODO: Replace placeholder with relevant CQL logic
define "Wound disruption (HTS)":
  exists "Wound disruption (HTS) Condition"
    or exists "Wound disruption (HTS) Observation"
define "Wound disruption (HTS) Condition":
  [Condition: Concepts."Wound disruption"]
define "Wound disruption (HTS) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Wound disruption"
/* End of Wound disruption (HTS) */

/*
@dataElement: HIV.B.DE222 - Other
@activity: HIV.B21 Offer prevention options
@description: Client experienced other adverse VMMC event
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE222)":
  exists "Other (HTS|BDE222) Condition"
    or exists "Other (HTS|BDE222) Observation"
define "Other (HTS|BDE222) Condition":
  [Condition: Concepts."Other - HIV.B.DE222"]
define "Other (HTS|BDE222) Observation":
  "Type of adverse VMMC event (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.B.DE222"
/* End of Other (HTS|BDE222) */

/*
@dataElement: HIV.B.DE224 - HIV retest prior to starting ART conducted
@activity: HIV.B20 Schedule retest
@description: HIV retest prior to starting ART conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV retest prior to starting ART conducted (HTS)":
  exists "HIV retest prior to starting ART conducted (HTS) Observation"
define "HIV retest prior to starting ART conducted (HTS) Observation":
  [Observation: Concepts."HIV retest prior to starting ART conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of HIV retest prior to starting ART conducted (HTS) */

/*
@dataElement: HIV.B.DE225 - At elevated risk for HIV acquisition
@activity: HIV.B6 Capture or update client history
@description: Client is at elevated risk for HIV acquisition
*/
// TODO: Replace placeholder with relevant CQL logic
define "At elevated risk for HIV acquisition (HTS)":
  exists "At elevated risk for HIV acquisition (HTS) Observation"
define "At elevated risk for HIV acquisition (HTS) Observation":
  [Observation: Concepts."At elevated risk for HIV acquisition - HIV.B.DE225"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of At elevated risk for HIV acquisition (HTS) */

/*
@dataElement: HIV.B.DE226 - Syndrome/STI diagnosed
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Syndrome or STI for which client is diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syndrome/STI diagnosed (HTS)":
  exists "Syndrome/STI diagnosed (HTS) Observation"
define "Syndrome/STI diagnosed (HTS) Observation":
  [Observation: Concepts."Syndrome/STI diagnosed - HIV.B.DE226"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Syndrome/STI diagnosed (HTS) */

/*
@dataElement: HIV.B.DE227 - Urethral discharge syndrome
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with urethral discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral discharge syndrome (HTS)":
  exists "Urethral discharge syndrome (HTS) Condition"
    or exists "Urethral discharge syndrome (HTS) Observation"
define "Urethral discharge syndrome (HTS) Condition":
  [Condition: Concepts."Urethral discharge syndrome - HIV.B.DE227"]
define "Urethral discharge syndrome (HTS) Observation":
  "Syndrome/STI diagnosed (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Urethral discharge syndrome - HIV.B.DE227"
/* End of Urethral discharge syndrome (HTS) */

/*
@dataElement: HIV.B.DE228 - Vaginal discharge syndrome
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with vaginal discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Vaginal discharge syndrome (HTS)":
  exists "Vaginal discharge syndrome (HTS) Condition"
    or exists "Vaginal discharge syndrome (HTS) Observation"
define "Vaginal discharge syndrome (HTS) Condition":
  [Condition: Concepts."Vaginal discharge syndrome - HIV.B.DE228"]
define "Vaginal discharge syndrome (HTS) Observation":
  "Syndrome/STI diagnosed (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Vaginal discharge syndrome - HIV.B.DE228"
/* End of Vaginal discharge syndrome (HTS) */

/*
@dataElement: HIV.B.DE229 - Lower Abdominal pain 
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with lower abdominal pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lower Abdominal pain  (HTS)":
  exists "Lower Abdominal pain  (HTS) Condition"
    or exists "Lower Abdominal pain  (HTS) Observation"
define "Lower Abdominal pain  (HTS) Condition":
  [Condition: Concepts."Lower Abdominal pain  - HIV.B.DE229"]
define "Lower Abdominal pain  (HTS) Observation":
  "Syndrome/STI diagnosed (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lower Abdominal pain  - HIV.B.DE229"
/* End of Lower Abdominal pain  (HTS) */

/*
@dataElement: HIV.B.DE230 - Genital ulcer disease syndrome
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with genital ulcer disease syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Genital ulcer disease syndrome (HTS)":
  exists "Genital ulcer disease syndrome (HTS) Condition"
    or exists "Genital ulcer disease syndrome (HTS) Observation"
define "Genital ulcer disease syndrome (HTS) Condition":
  [Condition: Concepts."Genital ulcer disease syndrome - HIV.B.DE230"]
define "Genital ulcer disease syndrome (HTS) Observation":
  "Syndrome/STI diagnosed (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Genital ulcer disease syndrome - HIV.B.DE230"
/* End of Genital ulcer disease syndrome (HTS) */

/*
@dataElement: HIV.B.DE231 - Anorectal discharge
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Client diagnosed with anorectal discharge
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anorectal discharge (HTS)":
  exists "Anorectal discharge (HTS) Condition"
    or exists "Anorectal discharge (HTS) Observation"
define "Anorectal discharge (HTS) Condition":
  [Condition: Concepts."Anorectal discharge - HIV.B.DE231"]
define "Anorectal discharge (HTS) Observation":
  "Syndrome/STI diagnosed (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Anorectal discharge - HIV.B.DE231"
/* End of Anorectal discharge (HTS) */

/*
@dataElement: HIV.B.DE232 - Sent for testing
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Specimen sent for testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sent for testing (HTS)":
  exists "Sent for testing (HTS) Condition"
    or exists "Sent for testing (HTS) Observation"
define "Sent for testing (HTS) Condition":
  [Condition: Concepts."Sent for testing - HIV.B.DE232"]
define "Sent for testing (HTS) Observation":
  "Syndrome/STI diagnosed (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sent for testing - HIV.B.DE232"
/* End of Sent for testing (HTS) */

/*
@dataElement: HIV.B.DE233 - Other
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Other syndrome/STI diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE233)":
  exists "Other (HTS|BDE233) Condition"
    or exists "Other (HTS|BDE233) Observation"
define "Other (HTS|BDE233) Condition":
  [Condition: Concepts."Other - HIV.B.DE233"]
define "Other (HTS|BDE233) Observation":
  "Syndrome/STI diagnosed (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.B.DE233"
/* End of Other (HTS|BDE233) */

/*
@dataElement: HIV.B.DE235 - Any STI syndrome diagnosed
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Was the client diagnosed with any of the five STI syndromes during this visit?
*/
// TODO: Replace placeholder with relevant CQL logic
define "Any STI syndrome diagnosed (HTS)":
  exists "Any STI syndrome diagnosed (HTS) Observation"
define "Any STI syndrome diagnosed (HTS) Observation":
  [Observation: Concepts."Any STI syndrome diagnosed - HIV.B.DE235"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Any STI syndrome diagnosed (HTS) */

/*
@dataElement: HIV.B.DE249 - Syphilis test date
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test date (HTS)":
  [Observation: Concepts."Syphilis test date - HIV.B.DE249"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Syphilis test date (HTS) Value":
  "Syphilis test date (HTS)" O
  return O.value
/* End of Syphilis test date (HTS) */

/*
@dataElement: HIV.B.DE250 - Syphilis test result
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Result from syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test result (HTS)":
  exists "Syphilis test result (HTS) Observation"
define "Syphilis test result (HTS) Observation":
  [Observation: Concepts."Syphilis test result - HIV.B.DE250"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Syphilis test result (HTS) */

/*
@dataElement: HIV.B.DE251 - Positive
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is positive for syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (HTS|BDE251)":
  exists "Positive (HTS|BDE251) Condition"
    or exists "Positive (HTS|BDE251) Observation"
define "Positive (HTS|BDE251) Condition":
  [Condition: Concepts."Positive - HIV.B.DE251"]
define "Positive (HTS|BDE251) Observation":
  "Syphilis test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.B.DE251"
/* End of Positive (HTS|BDE251) */

/*
@dataElement: HIV.B.DE252 - Negative
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is negative for syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (HTS|BDE252)":
  exists "Negative (HTS|BDE252) Condition"
    or exists "Negative (HTS|BDE252) Observation"
define "Negative (HTS|BDE252) Condition":
  [Condition: Concepts."Negative - HIV.B.DE252"]
define "Negative (HTS|BDE252) Observation":
  "Syphilis test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.B.DE252"
/* End of Negative (HTS|BDE252) */

/*
@dataElement: HIV.B.DE253 - Inconclusive
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (HTS|BDE253)":
  exists "Inconclusive (HTS|BDE253) Condition"
    or exists "Inconclusive (HTS|BDE253) Observation"
define "Inconclusive (HTS|BDE253) Condition":
  [Condition: Concepts."Inconclusive - HIV.B.DE253"]
define "Inconclusive (HTS|BDE253) Observation":
  "Syphilis test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Inconclusive - HIV.B.DE253"
/* End of Inconclusive (HTS|BDE253) */

/*
@dataElement: HIV.B.DE254 - Syphilis treatment start date
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of initiation of syphilis treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis treatment start date (HTS)":
  [Observation: Concepts."Syphilis treatment start date - HIV.B.DE254"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Syphilis treatment start date (HTS) Value":
  "Syphilis treatment start date (HTS)" O
  return O.value
/* End of Syphilis treatment start date (HTS) */

/*
@dataElement: HIV.B.DE255 - Gonorrhoea test date
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test date (HTS)":
  [Observation: Concepts."Gonorrhoea test date - HIV.B.DE255"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Gonorrhoea test date (HTS) Value":
  "Gonorrhoea test date (HTS)" O
  return O.value
/* End of Gonorrhoea test date (HTS) */

/*
@dataElement: HIV.B.DE256 - Gonorrhoea test result
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Result from Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test result (HTS)":
  exists "Gonorrhoea test result (HTS) Observation"
define "Gonorrhoea test result (HTS) Observation":
  [Observation: Concepts."Gonorrhoea test result - HIV.B.DE256"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Gonorrhoea test result (HTS) */

/*
@dataElement: HIV.B.DE257 - Positive
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is positive for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (HTS|BDE257)":
  exists "Positive (HTS|BDE257) Condition"
    or exists "Positive (HTS|BDE257) Observation"
define "Positive (HTS|BDE257) Condition":
  [Condition: Concepts."Positive - HIV.B.DE257"]
define "Positive (HTS|BDE257) Observation":
  "Gonorrhoea test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.B.DE257"
/* End of Positive (HTS|BDE257) */

/*
@dataElement: HIV.B.DE258 - Negative
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is negative for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (HTS|BDE258)":
  exists "Negative (HTS|BDE258) Condition"
    or exists "Negative (HTS|BDE258) Observation"
define "Negative (HTS|BDE258) Condition":
  [Condition: Concepts."Negative - HIV.B.DE258"]
define "Negative (HTS|BDE258) Observation":
  "Gonorrhoea test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.B.DE258"
/* End of Negative (HTS|BDE258) */

/*
@dataElement: HIV.B.DE259 - Inconclusive
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Test result is inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (HTS|BDE259)":
  exists "Inconclusive (HTS|BDE259) Condition"
    or exists "Inconclusive (HTS|BDE259) Observation"
define "Inconclusive (HTS|BDE259) Condition":
  [Condition: Concepts."Inconclusive - HIV.B.DE259"]
define "Inconclusive (HTS|BDE259) Observation":
  "Gonorrhoea test result (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Inconclusive - HIV.B.DE259"
/* End of Inconclusive (HTS|BDE259) */

/*
@dataElement: HIV.B.DE260 - Gonorrhoea treatment start date
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Date of initiation of Gonorrhoea treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea treatment start date (HTS)":
  [Observation: Concepts."Gonorrhoea treatment start date - HIV.B.DE260"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Gonorrhoea treatment start date (HTS) Value":
  "Gonorrhoea treatment start date (HTS)" O
  return O.value
/* End of Gonorrhoea treatment start date (HTS) */

/*
@dataElement: HIV.B.DE261 - Type of specimen
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Type of specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of specimen (HTS)":
  exists "Type of specimen (HTS) Observation"
define "Type of specimen (HTS) Observation":
  [Observation: Concepts."Type of specimen - HIV.B.DE261"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of specimen (HTS) */

/*
@dataElement: HIV.B.DE262 - Blood
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Blood specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Blood (HTS)":
  exists "Blood (HTS) Condition"
    or exists "Blood (HTS) Observation"
define "Blood (HTS) Condition":
  [Condition: Concepts."Blood - HIV.B.DE262"]
define "Blood (HTS) Observation":
  "Type of specimen (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Blood - HIV.B.DE262"
/* End of Blood (HTS) */

/*
@dataElement: HIV.B.DE263 - Urine
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Urine specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urine (HTS)":
  exists "Urine (HTS) Condition"
    or exists "Urine (HTS) Observation"
define "Urine (HTS) Condition":
  [Condition: Concepts."Urine - HIV.B.DE263"]
define "Urine (HTS) Observation":
  "Type of specimen (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Urine - HIV.B.DE263"
/* End of Urine (HTS) */

/*
@dataElement: HIV.B.DE264 - Cervical or vaginal swab
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Cervical or vaginal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical or vaginal swab (HTS)":
  exists "Cervical or vaginal swab (HTS) Condition"
    or exists "Cervical or vaginal swab (HTS) Observation"
define "Cervical or vaginal swab (HTS) Condition":
  [Condition: Concepts."Cervical or vaginal swab - HIV.B.DE264"]
define "Cervical or vaginal swab (HTS) Observation":
  "Type of specimen (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cervical or vaginal swab - HIV.B.DE264"
/* End of Cervical or vaginal swab (HTS) */

/*
@dataElement: HIV.B.DE265 - Urethral or penile swab
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Urethral or penile swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral or penile swab (HTS)":
  exists "Urethral or penile swab (HTS) Condition"
    or exists "Urethral or penile swab (HTS) Observation"
define "Urethral or penile swab (HTS) Condition":
  [Condition: Concepts."Urethral or penile swab - HIV.B.DE265"]
define "Urethral or penile swab (HTS) Observation":
  "Type of specimen (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Urethral or penile swab - HIV.B.DE265"
/* End of Urethral or penile swab (HTS) */

/*
@dataElement: HIV.B.DE266 - Rectal swab
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Rectal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rectal swab (HTS)":
  exists "Rectal swab (HTS) Condition"
    or exists "Rectal swab (HTS) Observation"
define "Rectal swab (HTS) Condition":
  [Condition: Concepts."Rectal swab - HIV.B.DE266"]
define "Rectal swab (HTS) Observation":
  "Type of specimen (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Rectal swab - HIV.B.DE266"
/* End of Rectal swab (HTS) */

/*
@dataElement: HIV.B.DE267 - Other
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Other specimen type to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE267)":
  exists "Other (HTS|BDE267) Condition"
    or exists "Other (HTS|BDE267) Observation"
define "Other (HTS|BDE267) Condition":
  [Condition: Concepts."Other - HIV.B.DE267"]
define "Other (HTS|BDE267) Observation":
  "Type of specimen (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.B.DE267"
/* End of Other (HTS|BDE267) */

/*
@dataElement: HIV.B.DE276 - Neisseria gonorrhoeae test type
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Type of diagnostic test used for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neisseria gonorrhoeae test type (HTS)":
  exists "Neisseria gonorrhoeae test type (HTS) Observation"
define "Neisseria gonorrhoeae test type (HTS) Observation":
  [Observation: Concepts."Neisseria gonorrhoeae test type - HIV.B.DE276"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Neisseria gonorrhoeae test type (HTS) */

/*
@dataElement: HIV.B.DE277 - NAAT
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Nucleic Acid Amplification Test (NAAT) used
*/
// TODO: Replace placeholder with relevant CQL logic
define "NAAT (HTS)":
  exists "NAAT (HTS) Condition"
    or exists "NAAT (HTS) Observation"
define "NAAT (HTS) Condition":
  [Condition: Concepts."NAAT - HIV.B.DE277"]
define "NAAT (HTS) Observation":
  "Neisseria gonorrhoeae test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."NAAT - HIV.B.DE277"
/* End of NAAT (HTS) */

/*
@dataElement: HIV.B.DE278 - POC Test
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Point-of-care (POC) test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "POC Test (HTS)":
  exists "POC Test (HTS) Condition"
    or exists "POC Test (HTS) Observation"
define "POC Test (HTS) Condition":
  [Condition: Concepts."POC Test - HIV.B.DE278"]
define "POC Test (HTS) Observation":
  "Neisseria gonorrhoeae test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."POC Test - HIV.B.DE278"
/* End of POC Test (HTS) */

/*
@dataElement: HIV.B.DE279 - Culture
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Culture test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Culture (HTS)":
  exists "Culture (HTS) Condition"
    or exists "Culture (HTS) Observation"
define "Culture (HTS) Condition":
  [Condition: Concepts."Culture - HIV.B.DE279"]
define "Culture (HTS) Observation":
  "Neisseria gonorrhoeae test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Culture - HIV.B.DE279"
/* End of Culture (HTS) */

/*
@dataElement: HIV.B.DE280 - Microscopy
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Microscopy test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Microscopy (HTS)":
  exists "Microscopy (HTS) Condition"
    or exists "Microscopy (HTS) Observation"
define "Microscopy (HTS) Condition":
  [Condition: Concepts."Microscopy - HIV.B.DE280"]
define "Microscopy (HTS) Observation":
  "Neisseria gonorrhoeae test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Microscopy - HIV.B.DE280"
/* End of Microscopy (HTS) */

/*
@dataElement: HIV.B.DE281 - Other
@activity: HIV.B23 Offer sexual and reproductive health services
@description: Other type of test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (HTS|BDE281)":
  exists "Other (HTS|BDE281) Condition"
    or exists "Other (HTS|BDE281) Observation"
define "Other (HTS|BDE281) Condition":
  [Condition: Concepts."Other - HIV.B.DE281"]
define "Other (HTS|BDE281) Observation":
  "Neisseria gonorrhoeae test type (HTS) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.B.DE281"
/* End of Other (HTS|BDE281) */

/*
@dataElement: HIV.C.DE9 - Date/time of suspected exposure to HIV
@activity: HIV.C3 Capture or update client history
@description: When the suspect exposure to HIV took place
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of suspected exposure to HIV (PrEP)":
  [Observation: Concepts."Date/time of suspected exposure to HIV - HIV.C.DE9"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date/time of suspected exposure to HIV (PrEP) Value":
  "Date/time of suspected exposure to HIV (PrEP)" O
  return O.value
/* End of Date/time of suspected exposure to HIV (PrEP) */

/*
@dataElement: HIV.C.DE10 - Currently on PrEP
@activity: HIV.C3 Capture or update client history
@description: The client is currently taking PrEP. Oral pre-exposure prophylaxis (PrEP) of HIV is the use of ARV drugs by people who are not infected with HIV to block the acquisition of HIV.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently on PrEP (PrEP)":
  exists "Currently on PrEP (PrEP) Observation"
define "Currently on PrEP (PrEP) Observation":
  [Observation: Concepts."Currently on PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Currently on PrEP (PrEP) */

/*
@dataElement: HIV.C.DE11 - PrEP dosing type
@activity: HIV.C3 Capture or update client history
@description: Way in which pre-exposure prophylaxis (PrEP) is taken (daily or event-driven)
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP dosing type (PrEP)":
  exists "PrEP dosing type (PrEP) Observation"
define "PrEP dosing type (PrEP) Observation":
  [Observation: Concepts."PrEP dosing type"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of PrEP dosing type (PrEP) */

/*
@dataElement: HIV.C.DE12 - Daily oral PrEP
@activity: HIV.C3 Capture or update client history
@description: Pre-exposure prophylaxis (PrEP) is taken every day
*/
// TODO: Replace placeholder with relevant CQL logic
define "Daily oral PrEP (PrEP)":
  exists "Daily oral PrEP (PrEP) Condition"
    or exists "Daily oral PrEP (PrEP) Observation"
define "Daily oral PrEP (PrEP) Condition":
  [Condition: Concepts."Daily oral PrEP"]
define "Daily oral PrEP (PrEP) Observation":
  "PrEP dosing type (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Daily oral PrEP"
/* End of Daily oral PrEP (PrEP) */

/*
@dataElement: HIV.C.DE13 - Event-driven PrEP 2+1+1
@activity: HIV.C3 Capture or update client history
@description: Event-driven pre-exposure prophylaxis (PrEP) is taken on an even-driven basis (2+1+1)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Event-driven PrEP 2+1+1 (PrEP)":
  exists "Event-driven PrEP 2+1+1 (PrEP) Condition"
    or exists "Event-driven PrEP 2+1+1 (PrEP) Observation"
define "Event-driven PrEP 2+1+1 (PrEP) Condition":
  [Condition: Concepts."Event-driven PrEP 2+1+1"]
define "Event-driven PrEP 2+1+1 (PrEP) Observation":
  "PrEP dosing type (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Event-driven PrEP 2+1+1"
/* End of Event-driven PrEP 2+1+1 (PrEP) */

/*
@dataElement: HIV.C.DE14 - Other PrEP dosing type
@activity: HIV.C3 Capture or update client history
@description: Other PrEP dosing type
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other PrEP dosing type (PrEP)":
  exists "Other PrEP dosing type (PrEP) Condition"
    or exists "Other PrEP dosing type (PrEP) Observation"
define "Other PrEP dosing type (PrEP) Condition":
  [Condition: Concepts."Other PrEP dosing type"]
define "Other PrEP dosing type (PrEP) Observation":
  "PrEP dosing type (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other PrEP dosing type"
/* End of Other PrEP dosing type (PrEP) */

/*
@dataElement: HIV.C.DE17 - Current PrEP regimen
@activity: HIV.C3 Capture or update client history
@description: HIV pre-exposure prophylaxis (PrEP) regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current PrEP regimen (PrEP)":
  exists "Current PrEP regimen (PrEP) Observation"
define "Current PrEP regimen (PrEP) Observation":
  [Observation: Concepts."Current PrEP regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Current PrEP regimen (PrEP) */

/*
@dataElement: HIV.C.DE18 - TDF + FTC
@activity: HIV.C3 Capture or update client history
@description: Treated with tenofovir disoproxil fumarate (TDF) and emtricitabine (FTC) pre-exposure prophylaxis (PrEP) regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + FTC (PrEP|CDE18)":
  exists "TDF + FTC (PrEP|CDE18) Condition"
    or exists "TDF + FTC (PrEP|CDE18) Observation"
define "TDF + FTC (PrEP|CDE18) Condition":
  [Condition: Concepts."TDF + FTC - HIV.C.DE18"]
define "TDF + FTC (PrEP|CDE18) Observation":
  "Current PrEP regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF + FTC - HIV.C.DE18"
/* End of TDF + FTC (PrEP|CDE18) */

/*
@dataElement: HIV.C.DE19 - TDF
@activity: HIV.C3 Capture or update client history
@description: Treated with single-agent tenofovir disoproxil fumarate (TDF) pre-exposure prophylaxis (PrEP) regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF (PrEP)":
  exists "TDF (PrEP) Condition"
    or exists "TDF (PrEP) Observation"
define "TDF (PrEP) Condition":
  [Condition: Concepts."TDF - HIV.C.DE19"]
define "TDF (PrEP) Observation":
  "Current PrEP regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF - HIV.C.DE19"
/* End of TDF (PrEP) */

/*
@dataElement: HIV.C.DE20 - TDF + 3TC
@activity: HIV.C3 Capture or update client history
@description: Treated with tenofovir disoproxil fumarate (TDF) and lamivudine (3TC) pre-exposure prophylaxis (PrEP) regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + 3TC (PrEP|CDE20)":
  exists "TDF + 3TC (PrEP|CDE20) Condition"
    or exists "TDF + 3TC (PrEP|CDE20) Observation"
define "TDF + 3TC (PrEP|CDE20) Condition":
  [Condition: Concepts."TDF + 3TC - HIV.C.DE20"]
define "TDF + 3TC (PrEP|CDE20) Observation":
  "Current PrEP regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF + 3TC - HIV.C.DE20"
/* End of TDF + 3TC (PrEP|CDE20) */

/*
@dataElement: HIV.C.DE21 - Other TDF-based regimen
@activity: HIV.C3 Capture or update client history
@description: Treated with other tenofovir disoproxil fumarate (TDF)-based regimen (oral PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other TDF-based regimen (PrEP)":
  exists "Other TDF-based regimen (PrEP) Condition"
    or exists "Other TDF-based regimen (PrEP) Observation"
define "Other TDF-based regimen (PrEP) Condition":
  [Condition: Concepts."Other TDF-based regimen"]
define "Other TDF-based regimen (PrEP) Observation":
  "Current PrEP regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other TDF-based regimen"
/* End of Other TDF-based regimen (PrEP) */

/*
@dataElement: HIV.C.DE22 - Dapivirine vaginal ring DVR
@activity: HIV.C3 Capture or update client history
@description: Dapivirine vaginal ring (DVR) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dapivirine vaginal ring DVR (PrEP|CDE22)":
  exists "Dapivirine vaginal ring DVR (PrEP|CDE22) Condition"
    or exists "Dapivirine vaginal ring DVR (PrEP|CDE22) Observation"
define "Dapivirine vaginal ring DVR (PrEP|CDE22) Condition":
  [Condition: Concepts."Dapivirine vaginal ring DVR - HIV.C.DE22"]
define "Dapivirine vaginal ring DVR (PrEP|CDE22) Observation":
  "Current PrEP regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Dapivirine vaginal ring DVR - HIV.C.DE22"
/* End of Dapivirine vaginal ring DVR (PrEP|CDE22) */

/*
@dataElement: HIV.C.DE23 - CAB-LA
@activity: HIV.C3 Capture or update client history
@description: Long-acting injectable cabotegravir
*/
// TODO: Replace placeholder with relevant CQL logic
define "CAB-LA (PrEP|CDE23)":
  exists "CAB-LA (PrEP|CDE23) Condition"
    or exists "CAB-LA (PrEP|CDE23) Observation"
define "CAB-LA (PrEP|CDE23) Condition":
  [Condition: Concepts."CAB-LA - HIV.C.DE23"]
define "CAB-LA (PrEP|CDE23) Observation":
  "Current PrEP regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."CAB-LA - HIV.C.DE23"
/* End of CAB-LA (PrEP|CDE23) */

/*
@dataElement: HIV.C.DE24 - Experience with PrEP
@activity: HIV.C3 Capture or update client history
@description: The client's experience in taking PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Experience with PrEP (PrEP)":
  exists "Experience with PrEP (PrEP) Observation"
define "Experience with PrEP (PrEP) Observation":
  [Observation: Concepts."Experience with PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Experience with PrEP (PrEP) */

/*
@dataElement: HIV.C.DE25 - First-time user
@activity: HIV.C3 Capture or update client history
@description: The client has never used pre-exposure prophylaxis (PrEP) before (naive)
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-time user (PrEP|CDE25)":
  exists "First-time user (PrEP|CDE25) Condition"
    or exists "First-time user (PrEP|CDE25) Observation"
define "First-time user (PrEP|CDE25) Condition":
  [Condition: Concepts."First-time user - HIV.C.DE25"]
define "First-time user (PrEP|CDE25) Observation":
  "Experience with PrEP (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First-time user - HIV.C.DE25"
/* End of First-time user (PrEP|CDE25) */

/*
@dataElement: HIV.C.DE26 - Continuing user
@activity: HIV.C3 Capture or update client history
@description: The client has used PrEP before and is continuing to use PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Continuing user (PrEP)":
  exists "Continuing user (PrEP) Condition"
    or exists "Continuing user (PrEP) Observation"
define "Continuing user (PrEP) Condition":
  [Condition: Concepts."Continuing user"]
define "Continuing user (PrEP) Observation":
  "Experience with PrEP (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Continuing user"
/* End of Continuing user (PrEP) */

/*
@dataElement: HIV.C.DE27 - Restarting following a period of not taking PrEP
@activity: HIV.C3 Capture or update client history
@description: The client is restarting PrEP following a period of not taking PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Restarting following a period of not taking PrEP (PrEP)":
  exists "Restarting following a period of not taking PrEP (PrEP) Condition"
    or exists "Restarting following a period of not taking PrEP (PrEP) Observation"
define "Restarting following a period of not taking PrEP (PrEP) Condition":
  [Condition: Concepts."Restarting following a period of not taking PrEP"]
define "Restarting following a period of not taking PrEP (PrEP) Observation":
  "Experience with PrEP (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Restarting following a period of not taking PrEP"
/* End of Restarting following a period of not taking PrEP (PrEP) */

/*
@dataElement: HIV.C.DE31 - PEP history
@activity: HIV.C3 Capture or update client history
@description: The client's history in taking post-exposure prophylaxis (PEP) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "PEP history (PrEP)":
  exists "PEP history (PrEP) Observation"
define "PEP history (PrEP) Observation":
  [Observation: Concepts."PEP history"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of PEP history (PrEP) */

/*
@dataElement: HIV.C.DE32 - First-time user
@activity: HIV.C3 Capture or update client history
@description: The client has never used post-exposure prophylaxis (PEP) before
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-time user (PrEP|CDE32)":
  exists "First-time user (PrEP|CDE32) Condition"
    or exists "First-time user (PrEP|CDE32) Observation"
define "First-time user (PrEP|CDE32) Condition":
  [Condition: Concepts."First-time user - HIV.C.DE32"]
define "First-time user (PrEP|CDE32) Observation":
  "PEP history (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First-time user - HIV.C.DE32"
/* End of First-time user (PrEP|CDE32) */

/*
@dataElement: HIV.C.DE33 - Repeat user
@activity: HIV.C3 Capture or update client history
@description: The client has used post-exposure prophylaxis (PEP) before
*/
// TODO: Replace placeholder with relevant CQL logic
define "Repeat user (PrEP)":
  exists "Repeat user (PrEP) Condition"
    or exists "Repeat user (PrEP) Observation"
define "Repeat user (PrEP) Condition":
  [Condition: Concepts."Repeat user"]
define "Repeat user (PrEP) Observation":
  "PEP history (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Repeat user"
/* End of Repeat user (PrEP) */

/*
@dataElement: HIV.C.DE35 - Date client completes PEP course
@activity: HIV.C3 Capture or update client history
@description: Date client completes PEP course
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date client completes PEP course (PrEP)":
  [Observation: Concepts."Date client completes PEP course"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date client completes PEP course (PrEP) Value":
  "Date client completes PEP course (PrEP)" O
  return O.value
/* End of Date client completes PEP course (PrEP) */

/*
@dataElement: HIV.C.DE36 - Signs of substantial risk of HIV infection
@activity: HIV.C3 Capture or update client history
@description: Signs the client is at a substantial risk of HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Signs of substantial risk of HIV infection (PrEP)":
  exists "Signs of substantial risk of HIV infection (PrEP) Observation"
define "Signs of substantial risk of HIV infection (PrEP) Observation":
  [Observation: Concepts."Signs of substantial risk of HIV infection - HIV.C.DE36"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Signs of substantial risk of HIV infection (PrEP) */

/*
@dataElement: HIV.C.DE37 - No condom use during sex with more than one partner in the past 6 months
@activity: HIV.C3 Capture or update client history
@description: Recent vaginal or anal sexual intercourse without a condom with more than one partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "No condom use during sex with more than one partner in the past 6 months (PrEP)":
  exists "No condom use during sex with more than one partner in the past 6 months (PrEP) Condition"
    or exists "No condom use during sex with more than one partner in the past 6 months (PrEP) Observation"
define "No condom use during sex with more than one partner in the past 6 months (PrEP) Condition":
  [Condition: Concepts."No condom use during sex with more than one partner in the past 6 months - HIV.C.DE37"]
define "No condom use during sex with more than one partner in the past 6 months (PrEP) Observation":
  "Signs of substantial risk of HIV infection (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."No condom use during sex with more than one partner in the past 6 months - HIV.C.DE37"
/* End of No condom use during sex with more than one partner in the past 6 months (PrEP) */

/*
@dataElement: HIV.C.DE38 - STI in the past 6 months
@activity: HIV.C3 Capture or update client history
@description: A recent history (in the last 6 months) of a sexually transmitted infection (STI ) by laboratory testing, self-report or syndromic STI treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI in the past 6 months (PrEP)":
  exists "STI in the past 6 months (PrEP) Condition"
    or exists "STI in the past 6 months (PrEP) Observation"
define "STI in the past 6 months (PrEP) Condition":
  [Condition: Concepts."STI in the past 6 months - HIV.C.DE38"]
define "STI in the past 6 months (PrEP) Observation":
  "Signs of substantial risk of HIV infection (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."STI in the past 6 months - HIV.C.DE38"
/* End of STI in the past 6 months (PrEP) */

/*
@dataElement: HIV.C.DE39 - A sexual partner in the past 6 months had one or more HIV risk factors
@activity: HIV.C3 Capture or update client history
@description: A recent sex partner of the client had HIV risk factors
*/
// TODO: Replace placeholder with relevant CQL logic
define "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP)":
  exists "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Condition"
    or exists "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Observation"
define "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Condition":
  [Condition: Concepts."A sexual partner in the past 6 months had one or more HIV risk factors - HIV.C.DE39"]
define "A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) Observation":
  "Signs of substantial risk of HIV infection (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."A sexual partner in the past 6 months had one or more HIV risk factors - HIV.C.DE39"
/* End of A sexual partner in the past 6 months had one or more HIV risk factors (PrEP) */

/*
@dataElement: HIV.C.DE40 - PrEP requested by client
@activity: HIV.C3 Capture or update client history
@description: Client is requesting PrEP, reflecting a decision-making process has already taken place and suggesting of substantial risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP requested by client (PrEP)":
  exists "PrEP requested by client (PrEP) Condition"
    or exists "PrEP requested by client (PrEP) Observation"
define "PrEP requested by client (PrEP) Condition":
  [Condition: Concepts."PrEP requested by client - HIV.C.DE40"]
define "PrEP requested by client (PrEP) Observation":
  "Signs of substantial risk of HIV infection (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."PrEP requested by client - HIV.C.DE40"
/* End of PrEP requested by client (PrEP) */

/*
@dataElement: HIV.C.DE46 - Acute HIV infection symptoms
@activity: HIV.C3 Capture or update client history
@description: Symptoms that could suggest an acute HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute HIV infection symptoms (PrEP|CDE46)":
  exists "Acute HIV infection symptoms (PrEP|CDE46) Observation"
define "Acute HIV infection symptoms (PrEP|CDE46) Observation":
  [Observation: Concepts."Acute HIV infection symptoms - HIV.C.DE46"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Acute HIV infection symptoms (PrEP|CDE46) */

/*
@dataElement: HIV.C.DE47 - Fever
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a fever
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fever (PrEP)":
  exists "Fever (PrEP) Condition"
    or exists "Fever (PrEP) Observation"
define "Fever (PrEP) Condition":
  [Condition: Concepts."Fever"]
define "Fever (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Fever"
/* End of Fever (PrEP) */

/*
@dataElement: HIV.C.DE48 - Sore throat
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a sore throat
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sore throat (PrEP)":
  exists "Sore throat (PrEP) Condition"
    or exists "Sore throat (PrEP) Observation"
define "Sore throat (PrEP) Condition":
  [Condition: Concepts."Sore throat"]
define "Sore throat (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sore throat"
/* End of Sore throat (PrEP) */

/*
@dataElement: HIV.C.DE49 - Aches
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include aches
*/
// TODO: Replace placeholder with relevant CQL logic
define "Aches (PrEP)":
  exists "Aches (PrEP) Condition"
    or exists "Aches (PrEP) Observation"
define "Aches (PrEP) Condition":
  [Condition: Concepts."Aches"]
define "Aches (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Aches"
/* End of Aches (PrEP) */

/*
@dataElement: HIV.C.DE50 - Pains
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include pains
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pains (PrEP)":
  exists "Pains (PrEP) Condition"
    or exists "Pains (PrEP) Observation"
define "Pains (PrEP) Condition":
  [Condition: Concepts."Pains"]
define "Pains (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Pains"
/* End of Pains (PrEP) */

/*
@dataElement: HIV.C.DE51 - Swollen glands
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include swollen glands
*/
// TODO: Replace placeholder with relevant CQL logic
define "Swollen glands (PrEP)":
  exists "Swollen glands (PrEP) Condition"
    or exists "Swollen glands (PrEP) Observation"
define "Swollen glands (PrEP) Condition":
  [Condition: Concepts."Swollen glands"]
define "Swollen glands (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Swollen glands"
/* End of Swollen glands (PrEP) */

/*
@dataElement: HIV.C.DE52 - Mouth sores
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a mouth sores
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mouth sores (PrEP)":
  exists "Mouth sores (PrEP) Condition"
    or exists "Mouth sores (PrEP) Observation"
define "Mouth sores (PrEP) Condition":
  [Condition: Concepts."Mouth sores"]
define "Mouth sores (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Mouth sores"
/* End of Mouth sores (PrEP) */

/*
@dataElement: HIV.C.DE53 - Headaches
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a headaches
*/
// TODO: Replace placeholder with relevant CQL logic
define "Headaches (PrEP)":
  exists "Headaches (PrEP) Condition"
    or exists "Headaches (PrEP) Observation"
define "Headaches (PrEP) Condition":
  [Condition: Concepts."Headaches"]
define "Headaches (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Headaches"
/* End of Headaches (PrEP) */

/*
@dataElement: HIV.C.DE54 - Rash
@activity: HIV.C3 Capture or update client history
@description: Client's symptoms include a rash
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rash (PrEP)":
  exists "Rash (PrEP) Condition"
    or exists "Rash (PrEP) Observation"
define "Rash (PrEP) Condition":
  [Condition: Concepts."Rash"]
define "Rash (PrEP) Observation":
  "Acute HIV infection symptoms (PrEP|CDE46) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Rash"
/* End of Rash (PrEP) */

/*
@dataElement: HIV.C.DE55 - Sex partners HIV treatment status
@activity: HIV.C3 Capture or update client history
@description: Treatment adherence of client's sex partner for partners that are HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sex partners HIV treatment status (PrEP)":
  exists "Sex partners HIV treatment status (PrEP) Observation"
define "Sex partners HIV treatment status (PrEP) Observation":
  [Observation: Concepts."Sex partners HIV treatment status"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Sex partners HIV treatment status (PrEP) */

/*
@dataElement: HIV.C.DE56 - Not on ART
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and not on ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not on ART (PrEP)":
  exists "Not on ART (PrEP) Condition"
    or exists "Not on ART (PrEP) Observation"
define "Not on ART (PrEP) Condition":
  [Condition: Concepts."Not on ART"]
define "Not on ART (PrEP) Observation":
  "Sex partners HIV treatment status (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Not on ART"
/* End of Not on ART (PrEP) */

/*
@dataElement: HIV.C.DE57 - On ART less than 6 months
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and is on ART less than 6 months. ART may take up to 6 months to suppress viral load. In studies of serodiscordant couples, pre-exposure prophylaxis (PrEP) has provided a useful bridge to full viral suppression by the partner during that time.
*/
// TODO: Replace placeholder with relevant CQL logic
define "On ART less than 6 months (PrEP)":
  exists "On ART less than 6 months (PrEP) Condition"
    or exists "On ART less than 6 months (PrEP) Observation"
define "On ART less than 6 months (PrEP) Condition":
  [Condition: Concepts."On ART less than 6 months"]
define "On ART less than 6 months (PrEP) Observation":
  "Sex partners HIV treatment status (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."On ART less than 6 months"
/* End of On ART less than 6 months (PrEP) */

/*
@dataElement: HIV.C.DE58 - Partner has suspected low adherence to ART
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and is suspected to have low adherence to ART. There have been gaps in the partner's treatment adherence or the couple is not communicating openly about treatment adherence and viral load test results.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner has suspected low adherence to ART (PrEP)":
  exists "Partner has suspected low adherence to ART (PrEP) Condition"
    or exists "Partner has suspected low adherence to ART (PrEP) Observation"
define "Partner has suspected low adherence to ART (PrEP) Condition":
  [Condition: Concepts."Partner has suspected low adherence to ART"]
define "Partner has suspected low adherence to ART (PrEP) Observation":
  "Sex partners HIV treatment status (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Partner has suspected low adherence to ART"
/* End of Partner has suspected low adherence to ART (PrEP) */

/*
@dataElement: HIV.C.DE59 - Partner is not virally suppressed
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and not virally suppressed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner is not virally suppressed (PrEP)":
  exists "Partner is not virally suppressed (PrEP) Condition"
    or exists "Partner is not virally suppressed (PrEP) Observation"
define "Partner is not virally suppressed (PrEP) Condition":
  [Condition: Concepts."Partner is not virally suppressed"]
define "Partner is not virally suppressed (PrEP) Observation":
  "Sex partners HIV treatment status (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Partner is not virally suppressed"
/* End of Partner is not virally suppressed (PrEP) */

/*
@dataElement: HIV.C.DE60 - Partner is virally suppressed and has been on ART for 6 months or more
@activity: HIV.C3 Capture or update client history
@description: Sex partner is HIV-positive and virally suppressed with 6 months or more on ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Partner is virally suppressed and has been on ART for 6 months or more (PrEP)":
  exists "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Condition"
    or exists "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Observation"
define "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Condition":
  [Condition: Concepts."Partner is virally suppressed and has been on ART for 6 months or more"]
define "Partner is virally suppressed and has been on ART for 6 months or more (PrEP) Observation":
  "Sex partners HIV treatment status (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Partner is virally suppressed and has been on ART for 6 months or more"
/* End of Partner is virally suppressed and has been on ART for 6 months or more (PrEP) */

/*
@dataElement: HIV.C.DE61 - Suitable for PrEP
@activity: HIV.C8 Suitable for PrEP or PEP?
@description: The client is suitable for PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Suitable for PrEP (PrEP)":
  exists "Suitable for PrEP (PrEP) Observation"
define "Suitable for PrEP (PrEP) Observation":
  [Observation: Concepts."Suitable for PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Suitable for PrEP (PrEP) */

/*
@dataElement: HIV.C.DE74 - Date medications prescribed
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Date the client was prescribed medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date medications prescribed (PrEP)":
  [Observation: Concepts."Date medications prescribed - HIV.C.DE74"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date medications prescribed (PrEP) Value":
  "Date medications prescribed (PrEP)" O
  return O.value
/* End of Date medications prescribed (PrEP) */

/*
@dataElement: HIV.C.DE75 - Medications prescribed
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Medications the client was prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medications prescribed (PrEP)":
  exists "Medications prescribed (PrEP) Observation"
define "Medications prescribed (PrEP) Observation":
  [Observation: Concepts."Medications prescribed - HIV.C.DE75"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Medications prescribed (PrEP) */

/*
@dataElement: HIV.C.DE76 - PrEP for HIV prevention
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed pre-exposure prophylaxis (PrEP) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP for HIV prevention (PrEP)":
  exists "PrEP for HIV prevention (PrEP) Condition"
    or exists "PrEP for HIV prevention (PrEP) Observation"
define "PrEP for HIV prevention (PrEP) Condition":
  [Condition: Concepts."PrEP for HIV prevention"]
define "PrEP for HIV prevention (PrEP) Observation":
  "Medications prescribed (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."PrEP for HIV prevention"
/* End of PrEP for HIV prevention (PrEP) */

/*
@dataElement: HIV.C.DE77 - PEP for HIV prevention
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed post-exposure prophylaxis (PEP) for HIV prevention
*/
// TODO: Replace placeholder with relevant CQL logic
define "PEP for HIV prevention (PrEP)":
  exists "PEP for HIV prevention (PrEP) Condition"
    or exists "PEP for HIV prevention (PrEP) Observation"
define "PEP for HIV prevention (PrEP) Condition":
  [Condition: Concepts."PEP for HIV prevention"]
define "PEP for HIV prevention (PrEP) Observation":
  "Medications prescribed (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."PEP for HIV prevention"
/* End of PEP for HIV prevention (PrEP) */

/*
@dataElement: HIV.C.DE78 - Other
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed other medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PrEP|CDE78)":
  exists "Other (PrEP|CDE78) Condition"
    or exists "Other (PrEP|CDE78) Observation"
define "Other (PrEP|CDE78) Condition":
  [Condition: Concepts."Other - HIV.C.DE78"]
define "Other (PrEP|CDE78) Observation":
  "Medications prescribed (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.C.DE78"
/* End of Other (PrEP|CDE78) */

/*
@dataElement: HIV.C.DE80 - PrEP product prescribed
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: PrEP product that the client was prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP product prescribed (PrEP)":
  exists "PrEP product prescribed (PrEP) Observation"
define "PrEP product prescribed (PrEP) Observation":
  [Observation: Concepts."PrEP product prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of PrEP product prescribed (PrEP) */

/*
@dataElement: HIV.C.DE81 - Oral PrEP
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed oral PrEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Oral PrEP (PrEP)":
  exists "Oral PrEP (PrEP) Condition"
    or exists "Oral PrEP (PrEP) Observation"
define "Oral PrEP (PrEP) Condition":
  [Condition: Concepts."Oral PrEP"]
define "Oral PrEP (PrEP) Observation":
  "PrEP product prescribed (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Oral PrEP"
/* End of Oral PrEP (PrEP) */

/*
@dataElement: HIV.C.DE82 - Dapivirine vaginal ring DVR
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed dapivirine vaginal ring (DVR)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dapivirine vaginal ring DVR (PrEP|CDE82)":
  exists "Dapivirine vaginal ring DVR (PrEP|CDE82) Condition"
    or exists "Dapivirine vaginal ring DVR (PrEP|CDE82) Observation"
define "Dapivirine vaginal ring DVR (PrEP|CDE82) Condition":
  [Condition: Concepts."Dapivirine vaginal ring DVR - HIV.C.DE82"]
define "Dapivirine vaginal ring DVR (PrEP|CDE82) Observation":
  "PrEP product prescribed (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Dapivirine vaginal ring DVR - HIV.C.DE82"
/* End of Dapivirine vaginal ring DVR (PrEP|CDE82) */

/*
@dataElement: HIV.C.DE83 - CAB-LA
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed long-acting cabotegravir (CAB-LA)
*/
// TODO: Replace placeholder with relevant CQL logic
define "CAB-LA (PrEP|CDE83)":
  exists "CAB-LA (PrEP|CDE83) Condition"
    or exists "CAB-LA (PrEP|CDE83) Observation"
define "CAB-LA (PrEP|CDE83) Condition":
  [Condition: Concepts."CAB-LA - HIV.C.DE83"]
define "CAB-LA (PrEP|CDE83) Observation":
  "PrEP product prescribed (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."CAB-LA - HIV.C.DE83"
/* End of CAB-LA (PrEP|CDE83) */

/*
@dataElement: HIV.C.DE84 - Other
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client was prescribed other PrEP product
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PrEP|CDE84)":
  exists "Other (PrEP|CDE84) Condition"
    or exists "Other (PrEP|CDE84) Observation"
define "Other (PrEP|CDE84) Condition":
  [Condition: Concepts."Other - HIV.C.DE84"]
define "Other (PrEP|CDE84) Observation":
  "PrEP product prescribed (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.C.DE84"
/* End of Other (PrEP|CDE84) */

/*
@dataElement: HIV.C.DE91 - Preferred PEP backbone regimen
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone regimen for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred PEP backbone regimen (PrEP)":
  exists "Preferred PEP backbone regimen (PrEP) Observation"
define "Preferred PEP backbone regimen (PrEP) Observation":
  [Observation: Concepts."Preferred PEP backbone regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Preferred PEP backbone regimen (PrEP) */

/*
@dataElement: HIV.C.DE92 - TDF + 3TC
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone containing tenofovir disoproxil fumarate and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + 3TC (PrEP|CDE92)":
  exists "TDF + 3TC (PrEP|CDE92) Condition"
    or exists "TDF + 3TC (PrEP|CDE92) Observation"
define "TDF + 3TC (PrEP|CDE92) Condition":
  [Condition: Concepts."TDF + 3TC - HIV.C.DE92"]
define "TDF + 3TC (PrEP|CDE92) Observation":
  "Preferred PEP backbone regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF + 3TC - HIV.C.DE92"
/* End of TDF + 3TC (PrEP|CDE92) */

/*
@dataElement: HIV.C.DE93 - TDF + FTC
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone containing tenofovir disoproxil fumarate and emtricitabine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + FTC (PrEP|CDE93)":
  exists "TDF + FTC (PrEP|CDE93) Condition"
    or exists "TDF + FTC (PrEP|CDE93) Observation"
define "TDF + FTC (PrEP|CDE93) Condition":
  [Condition: Concepts."TDF + FTC - HIV.C.DE93"]
define "TDF + FTC (PrEP|CDE93) Observation":
  "Preferred PEP backbone regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF + FTC - HIV.C.DE93"
/* End of TDF + FTC (PrEP|CDE93) */

/*
@dataElement: HIV.C.DE94 - AZT + 3TC
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred backbone containing zidovudine and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "AZT + 3TC (PrEP)":
  exists "AZT + 3TC (PrEP) Condition"
    or exists "AZT + 3TC (PrEP) Observation"
define "AZT + 3TC (PrEP) Condition":
  [Condition: Concepts."AZT + 3TC"]
define "AZT + 3TC (PrEP) Observation":
  "Preferred PEP backbone regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."AZT + 3TC"
/* End of AZT + 3TC (PrEP) */

/*
@dataElement: HIV.C.DE95 - Alternative PEP backbone regimen
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone regimen for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative PEP backbone regimen (PrEP)":
  exists "Alternative PEP backbone regimen (PrEP) Observation"
define "Alternative PEP backbone regimen (PrEP) Observation":
  [Observation: Concepts."Alternative PEP backbone regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Alternative PEP backbone regimen (PrEP) */

/*
@dataElement: HIV.C.DE96 - ABC + 3TC
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone containing abacavir and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "ABC + 3TC (PrEP)":
  exists "ABC + 3TC (PrEP) Condition"
    or exists "ABC + 3TC (PrEP) Observation"
define "ABC + 3TC (PrEP) Condition":
  [Condition: Concepts."ABC + 3TC"]
define "ABC + 3TC (PrEP) Observation":
  "Alternative PEP backbone regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."ABC + 3TC"
/* End of ABC + 3TC (PrEP) */

/*
@dataElement: HIV.C.DE97 - TDF + 3TC
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone containing tenofovir disoproxil fumarate and lamivudine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + 3TC (PrEP|CDE97)":
  exists "TDF + 3TC (PrEP|CDE97) Condition"
    or exists "TDF + 3TC (PrEP|CDE97) Observation"
define "TDF + 3TC (PrEP|CDE97) Condition":
  [Condition: Concepts."TDF + 3TC - HIV.C.DE97"]
define "TDF + 3TC (PrEP|CDE97) Observation":
  "Alternative PEP backbone regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF + 3TC - HIV.C.DE97"
/* End of TDF + 3TC (PrEP|CDE97) */

/*
@dataElement: HIV.C.DE98 - TDF + FTC
@activity: HIV.C3 Capture or update client history
@description: Alternative backbone containing tenofovir disoproxil fumarate and emtricitabine
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF + FTC (PrEP|CDE98)":
  exists "TDF + FTC (PrEP|CDE98) Condition"
    or exists "TDF + FTC (PrEP|CDE98) Observation"
define "TDF + FTC (PrEP|CDE98) Condition":
  [Condition: Concepts."TDF + FTC - HIV.C.DE98"]
define "TDF + FTC (PrEP|CDE98) Observation":
  "Alternative PEP backbone regimen (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF + FTC - HIV.C.DE98"
/* End of TDF + FTC (PrEP|CDE98) */

/*
@dataElement: HIV.C.DE99 - Preferred third PEP drug
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred third drug for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred third PEP drug (PrEP)":
  exists "Preferred third PEP drug (PrEP) Observation"
define "Preferred third PEP drug (PrEP) Observation":
  [Observation: Concepts."Preferred third PEP drug"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Preferred third PEP drug (PrEP) */

/*
@dataElement: HIV.C.DE100 - DTG
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Preferred third drug of dolutegravir
*/
// TODO: Replace placeholder with relevant CQL logic
define "DTG (PrEP)":
  exists "DTG (PrEP) Condition"
    or exists "DTG (PrEP) Observation"
define "DTG (PrEP) Condition":
  [Condition: Concepts."DTG - HIV.C.DE100"]
define "DTG (PrEP) Observation":
  "Preferred third PEP drug (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."DTG - HIV.C.DE100"
/* End of DTG (PrEP) */

/*
@dataElement: HIV.C.DE101 - Alternative third PEP drug
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug for PEP
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative third PEP drug (PrEP)":
  exists "Alternative third PEP drug (PrEP) Observation"
define "Alternative third PEP drug (PrEP) Observation":
  [Observation: Concepts."Alternative third PEP drug"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Alternative third PEP drug (PrEP) */

/*
@dataElement: HIV.C.DE102 - ATV/r
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of atazanavir/ritonavir (ATV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ATV/r (PrEP)":
  exists "ATV/r (PrEP) Condition"
    or exists "ATV/r (PrEP) Observation"
define "ATV/r (PrEP) Condition":
  [Condition: Concepts."ATV/r - HIV.C.DE102"]
define "ATV/r (PrEP) Observation":
  "Alternative third PEP drug (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."ATV/r - HIV.C.DE102"
/* End of ATV/r (PrEP) */

/*
@dataElement: HIV.C.DE103 - DRV/r
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of darunavir/ritonavir (DRV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DRV/r (PrEP)":
  exists "DRV/r (PrEP) Condition"
    or exists "DRV/r (PrEP) Observation"
define "DRV/r (PrEP) Condition":
  [Condition: Concepts."DRV/r - HIV.C.DE103"]
define "DRV/r (PrEP) Observation":
  "Alternative third PEP drug (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."DRV/r - HIV.C.DE103"
/* End of DRV/r (PrEP) */

/*
@dataElement: HIV.C.DE104 - LPV/r
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of lopinavir/ritonavir (LPV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "LPV/r (PrEP)":
  exists "LPV/r (PrEP) Condition"
    or exists "LPV/r (PrEP) Observation"
define "LPV/r (PrEP) Condition":
  [Condition: Concepts."LPV/r - HIV.C.DE104"]
define "LPV/r (PrEP) Observation":
  "Alternative third PEP drug (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."LPV/r - HIV.C.DE104"
/* End of LPV/r (PrEP) */

/*
@dataElement: HIV.C.DE105 - RAL
@activity: HIV.C3 Capture or update client history
@description: Alternative third drug of raltegravir (RAL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RAL (PrEP)":
  exists "RAL (PrEP) Condition"
    or exists "RAL (PrEP) Observation"
define "RAL (PrEP) Condition":
  [Condition: Concepts."RAL - HIV.C.DE105"]
define "RAL (PrEP) Observation":
  "Alternative third PEP drug (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."RAL - HIV.C.DE105"
/* End of RAL (PrEP) */

/*
@dataElement: HIV.C.DE106 - Estimated creatinine clearance
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Estimated creatinine clearance of the client returned from lab in mL/min
*/
// TODO: Replace placeholder with relevant CQL logic
define "Estimated creatinine clearance (PrEP)":
  [Observation: Concepts."Estimated creatinine clearance"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Estimated creatinine clearance (PrEP) Value":
  "Estimated creatinine clearance (PrEP)" O
  return O.value
/* End of Estimated creatinine clearance (PrEP) */

/*
@dataElement: HIV.C.DE112 - Contraindications to PrEP usage
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Listing of contraindications to pre-exposure prophylaxis (PrEP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraindications to PrEP usage (PrEP)":
  exists "Contraindications to PrEP usage (PrEP) Observation"
define "Contraindications to PrEP usage (PrEP) Observation":
  [Observation: Concepts."Contraindications to PrEP usage"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Contraindications to PrEP usage (PrEP) */

/*
@dataElement: HIV.C.DE113 - Tenofovir disoproxil fumarate TDF allergy or contraindication
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Allergy to pre-exposure prophylaxis (PrEP) tenofovir disoproxil fumarate (TDF)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP)":
  exists "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Condition"
    or exists "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Observation"
define "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Condition":
  [Condition: Concepts."Tenofovir disoproxil fumarate TDF allergy or contraindication"]
define "Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) Observation":
  "Contraindications to PrEP usage (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Tenofovir disoproxil fumarate TDF allergy or contraindication"
/* End of Tenofovir disoproxil fumarate TDF allergy or contraindication (PrEP) */

/*
@dataElement: HIV.C.DE114 - HIV-positive
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (PrEP)":
  exists "HIV-positive (PrEP) Condition"
    or exists "HIV-positive (PrEP) Observation"
define "HIV-positive (PrEP) Condition":
  [Condition: Concepts."HIV-positive - HIV.C.DE114"]
define "HIV-positive (PrEP) Observation":
  "Contraindications to PrEP usage (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive - HIV.C.DE114"
/* End of HIV-positive (PrEP) */

/*
@dataElement: HIV.C.DE115 - Low estimated creatinine clearance
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Estimated creatinine clearance of less than 60 ml/min (if known)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Low estimated creatinine clearance (PrEP)":
  exists "Low estimated creatinine clearance (PrEP) Condition"
    or exists "Low estimated creatinine clearance (PrEP) Observation"
define "Low estimated creatinine clearance (PrEP) Condition":
  [Condition: Concepts."Low estimated creatinine clearance"]
define "Low estimated creatinine clearance (PrEP) Observation":
  "Contraindications to PrEP usage (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Low estimated creatinine clearance"
/* End of Low estimated creatinine clearance (PrEP) */

/*
@dataElement: HIV.C.DE116 - Acute HIV infection symptoms
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Symptoms that could suggest an acute HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute HIV infection symptoms (PrEP|CDE116)":
  exists "Acute HIV infection symptoms (PrEP|CDE116) Condition"
    or exists "Acute HIV infection symptoms (PrEP|CDE116) Observation"
define "Acute HIV infection symptoms (PrEP|CDE116) Condition":
  [Condition: Concepts."Acute HIV infection symptoms - HIV.C.DE116"]
define "Acute HIV infection symptoms (PrEP|CDE116) Observation":
  "Contraindications to PrEP usage (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Acute HIV infection symptoms - HIV.C.DE116"
/* End of Acute HIV infection symptoms (PrEP|CDE116) */

/*
@dataElement: HIV.C.DE117 - Probable recent exposure to HIV
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: When the client is reported to have had probable recent exposure to HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Probable recent exposure to HIV (PrEP)":
  exists "Probable recent exposure to HIV (PrEP) Condition"
    or exists "Probable recent exposure to HIV (PrEP) Observation"
define "Probable recent exposure to HIV (PrEP) Condition":
  [Condition: Concepts."Probable recent exposure to HIV"]
define "Probable recent exposure to HIV (PrEP) Observation":
  "Contraindications to PrEP usage (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Probable recent exposure to HIV"
/* End of Probable recent exposure to HIV (PrEP) */

/*
@dataElement: HIV.C.DE118 - Other allergy or contraindication to a medicine in the PrEP regimen
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Client has another allergy or contraindication to a medicine in the pre-exposure prophylaxis (PrEP) regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP)":
  exists "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Condition"
    or exists "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Observation"
define "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Condition":
  [Condition: Concepts."Other allergy or contraindication to a medicine in the PrEP regimen"]
define "Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) Observation":
  "Contraindications to PrEP usage (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other allergy or contraindication to a medicine in the PrEP regimen"
/* End of Other allergy or contraindication to a medicine in the PrEP regimen (PrEP) */

/*
@dataElement: HIV.C.DE121 - Number of days prescribed
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Days of medication client has been prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of days prescribed (PrEP)":
  [Observation: Concepts."Number of days prescribed - HIV.C.DE121"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Number of days prescribed (PrEP) Value":
  "Number of days prescribed (PrEP)" O
  return O.value
/* End of Number of days prescribed (PrEP) */

/*
@dataElement: HIV.C.DE123 - Adherence counselling provided
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Whether adherence counselling was provided
*/
// TODO: Replace placeholder with relevant CQL logic
define "Adherence counselling provided (PrEP)":
  exists "Adherence counselling provided (PrEP) Observation"
define "Adherence counselling provided (PrEP) Observation":
  [Observation: Concepts."Adherence counselling provided - HIV.C.DE123"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Adherence counselling provided (PrEP) */

/*
@dataElement: HIV.C.DE124 - Date/time of follow-up appointment
@activity: HIV.C24 Schedule follow-up
@description: Date the client is to return for monitoring, re-supply, or any other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of follow-up appointment (PrEP)":
  [Observation: Concepts."Date/time of follow-up appointment - HIV.C.DE124"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date/time of follow-up appointment (PrEP) Value":
  "Date/time of follow-up appointment (PrEP)" O
  return O.value
/* End of Date/time of follow-up appointment (PrEP) */

/*
@dataElement: HIV.C.DE125 - Type of follow-up appointment
@activity: HIV.C24 Schedule follow-up
@description: Type of follow-up appointment for testing services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of follow-up appointment (PrEP)":
  exists "Type of follow-up appointment (PrEP) Observation"
define "Type of follow-up appointment (PrEP) Observation":
  [Observation: Concepts."Type of follow-up appointment - HIV.C.DE125"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of follow-up appointment (PrEP) */

/*
@dataElement: HIV.C.DE126 - Retesting for HIV
@activity: HIV.C24 Schedule follow-up
@description: Retesting follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retesting for HIV (PrEP)":
  exists "Retesting for HIV (PrEP) Condition"
    or exists "Retesting for HIV (PrEP) Observation"
define "Retesting for HIV (PrEP) Condition":
  [Condition: Concepts."Retesting for HIV - HIV.C.DE126"]
define "Retesting for HIV (PrEP) Observation":
  "Type of follow-up appointment (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Retesting for HIV - HIV.C.DE126"
/* End of Retesting for HIV (PrEP) */

/*
@dataElement: HIV.C.DE127 - Follow-up appointment for PrEP
@activity: HIV.C24 Schedule follow-up
@description: Retesting follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Follow-up appointment for PrEP (PrEP)":
  exists "Follow-up appointment for PrEP (PrEP) Condition"
    or exists "Follow-up appointment for PrEP (PrEP) Observation"
define "Follow-up appointment for PrEP (PrEP) Condition":
  [Condition: Concepts."Follow-up appointment for PrEP"]
define "Follow-up appointment for PrEP (PrEP) Observation":
  "Type of follow-up appointment (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Follow-up appointment for PrEP"
/* End of Follow-up appointment for PrEP (PrEP) */

/*
@dataElement: HIV.C.DE128 - Other
@activity: HIV.C24 Schedule follow-up
@description: Other reason for the follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PrEP|CDE128)":
  exists "Other (PrEP|CDE128) Condition"
    or exists "Other (PrEP|CDE128) Observation"
define "Other (PrEP|CDE128) Condition":
  [Condition: Concepts."Other - HIV.C.DE128"]
define "Other (PrEP|CDE128) Observation":
  "Type of follow-up appointment (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.C.DE128"
/* End of Other (PrEP|CDE128) */

/*
@dataElement: HIV.C.DE131 - Prevention services offered and referrals
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention services offered and referrals (PrEP)":
  exists "Prevention services offered and referrals (PrEP) Observation"
define "Prevention services offered and referrals (PrEP) Observation":
  [Observation: Concepts."Prevention services offered and referrals - HIV.C.DE131"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Prevention services offered and referrals (PrEP) */

/*
@dataElement: HIV.C.DE132 - Male and female condoms and condom-compatible lubricants offered
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer male and female condoms and condom-compatible lubricants
*/
// TODO: Replace placeholder with relevant CQL logic
define "Male and female condoms and condom-compatible lubricants offered (PrEP)":
  exists "Male and female condoms and condom-compatible lubricants offered (PrEP) Condition"
    or exists "Male and female condoms and condom-compatible lubricants offered (PrEP) Observation"
define "Male and female condoms and condom-compatible lubricants offered (PrEP) Condition":
  [Condition: Concepts."Male and female condoms and condom-compatible lubricants offered"]
define "Male and female condoms and condom-compatible lubricants offered (PrEP) Observation":
  "Prevention services offered and referrals (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Male and female condoms and condom-compatible lubricants offered"
/* End of Male and female condoms and condom-compatible lubricants offered (PrEP) */

/*
@dataElement: HIV.C.DE133 - Voluntary medical male circumcision VMMC referral
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer referral for VMMC services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Voluntary medical male circumcision VMMC referral (PrEP)":
  exists "Voluntary medical male circumcision VMMC referral (PrEP) Condition"
    or exists "Voluntary medical male circumcision VMMC referral (PrEP) Observation"
define "Voluntary medical male circumcision VMMC referral (PrEP) Condition":
  [Condition: Concepts."Voluntary medical male circumcision VMMC referral"]
define "Voluntary medical male circumcision VMMC referral (PrEP) Observation":
  "Prevention services offered and referrals (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Voluntary medical male circumcision VMMC referral"
/* End of Voluntary medical male circumcision VMMC referral (PrEP) */

/*
@dataElement: HIV.C.DE134 - Harm reduction for people who inject drugs
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to harm reduction for people who inject drugs (needle and syringe programmes, opioid substitution therapy, other drug-dependence treatment and opioid overdose prevention and management) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Harm reduction for people who inject drugs (PrEP)":
  exists "Harm reduction for people who inject drugs (PrEP) Condition"
    or exists "Harm reduction for people who inject drugs (PrEP) Observation"
define "Harm reduction for people who inject drugs (PrEP) Condition":
  [Condition: Concepts."Harm reduction for people who inject drugs - HIV.C.DE134"]
define "Harm reduction for people who inject drugs (PrEP) Observation":
  "Prevention services offered and referrals (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Harm reduction for people who inject drugs - HIV.C.DE134"
/* End of Harm reduction for people who inject drugs (PrEP) */

/*
@dataElement: HIV.C.DE135 - Behavioural interventions to support risk reduction
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to services for behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations
*/
// TODO: Replace placeholder with relevant CQL logic
define "Behavioural interventions to support risk reduction (PrEP)":
  exists "Behavioural interventions to support risk reduction (PrEP) Condition"
    or exists "Behavioural interventions to support risk reduction (PrEP) Observation"
define "Behavioural interventions to support risk reduction (PrEP) Condition":
  [Condition: Concepts."Behavioural interventions to support risk reduction - HIV.C.DE135"]
define "Behavioural interventions to support risk reduction (PrEP) Observation":
  "Prevention services offered and referrals (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Behavioural interventions to support risk reduction - HIV.C.DE135"
/* End of Behavioural interventions to support risk reduction (PrEP) */

/*
@dataElement: HIV.C.DE138 - Condom type
@activity: HIV.C10 Counsel on risk and prevention
@description: Type of condom provided to client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Condom type (PrEP)":
  exists "Condom type (PrEP) Observation"
define "Condom type (PrEP) Observation":
  [Observation: Concepts."Condom type"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Condom type (PrEP) */

/*
@dataElement: HIV.C.DE139 - Male condom
@activity: HIV.C10 Counsel on risk and prevention
@description: Male condoms were provided to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Male condom (PrEP)":
  exists "Male condom (PrEP) Condition"
    or exists "Male condom (PrEP) Observation"
define "Male condom (PrEP) Condition":
  [Condition: Concepts."Male condom"]
define "Male condom (PrEP) Observation":
  "Condom type (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Male condom"
/* End of Male condom (PrEP) */

/*
@dataElement: HIV.C.DE140 - Female condom
@activity: HIV.C10 Counsel on risk and prevention
@description: Female condoms were provided to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Female condom (PrEP)":
  exists "Female condom (PrEP) Condition"
    or exists "Female condom (PrEP) Observation"
define "Female condom (PrEP) Condition":
  [Condition: Concepts."Female condom"]
define "Female condom (PrEP) Observation":
  "Condom type (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Female condom"
/* End of Female condom (PrEP) */

/*
@dataElement: HIV.C.DE142 - Number of HIV self-test kits distributed
@activity: HIV.C10 Counsel on risk and prevention
@description: Number of HIV self-test kits distributed to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of HIV self-test kits distributed (PrEP)":
  [Observation: Concepts."Number of HIV self-test kits distributed"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Number of HIV self-test kits distributed (PrEP) Value":
  "Number of HIV self-test kits distributed (PrEP)" O
  return O.value
/* End of Number of HIV self-test kits distributed (PrEP) */

/*
@dataElement: HIV.C.DE143 - HIV self-test distributed for use by
@activity: HIV.C10 Counsel on risk and prevention
@description: Whom the client plans to give the HIV self-test kit (self, sexual partner, social contact, etc.)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV self-test distributed for use by (PrEP)":
  exists "HIV self-test distributed for use by (PrEP) Observation"
define "HIV self-test distributed for use by (PrEP) Observation":
  [Observation: Concepts."HIV self-test distributed for use by"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV self-test distributed for use by (PrEP) */

/*
@dataElement: HIV.C.DE144 - Self
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to use the self-test kit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Self (PrEP)":
  exists "Self (PrEP) Condition"
    or exists "Self (PrEP) Observation"
define "Self (PrEP) Condition":
  [Condition: Concepts."Self"]
define "Self (PrEP) Observation":
  "HIV self-test distributed for use by (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Self"
/* End of Self (PrEP) */

/*
@dataElement: HIV.C.DE145 - Family member
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a family member to use
*/
// TODO: Replace placeholder with relevant CQL logic
define "Family member (PrEP)":
  exists "Family member (PrEP) Condition"
    or exists "Family member (PrEP) Observation"
define "Family member (PrEP) Condition":
  [Condition: Concepts."Family member"]
define "Family member (PrEP) Observation":
  "HIV self-test distributed for use by (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Family member"
/* End of Family member (PrEP) */

/*
@dataElement: HIV.C.DE146 - Drug-injecting partner
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a drug-injecting partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug-injecting partner (PrEP)":
  exists "Drug-injecting partner (PrEP) Condition"
    or exists "Drug-injecting partner (PrEP) Observation"
define "Drug-injecting partner (PrEP) Condition":
  [Condition: Concepts."Drug-injecting partner - HIV.C.DE146"]
define "Drug-injecting partner (PrEP) Observation":
  "HIV self-test distributed for use by (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Drug-injecting partner - HIV.C.DE146"
/* End of Drug-injecting partner (PrEP) */

/*
@dataElement: HIV.C.DE147 - Sexual partner
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a sexual partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual partner (PrEP)":
  exists "Sexual partner (PrEP) Condition"
    or exists "Sexual partner (PrEP) Observation"
define "Sexual partner (PrEP) Condition":
  [Condition: Concepts."Sexual partner - HIV.C.DE147"]
define "Sexual partner (PrEP) Observation":
  "HIV self-test distributed for use by (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sexual partner - HIV.C.DE147"
/* End of Sexual partner (PrEP) */

/*
@dataElement: HIV.C.DE148 - Social contact
@activity: HIV.C10 Counsel on risk and prevention
@description: Client plans to give the self-test kit to a social contact
*/
// TODO: Replace placeholder with relevant CQL logic
define "Social contact (PrEP)":
  exists "Social contact (PrEP) Condition"
    or exists "Social contact (PrEP) Observation"
define "Social contact (PrEP) Condition":
  [Condition: Concepts."Social contact - HIV.C.DE148"]
define "Social contact (PrEP) Observation":
  "HIV self-test distributed for use by (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Social contact - HIV.C.DE148"
/* End of Social contact (PrEP) */

/*
@dataElement: HIV.C.DE149 - Sexual and reproductive health integrated services
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer to sexual and reproductive health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual and reproductive health integrated services (PrEP)":
  exists "Sexual and reproductive health integrated services (PrEP) Observation"
define "Sexual and reproductive health integrated services (PrEP) Observation":
  [Observation: Concepts."Sexual and reproductive health integrated services - HIV.C.DE149"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Sexual and reproductive health integrated services (PrEP) */

/*
@dataElement: HIV.C.DE150 - Contraception and family planning
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer contraception and family planning services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraception and family planning (PrEP)":
  exists "Contraception and family planning (PrEP) Condition"
    or exists "Contraception and family planning (PrEP) Observation"
define "Contraception and family planning (PrEP) Condition":
  [Condition: Concepts."Contraception and family planning - HIV.C.DE150"]
define "Contraception and family planning (PrEP) Observation":
  "Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Contraception and family planning - HIV.C.DE150"
/* End of Contraception and family planning (PrEP) */

/*
@dataElement: HIV.C.DE151 - Check pregnancy status
@activity: HIV.C10 Counsel on risk and prevention
@description: Check woman's pregnancy status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Check pregnancy status (PrEP)":
  exists "Check pregnancy status (PrEP) Condition"
    or exists "Check pregnancy status (PrEP) Observation"
define "Check pregnancy status (PrEP) Condition":
  [Condition: Concepts."Check pregnancy status - HIV.C.DE151"]
define "Check pregnancy status (PrEP) Observation":
  "Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Check pregnancy status - HIV.C.DE151"
/* End of Check pregnancy status (PrEP) */

/*
@dataElement: HIV.C.DE152 - Prevent mother-to-child transmission
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer services (counselling) to help prevent of mother-to-child transmission
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevent mother-to-child transmission (PrEP)":
  exists "Prevent mother-to-child transmission (PrEP) Condition"
    or exists "Prevent mother-to-child transmission (PrEP) Observation"
define "Prevent mother-to-child transmission (PrEP) Condition":
  [Condition: Concepts."Prevent mother-to-child transmission"]
define "Prevent mother-to-child transmission (PrEP) Observation":
  "Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Prevent mother-to-child transmission"
/* End of Prevent mother-to-child transmission (PrEP) */

/*
@dataElement: HIV.C.DE153 - Cervical cancer screening and treatment
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer cervical cancer screening and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening and treatment (PrEP)":
  exists "Cervical cancer screening and treatment (PrEP) Condition"
    or exists "Cervical cancer screening and treatment (PrEP) Observation"
define "Cervical cancer screening and treatment (PrEP) Condition":
  [Condition: Concepts."Cervical cancer screening and treatment"]
define "Cervical cancer screening and treatment (PrEP) Observation":
  "Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cervical cancer screening and treatment"
/* End of Cervical cancer screening and treatment (PrEP) */

/*
@dataElement: HIV.C.DE154 - Anal cancer screening for men who have sex with men
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer anal cancer screening (for men who have sex with men) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anal cancer screening for men who have sex with men (PrEP)":
  exists "Anal cancer screening for men who have sex with men (PrEP) Condition"
    or exists "Anal cancer screening for men who have sex with men (PrEP) Observation"
define "Anal cancer screening for men who have sex with men (PrEP) Condition":
  [Condition: Concepts."Anal cancer screening for men who have sex with men - HIV.C.DE154"]
define "Anal cancer screening for men who have sex with men (PrEP) Observation":
  "Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Anal cancer screening for men who have sex with men - HIV.C.DE154"
/* End of Anal cancer screening for men who have sex with men (PrEP) */

/*
@dataElement: HIV.C.DE155 - STI testing and treatment
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer STI testing and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI testing and treatment (PrEP)":
  exists "STI testing and treatment (PrEP) Condition"
    or exists "STI testing and treatment (PrEP) Observation"
define "STI testing and treatment (PrEP) Condition":
  [Condition: Concepts."STI testing and treatment - HIV.C.DE155"]
define "STI testing and treatment (PrEP) Observation":
  "Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."STI testing and treatment - HIV.C.DE155"
/* End of STI testing and treatment (PrEP) */

/*
@dataElement: HIV.C.DE156 - HIV testing for partners and biological children
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer testing for all partners and biological children of positive cases (includes partner services and index case testing), as well as partners and social contacts of people from key populations, where appropriate
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV testing for partners and biological children (PrEP)":
  exists "HIV testing for partners and biological children (PrEP) Condition"
    or exists "HIV testing for partners and biological children (PrEP) Observation"
define "HIV testing for partners and biological children (PrEP) Condition":
  [Condition: Concepts."HIV testing for partners and biological children - HIV.C.DE156"]
define "HIV testing for partners and biological children (PrEP) Observation":
  "Sexual and reproductive health integrated services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV testing for partners and biological children - HIV.C.DE156"
/* End of HIV testing for partners and biological children (PrEP) */

/*
@dataElement: HIV.C.DE157 - Offer other clinical services
@activity: HIV.C10 Counsel on risk and prevention
@description: Other clinical services offered or referrals given to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer other clinical services (PrEP)":
  exists "Offer other clinical services (PrEP) Observation"
define "Offer other clinical services (PrEP) Observation":
  [Observation: Concepts."Offer other clinical services - HIV.C.DE157"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Offer other clinical services (PrEP) */

/*
@dataElement: HIV.C.DE158 - Assessment and provision of vaccinations
@activity: HIV.C10 Counsel on risk and prevention
@description: Assessment and provision of vaccinations, such as for people from key populations, pregnant women and infants; and, where appropriate, tetanus vaccination for adolescent boys and men receiving VMMC
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assessment and provision of vaccinations (PrEP)":
  exists "Assessment and provision of vaccinations (PrEP) Condition"
    or exists "Assessment and provision of vaccinations (PrEP) Observation"
define "Assessment and provision of vaccinations (PrEP) Condition":
  [Condition: Concepts."Assessment and provision of vaccinations - HIV.C.DE158"]
define "Assessment and provision of vaccinations (PrEP) Observation":
  "Offer other clinical services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assessment and provision of vaccinations - HIV.C.DE158"
/* End of Assessment and provision of vaccinations (PrEP) */

/*
@dataElement: HIV.C.DE159 - Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for HBV testing and vaccination and HCV testing and treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP)":
  exists "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Condition"
    or exists "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Observation"
define "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Condition":
  [Condition: Concepts."Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment"]
define "Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) Observation":
  "Offer other clinical services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment"
/* End of Hepatitis B virus HBV and hepatitis C virus HCV testing and treatment (PrEP) */

/*
@dataElement: HIV.C.DE160 - Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP)":
  exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Condition"
    or exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Observation"
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Condition":
  [Condition: Concepts."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia - HIV.C.DE160"]
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) Observation":
  "Offer other clinical services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia - HIV.C.DE160"
/* End of Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (PrEP) */

/*
@dataElement: HIV.C.DE161 - Intensified TB case finding and linkage to TB treatment
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for TB case finding and linkage to TB treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intensified TB case finding and linkage to TB treatment (PrEP)":
  exists "Intensified TB case finding and linkage to TB treatment (PrEP) Condition"
    or exists "Intensified TB case finding and linkage to TB treatment (PrEP) Observation"
define "Intensified TB case finding and linkage to TB treatment (PrEP) Condition":
  [Condition: Concepts."Intensified TB case finding and linkage to TB treatment - HIV.C.DE161"]
define "Intensified TB case finding and linkage to TB treatment (PrEP) Observation":
  "Offer other clinical services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Intensified TB case finding and linkage to TB treatment - HIV.C.DE161"
/* End of Intensified TB case finding and linkage to TB treatment (PrEP) */

/*
@dataElement: HIV.C.DE162 - Provision of isoniazid preventive therapy if person does not have TB
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for provision of isoniazid preventive therapy if person does not have TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Provision of isoniazid preventive therapy if person does not have TB (PrEP)":
  exists "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Condition"
    or exists "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Observation"
define "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Condition":
  [Condition: Concepts."Provision of isoniazid preventive therapy if person does not have TB - HIV.C.DE162"]
define "Provision of isoniazid preventive therapy if person does not have TB (PrEP) Observation":
  "Offer other clinical services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Provision of isoniazid preventive therapy if person does not have TB - HIV.C.DE162"
/* End of Provision of isoniazid preventive therapy if person does not have TB (PrEP) */

/*
@dataElement: HIV.C.DE163 - Malaria prevention such as bed nets and prophylaxis, depending on epidemiology
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for malaria prevention (such as bed nets and prophylaxis), depending on epidemiology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP)":
  exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Condition"
    or exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Observation"
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Condition":
  [Condition: Concepts."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology - HIV.C.DE163"]
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) Observation":
  "Offer other clinical services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology - HIV.C.DE163"
/* End of Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (PrEP) */

/*
@dataElement: HIV.C.DE164 - Other support services
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for other support services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other support services (PrEP)":
  exists "Other support services (PrEP) Observation"
define "Other support services (PrEP) Observation":
  [Observation: Concepts."Other support services - HIV.C.DE164"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Other support services (PrEP) */

/*
@dataElement: HIV.C.DE165 - Mental health services
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for mental health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mental health services (PrEP)":
  exists "Mental health services (PrEP) Condition"
    or exists "Mental health services (PrEP) Observation"
define "Mental health services (PrEP) Condition":
  [Condition: Concepts."Mental health services - HIV.C.DE165"]
define "Mental health services (PrEP) Observation":
  "Other support services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Mental health services - HIV.C.DE165"
/* End of Mental health services (PrEP) */

/*
@dataElement: HIV.C.DE166 - Psychosocial counselling, support and treatment adherence counselling
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for psychosocial counselling, support and treatment adherence counselling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Psychosocial counselling, support and treatment adherence counselling (PrEP)":
  exists "Psychosocial counselling, support and treatment adherence counselling (PrEP) Condition"
    or exists "Psychosocial counselling, support and treatment adherence counselling (PrEP) Observation"
define "Psychosocial counselling, support and treatment adherence counselling (PrEP) Condition":
  [Condition: Concepts."Psychosocial counselling, support and treatment adherence counselling - HIV.C.DE166"]
define "Psychosocial counselling, support and treatment adherence counselling (PrEP) Observation":
  "Other support services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Psychosocial counselling, support and treatment adherence counselling - HIV.C.DE166"
/* End of Psychosocial counselling, support and treatment adherence counselling (PrEP) */

/*
@dataElement: HIV.C.DE167 - Support for disclosure and partner services
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for support for disclosure and partner services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Support for disclosure and partner services (PrEP)":
  exists "Support for disclosure and partner services (PrEP) Condition"
    or exists "Support for disclosure and partner services (PrEP) Observation"
define "Support for disclosure and partner services (PrEP) Condition":
  [Condition: Concepts."Support for disclosure and partner services - HIV.C.DE167"]
define "Support for disclosure and partner services (PrEP) Observation":
  "Other support services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Support for disclosure and partner services - HIV.C.DE167"
/* End of Support for disclosure and partner services (PrEP) */

/*
@dataElement: HIV.C.DE168 - Legal and social services
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for legal and social services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Legal and social services (PrEP)":
  exists "Legal and social services (PrEP) Condition"
    or exists "Legal and social services (PrEP) Observation"
define "Legal and social services (PrEP) Condition":
  [Condition: Concepts."Legal and social services - HIV.C.DE168"]
define "Legal and social services (PrEP) Observation":
  "Other support services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Legal and social services - HIV.C.DE168"
/* End of Legal and social services (PrEP) */

/*
@dataElement: HIV.C.DE169 - Services for responding to violence against women
@activity: HIV.C10 Counsel on risk and prevention
@description: Offer or refer for services for responding to violence against women, including first-line support and psychosocial support, post-rape care and other support services including shelters, legal services and women and child protection services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Services for responding to violence against women (PrEP)":
  exists "Services for responding to violence against women (PrEP) Condition"
    or exists "Services for responding to violence against women (PrEP) Observation"
define "Services for responding to violence against women (PrEP) Condition":
  [Condition: Concepts."Services for responding to violence against women - HIV.C.DE169"]
define "Services for responding to violence against women (PrEP) Observation":
  "Other support services (PrEP) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Services for responding to violence against women - HIV.C.DE169"
/* End of Services for responding to violence against women (PrEP) */

/*
@dataElement: HIV.D.DE1 - Reason for visit
@activity: HIV.D1 Determine reason for visit
@description: Whether visit was scheduled or unscheduled, clinical only, or for ARV drug pick-up
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason for visit (Care)":
  exists "Reason for visit (Care) Observation"
define "Reason for visit (Care) Observation":
  [Observation: Concepts."Reason for visit - HIV.D.DE1"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Reason for visit (Care) */

/*
@dataElement: HIV.D.DE2 - First clinical visit
@activity: HIV.D1 Determine reason for visit
@description: The client's first appointment for clinical care by a provider at the facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "First clinical visit (Care)":
  exists "First clinical visit (Care) Condition"
    or exists "First clinical visit (Care) Observation"
define "First clinical visit (Care) Condition":
  [Condition: Concepts."First clinical visit"]
define "First clinical visit (Care) Observation":
  "Reason for visit (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First clinical visit"
/* End of First clinical visit (Care) */

/*
@dataElement: HIV.D.DE3 - Clinical visit
@activity: HIV.D1 Determine reason for visit
@description: Appointment for clinical care by a provider
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical visit (Care|DDE3)":
  exists "Clinical visit (Care|DDE3) Condition"
    or exists "Clinical visit (Care|DDE3) Observation"
define "Clinical visit (Care|DDE3) Condition":
  [Condition: Concepts."Clinical visit - HIV.D.DE3"]
define "Clinical visit (Care|DDE3) Observation":
  "Reason for visit (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Clinical visit - HIV.D.DE3"
/* End of Clinical visit (Care|DDE3) */

/*
@dataElement: HIV.D.DE4 - ART initiation
@activity: HIV.D1 Determine reason for visit
@description: Appointment for initiation of ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART initiation (Care)":
  exists "ART initiation (Care) Condition"
    or exists "ART initiation (Care) Observation"
define "ART initiation (Care) Condition":
  [Condition: Concepts."ART initiation"]
define "ART initiation (Care) Observation":
  "Reason for visit (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."ART initiation"
/* End of ART initiation (Care) */

/*
@dataElement: HIV.D.DE5 - ART drug pick up
@activity: HIV.D1 Determine reason for visit
@description: Appointment for an antiretroviral drug pick up
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART drug pick up (Care)":
  exists "ART drug pick up (Care) Condition"
    or exists "ART drug pick up (Care) Observation"
define "ART drug pick up (Care) Condition":
  [Condition: Concepts."ART drug pick up"]
define "ART drug pick up (Care) Observation":
  "Reason for visit (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."ART drug pick up"
/* End of ART drug pick up (Care) */

/*
@dataElement: HIV.D.DE6 - Issues and concerns
@activity: HIV.D1 Determine reason for visit
@description: Visit to address issues and concerns
*/
// TODO: Replace placeholder with relevant CQL logic
define "Issues and concerns (Care)":
  exists "Issues and concerns (Care) Condition"
    or exists "Issues and concerns (Care) Observation"
define "Issues and concerns (Care) Condition":
  [Condition: Concepts."Issues and concerns"]
define "Issues and concerns (Care) Observation":
  "Reason for visit (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Issues and concerns"
/* End of Issues and concerns (Care) */

/*
@dataElement: HIV.D.DE7 - Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer
@activity: HIV.D1 Determine reason for visit
@description: Appointment for a post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7)":
  exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Condition"
    or exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Observation"
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Condition":
  [Condition: Concepts."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer - HIV.D.DE7"]
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) Observation":
  "Reason for visit (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer - HIV.D.DE7"
/* End of Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE7) */

/*
@dataElement: HIV.D.DE9 - Body temperature
@activity: HIV.D2 Take vital signs
@description: Temperature of the client in Celsius
*/
// TODO: Replace placeholder with relevant CQL logic
define "Body temperature (Care)":
  [Observation: Concepts."Body temperature"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Body temperature (Care) Value":
  "Body temperature (Care)" O
  return O.value
/* End of Body temperature (Care) */

/*
@dataElement: HIV.D.DE13 - Body weight
@activity: HIV.D2 Take vital signs
@description: The client's current weight in kilograms
*/
// TODO: Replace placeholder with relevant CQL logic
define "Body weight (Care)":
  [Observation: Concepts."Body weight"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Body weight (Care) Value":
  "Body weight (Care)" O
  return O.value
/* End of Body weight (Care) */

/*
@dataElement: HIV.D.DE17 - Signs of serious illness
@activity: HIV.D3 Check for signs of serious illness
@description: Signs that may indicate the client has a serious illness and needs triage or an emergency referral
*/
// TODO: Replace placeholder with relevant CQL logic
define "Signs of serious illness (Care)":
  exists "Signs of serious illness (Care) Observation"
define "Signs of serious illness (Care) Observation":
  [Observation: Concepts."Signs of serious illness"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Signs of serious illness (Care) */

/*
@dataElement: HIV.D.DE18 - Fever of 39 C or greater
@activity: HIV.D3 Check for signs of serious illness
@description: Client has a fever with a measured temperature of 102.2 F/39 C or greater
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fever of 39 C or greater (Care)":
  exists "Fever of 39 C or greater (Care) Condition"
    or exists "Fever of 39 C or greater (Care) Observation"
define "Fever of 39 C or greater (Care) Condition":
  [Condition: Concepts."Fever of 39 C or greater"]
define "Fever of 39 C or greater (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Fever of 39 C or greater"
/* End of Fever of 39 C or greater (Care) */

/*
@dataElement: HIV.D.DE19 - Tachycardia
@activity: HIV.D3 Check for signs of serious illness
@description: Heart rate above a rate per minute based on age
*/
// TODO: Replace placeholder with relevant CQL logic
define "Tachycardia (Care)":
  exists "Tachycardia (Care) Condition"
    or exists "Tachycardia (Care) Observation"
define "Tachycardia (Care) Condition":
  [Condition: Concepts."Tachycardia"]
define "Tachycardia (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Tachycardia"
/* End of Tachycardia (Care) */

/*
@dataElement: HIV.D.DE20 - Tachypnea
@activity: HIV.D3 Check for signs of serious illness
@description: Respiratory rate above a number of breaths per minute based on age
*/
// TODO: Replace placeholder with relevant CQL logic
define "Tachypnea (Care)":
  exists "Tachypnea (Care) Condition"
    or exists "Tachypnea (Care) Observation"
define "Tachypnea (Care) Condition":
  [Condition: Concepts."Tachypnea"]
define "Tachypnea (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Tachypnea"
/* End of Tachypnea (Care) */

/*
@dataElement: HIV.D.DE21 - Unable to walk unaided
@activity: HIV.D3 Check for signs of serious illness
@description: Client is not able to walk without help
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unable to walk unaided (Care)":
  exists "Unable to walk unaided (Care) Condition"
    or exists "Unable to walk unaided (Care) Observation"
define "Unable to walk unaided (Care) Condition":
  [Condition: Concepts."Unable to walk unaided"]
define "Unable to walk unaided (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unable to walk unaided"
/* End of Unable to walk unaided (Care) */

/*
@dataElement: HIV.D.DE22 - Lethargy
@activity: HIV.D3 Check for signs of serious illness
@description: Client is exhibiting lethargy as a sign of serious illness
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lethargy (Care)":
  exists "Lethargy (Care) Condition"
    or exists "Lethargy (Care) Observation"
define "Lethargy (Care) Condition":
  [Condition: Concepts."Lethargy - HIV.D.DE22"]
define "Lethargy (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lethargy - HIV.D.DE22"
/* End of Lethargy (Care) */

/*
@dataElement: HIV.D.DE23 - Unconsciousness
@activity: HIV.D3 Check for signs of serious illness
@description: Client is currently unconscious
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unconsciousness (Care)":
  exists "Unconsciousness (Care) Condition"
    or exists "Unconsciousness (Care) Observation"
define "Unconsciousness (Care) Condition":
  [Condition: Concepts."Unconsciousness"]
define "Unconsciousness (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unconsciousness"
/* End of Unconsciousness (Care) */

/*
@dataElement: HIV.D.DE24 - Convulsions
@activity: HIV.D3 Check for signs of serious illness
@description: Client is convulsing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Convulsions (Care)":
  exists "Convulsions (Care) Condition"
    or exists "Convulsions (Care) Observation"
define "Convulsions (Care) Condition":
  [Condition: Concepts."Convulsions"]
define "Convulsions (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Convulsions"
/* End of Convulsions (Care) */

/*
@dataElement: HIV.D.DE25 - Unable to drink
@activity: HIV.D3 Check for signs of serious illness
@description: Child is not able to drink
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unable to drink (Care)":
  exists "Unable to drink (Care) Condition"
    or exists "Unable to drink (Care) Observation"
define "Unable to drink (Care) Condition":
  [Condition: Concepts."Unable to drink"]
define "Unable to drink (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unable to drink"
/* End of Unable to drink (Care) */

/*
@dataElement: HIV.D.DE26 - Unable to breastfeed
@activity: HIV.D3 Check for signs of serious illness
@description: Infant or child is not able to breastfeed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unable to breastfeed (Care)":
  exists "Unable to breastfeed (Care) Condition"
    or exists "Unable to breastfeed (Care) Observation"
define "Unable to breastfeed (Care) Condition":
  [Condition: Concepts."Unable to breastfeed"]
define "Unable to breastfeed (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unable to breastfeed"
/* End of Unable to breastfeed (Care) */

/*
@dataElement: HIV.D.DE27 - Repeated vomiting
@activity: HIV.D3 Check for signs of serious illness
@description: Client is repeatedly vomiting
*/
// TODO: Replace placeholder with relevant CQL logic
define "Repeated vomiting (Care)":
  exists "Repeated vomiting (Care) Condition"
    or exists "Repeated vomiting (Care) Observation"
define "Repeated vomiting (Care) Condition":
  [Condition: Concepts."Repeated vomiting"]
define "Repeated vomiting (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Repeated vomiting"
/* End of Repeated vomiting (Care) */

/*
@dataElement: HIV.D.DE28 - Headache
@activity: HIV.D3 Check for signs of serious illness
@description: Client is exhibiting a headache
*/
// TODO: Replace placeholder with relevant CQL logic
define "Headache (Care|DDE28)":
  exists "Headache (Care|DDE28) Condition"
    or exists "Headache (Care|DDE28) Observation"
define "Headache (Care|DDE28) Condition":
  [Condition: Concepts."Headache - HIV.D.DE28"]
define "Headache (Care|DDE28) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Headache - HIV.D.DE28"
/* End of Headache (Care|DDE28) */

/*
@dataElement: HIV.D.DE29 - Other sign of serious illness
@activity: HIV.D3 Check for signs of serious illness
@description: Client is exhibiting another sign of a serious illness
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other sign of serious illness (Care)":
  exists "Other sign of serious illness (Care) Condition"
    or exists "Other sign of serious illness (Care) Observation"
define "Other sign of serious illness (Care) Condition":
  [Condition: Concepts."Other sign of serious illness"]
define "Other sign of serious illness (Care) Observation":
  "Signs of serious illness (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other sign of serious illness"
/* End of Other sign of serious illness (Care) */

/*
@dataElement: HIV.D.DE31 - Currently pregnant
@activity: HIV.D8 Capture or update client history
@description: Client is currently pregnant
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently pregnant (Care)":
  exists "Currently pregnant (Care) Observation"
define "Currently pregnant (Care) Observation":
  [Observation: Concepts."Currently pregnant - HIV.D.DE31"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Currently pregnant (Care) */

/*
@dataElement: HIV.D.DE32 - Breastfeeding
@activity: HIV.D8 Capture or update client history
@description: Client is giving infant breast milk
*/
// TODO: Replace placeholder with relevant CQL logic
define "Breastfeeding (Care)":
  exists "Breastfeeding (Care) Observation"
define "Breastfeeding (Care) Observation":
  [Observation: Concepts."Breastfeeding - HIV.D.DE32"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Breastfeeding (Care) */

/*
@dataElement: HIV.D.DE37 - Serodiscordant partner
@activity: HIV.D8 Capture or update client history
@description: Client's HIV status is different from a current partner's HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Serodiscordant partner (Care)":
  exists "Serodiscordant partner (Care) Observation"
define "Serodiscordant partner (Care) Observation":
  [Observation: Concepts."Serodiscordant partner - HIV.D.DE37"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Serodiscordant partner (Care) */

/*
@dataElement: HIV.D.DE38 - On ART
@activity: HIV.D8 Capture or update client history
@description: Client is currently taking ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "On ART (Care)":
  exists "On ART (Care) Observation"
define "On ART (Care) Observation":
  [Observation: Concepts."On ART - HIV.D.DE38"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of On ART (Care) */

/*
@dataElement: HIV.D.DE39 - ART start date
@activity: HIV.D8 Capture or update client history
@description: The date on which the client started or restarted ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART start date (Care)":
  [Observation: Concepts."ART start date - HIV.D.DE39"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "ART start date (Care) Value":
  "ART start date (Care)" O
  return O.value
/* End of ART start date (Care) */

/*
@dataElement: HIV.D.DE41 - Date ART stopped
@activity: HIV.D8 Capture or update client history
@description: Date on which client stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date ART stopped (Care)":
  [Observation: Concepts."Date ART stopped - HIV.D.DE41"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date ART stopped (Care) Value":
  "Date ART stopped (Care)" O
  return O.value
/* End of Date ART stopped (Care) */

/*
@dataElement: HIV.D.DE42 - Established on ART
@activity: HIV.D8 Capture or update client history
@description: Is the client successfully established on ART?
*/
// TODO: Replace placeholder with relevant CQL logic
define "Established on ART (Care)":
  exists "Established on ART (Care) Observation"
define "Established on ART (Care) Observation":
  [Observation: Concepts."Established on ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Established on ART (Care) */

/*
@dataElement: HIV.D.DE43 - ART start type
@activity: HIV.D8 Capture or update client history
@description: Whether the client is ART naive or is restarting ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART start type (Care)":
  exists "ART start type (Care) Observation"
define "ART start type (Care) Observation":
  [Observation: Concepts."ART start type"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of ART start type (Care) */

/*
@dataElement: HIV.D.DE44 - First-time user of ART
@activity: HIV.D8 Capture or update client history
@description: Client is ART naive, having never taken ART to treat HIV before
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-time user of ART (Care)":
  exists "First-time user of ART (Care) Condition"
    or exists "First-time user of ART (Care) Observation"
define "First-time user of ART (Care) Condition":
  [Condition: Concepts."First-time user of ART"]
define "First-time user of ART (Care) Observation":
  "ART start type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First-time user of ART"
/* End of First-time user of ART (Care) */

/*
@dataElement: HIV.D.DE45 - Restarting ART
@activity: HIV.D8 Capture or update client history
@description: Client is restarting ART after stopping treatment for any reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Restarting ART (Care)":
  exists "Restarting ART (Care) Condition"
    or exists "Restarting ART (Care) Observation"
define "Restarting ART (Care) Condition":
  [Condition: Concepts."Restarting ART"]
define "Restarting ART (Care) Observation":
  "ART start type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Restarting ART"
/* End of Restarting ART (Care) */

/*
@dataElement: HIV.D.DE75 - Current ART regimen
@activity: HIV.D8 Capture or update client history
@description: The current ART regimen the client is taking
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current ART regimen (Care)":
  exists "Current ART regimen (Care) Observation"
define "Current ART regimen (Care) Observation":
  [Observation: Concepts."Current ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Current ART regimen (Care) */

/*
@dataElement: HIV.D.DE77 - Preferred first-line ART regimen
@activity: HIV.D8 Capture or update client history
@description: The preferred first-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred first-line ART regimen (Care)":
  exists "Preferred first-line ART regimen (Care) Observation"
define "Preferred first-line ART regimen (Care) Observation":
  [Observation: Concepts."Preferred first-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Preferred first-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE78 - Alternative first-line ART regimen
@activity: HIV.D8 Capture or update client history
@description: The alternative first-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative first-line ART regimen (Care)":
  exists "Alternative first-line ART regimen (Care) Observation"
define "Alternative first-line ART regimen (Care) Observation":
  [Observation: Concepts."Alternative first-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Alternative first-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE79 - First-line ART regimen under special circumstances
@activity: HIV.D8 Capture or update client history
@description: The first-line ART regimen for the client under special circumstances according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen under special circumstances (Care)":
  exists "First-line ART regimen under special circumstances (Care) Observation"
define "First-line ART regimen under special circumstances (Care) Observation":
  [Observation: Concepts."First-line ART regimen under special circumstances"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of First-line ART regimen under special circumstances (Care) */

/*
@dataElement: HIV.D.DE80 - Preferred second-line ART regimen
@activity: HIV.D8 Capture or update client history
@description: The preferred second-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Preferred second-line ART regimen (Care)":
  exists "Preferred second-line ART regimen (Care) Observation"
define "Preferred second-line ART regimen (Care) Observation":
  [Observation: Concepts."Preferred second-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Preferred second-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE81 - Alternative second-line ART regimen
@activity: HIV.D8 Capture or update client history
@description: The alternative second-line ART regimen for the client according to WHO (or national) guidelines
*/
// TODO: Replace placeholder with relevant CQL logic
define "Alternative second-line ART regimen (Care)":
  exists "Alternative second-line ART regimen (Care) Observation"
define "Alternative second-line ART regimen (Care) Observation":
  [Observation: Concepts."Alternative second-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Alternative second-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE82 - Optimal regimen for transition
@activity: HIV.D8 Capture or update client history
@description: The optimal regimen for transition to DTG-based regimens for children established on ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Optimal regimen for transition (Care)":
  exists "Optimal regimen for transition (Care) Observation"
define "Optimal regimen for transition (Care) Observation":
  [Observation: Concepts."Optimal regimen for transition"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Optimal regimen for transition (Care) */

/*
@dataElement: HIV.D.DE83 - Current ART regimen first-, second-, or third-line
@activity: HIV.D8 Capture or update client history
@description: ART regimen for treating clients living with HIV, based on national guidance
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current ART regimen first-, second-, or third-line (Care)":
  exists "Current ART regimen first-, second-, or third-line (Care) Observation"
define "Current ART regimen first-, second-, or third-line (Care) Observation":
  [Observation: Concepts."Current ART regimen first-, second-, or third-line"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Current ART regimen first-, second-, or third-line (Care) */

/*
@dataElement: HIV.D.DE84 - First-line ART regimen for adults and adolescents
@activity: HIV.D8 Capture or update client history
@description: First-line ART regimen for adults and adolescents living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen for adults and adolescents (Care)":
  exists "First-line ART regimen for adults and adolescents (Care) Condition"
    or exists "First-line ART regimen for adults and adolescents (Care) Observation"
define "First-line ART regimen for adults and adolescents (Care) Condition":
  [Condition: Concepts."First-line ART regimen for adults and adolescents"]
define "First-line ART regimen for adults and adolescents (Care) Observation":
  "Current ART regimen first-, second-, or third-line (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First-line ART regimen for adults and adolescents"
/* End of First-line ART regimen for adults and adolescents (Care) */

/*
@dataElement: HIV.D.DE85 - First-line ART regimen for children
@activity: HIV.D8 Capture or update client history
@description: First-line ART regimen for children living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen for children (Care)":
  exists "First-line ART regimen for children (Care) Condition"
    or exists "First-line ART regimen for children (Care) Observation"
define "First-line ART regimen for children (Care) Condition":
  [Condition: Concepts."First-line ART regimen for children"]
define "First-line ART regimen for children (Care) Observation":
  "Current ART regimen first-, second-, or third-line (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First-line ART regimen for children"
/* End of First-line ART regimen for children (Care) */

/*
@dataElement: HIV.D.DE86 - First-line ART regimen for neonates
@activity: HIV.D8 Capture or update client history
@description: First-line ART regimen for neonates living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "First-line ART regimen for neonates (Care)":
  exists "First-line ART regimen for neonates (Care) Condition"
    or exists "First-line ART regimen for neonates (Care) Observation"
define "First-line ART regimen for neonates (Care) Condition":
  [Condition: Concepts."First-line ART regimen for neonates"]
define "First-line ART regimen for neonates (Care) Observation":
  "Current ART regimen first-, second-, or third-line (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First-line ART regimen for neonates"
/* End of First-line ART regimen for neonates (Care) */

/*
@dataElement: HIV.D.DE87 - Second-line ART regimen for adults and adolescents
@activity: HIV.D8 Capture or update client history
@description: Second-line ART regimen for adults and adolescents living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Second-line ART regimen for adults and adolescents (Care)":
  exists "Second-line ART regimen for adults and adolescents (Care) Condition"
    or exists "Second-line ART regimen for adults and adolescents (Care) Observation"
define "Second-line ART regimen for adults and adolescents (Care) Condition":
  [Condition: Concepts."Second-line ART regimen for adults and adolescents"]
define "Second-line ART regimen for adults and adolescents (Care) Observation":
  "Current ART regimen first-, second-, or third-line (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Second-line ART regimen for adults and adolescents"
/* End of Second-line ART regimen for adults and adolescents (Care) */

/*
@dataElement: HIV.D.DE88 - Second-line ART regimen for children
@activity: HIV.D8 Capture or update client history
@description: Second-line ART regimen for children living with HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Second-line ART regimen for children (Care)":
  exists "Second-line ART regimen for children (Care) Condition"
    or exists "Second-line ART regimen for children (Care) Observation"
define "Second-line ART regimen for children (Care) Condition":
  [Condition: Concepts."Second-line ART regimen for children"]
define "Second-line ART regimen for children (Care) Observation":
  "Current ART regimen first-, second-, or third-line (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Second-line ART regimen for children"
/* End of Second-line ART regimen for children (Care) */

/*
@dataElement: HIV.D.DE89 - Third-line ART regimen
@activity: HIV.D8 Capture or update client history
@description: Third-line ART regimen for people living with HIV (Not defined by WHO. National programmes should develop policies for third-line ART)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Third-line ART regimen (Care)":
  exists "Third-line ART regimen (Care) Condition"
    or exists "Third-line ART regimen (Care) Observation"
define "Third-line ART regimen (Care) Condition":
  [Condition: Concepts."Third-line ART regimen"]
define "Third-line ART regimen (Care) Observation":
  "Current ART regimen first-, second-, or third-line (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Third-line ART regimen"
/* End of Third-line ART regimen (Care) */

/*
@dataElement: HIV.D.DE128 - ART regimen composition
@activity: HIV.D8 Capture or update client history
@description: Drug composition of client's current ART regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART regimen composition (Care)":
  exists "ART regimen composition (Care) Observation"
define "ART regimen composition (Care) Observation":
  [Observation: Concepts."ART regimen composition"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of ART regimen composition (Care) */

/*
@dataElement: HIV.D.DE129 - ABC
@activity: HIV.D8 Capture or update client history
@description: Treated with abacavir (ABC)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ABC (Care)":
  exists "ABC (Care) Condition"
    or exists "ABC (Care) Observation"
define "ABC (Care) Condition":
  [Condition: Concepts."ABC"]
define "ABC (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."ABC"
/* End of ABC (Care) */

/*
@dataElement: HIV.D.DE130 - FTC
@activity: HIV.D8 Capture or update client history
@description: Treated with emtricitabine (FTC)
*/
// TODO: Replace placeholder with relevant CQL logic
define "FTC (Care)":
  exists "FTC (Care) Condition"
    or exists "FTC (Care) Observation"
define "FTC (Care) Condition":
  [Condition: Concepts."FTC"]
define "FTC (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."FTC"
/* End of FTC (Care) */

/*
@dataElement: HIV.D.DE131 - 3TC
@activity: HIV.D8 Capture or update client history
@description: Treated with lamivudine (3TC)
*/
// TODO: Replace placeholder with relevant CQL logic
define "3TC (Care)":
  exists "3TC (Care) Condition"
    or exists "3TC (Care) Observation"
define "3TC (Care) Condition":
  [Condition: Concepts."3TC"]
define "3TC (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."3TC"
/* End of 3TC (Care) */

/*
@dataElement: HIV.D.DE132 - AZT
@activity: HIV.D8 Capture or update client history
@description: Treated with zidovudine (AZT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "AZT (Care)":
  exists "AZT (Care) Condition"
    or exists "AZT (Care) Observation"
define "AZT (Care) Condition":
  [Condition: Concepts."AZT"]
define "AZT (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."AZT"
/* End of AZT (Care) */

/*
@dataElement: HIV.D.DE133 - DDI
@activity: HIV.D8 Capture or update client history
@description: Treated with didanosine (DDI)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DDI (Care)":
  exists "DDI (Care) Condition"
    or exists "DDI (Care) Observation"
define "DDI (Care) Condition":
  [Condition: Concepts."DDI"]
define "DDI (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."DDI"
/* End of DDI (Care) */

/*
@dataElement: HIV.D.DE134 - D4T
@activity: HIV.D8 Capture or update client history
@description: Treated with stavudine (D4T)
*/
// TODO: Replace placeholder with relevant CQL logic
define "D4T (Care)":
  exists "D4T (Care) Condition"
    or exists "D4T (Care) Observation"
define "D4T (Care) Condition":
  [Condition: Concepts."D4T"]
define "D4T (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."D4T"
/* End of D4T (Care) */

/*
@dataElement: HIV.D.DE135 - TDF
@activity: HIV.D8 Capture or update client history
@description: Treated with tenofovir (TDF)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF (Care|DDE135)":
  exists "TDF (Care|DDE135) Condition"
    or exists "TDF (Care|DDE135) Observation"
define "TDF (Care|DDE135) Condition":
  [Condition: Concepts."TDF - HIV.D.DE135"]
define "TDF (Care|DDE135) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF - HIV.D.DE135"
/* End of TDF (Care|DDE135) */

/*
@dataElement: HIV.D.DE136 - EFV
@activity: HIV.D8 Capture or update client history
@description: Treated with efavirenz (EFV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "EFV (Care)":
  exists "EFV (Care) Condition"
    or exists "EFV (Care) Observation"
define "EFV (Care) Condition":
  [Condition: Concepts."EFV"]
define "EFV (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."EFV"
/* End of EFV (Care) */

/*
@dataElement: HIV.D.DE137 - ETV
@activity: HIV.D8 Capture or update client history
@description: Treated with etravirine (ETV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ETV (Care)":
  exists "ETV (Care) Condition"
    or exists "ETV (Care) Observation"
define "ETV (Care) Condition":
  [Condition: Concepts."ETV"]
define "ETV (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."ETV"
/* End of ETV (Care) */

/*
@dataElement: HIV.D.DE138 - NVP
@activity: HIV.D8 Capture or update client history
@description: Treated with nevirapine (NVP)
*/
// TODO: Replace placeholder with relevant CQL logic
define "NVP (Care)":
  exists "NVP (Care) Condition"
    or exists "NVP (Care) Observation"
define "NVP (Care) Condition":
  [Condition: Concepts."NVP"]
define "NVP (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."NVP"
/* End of NVP (Care) */

/*
@dataElement: HIV.D.DE139 - RIL
@activity: HIV.D8 Capture or update client history
@description: Treated with rilpivirine (RIL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RIL (Care)":
  exists "RIL (Care) Condition"
    or exists "RIL (Care) Observation"
define "RIL (Care) Condition":
  [Condition: Concepts."RIL"]
define "RIL (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."RIL"
/* End of RIL (Care) */

/*
@dataElement: HIV.D.DE140 - ATV/r
@activity: HIV.D8 Capture or update client history
@description: Treated with atazanavir/ritonavir (ATV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ATV/r (Care)":
  exists "ATV/r (Care) Condition"
    or exists "ATV/r (Care) Observation"
define "ATV/r (Care) Condition":
  [Condition: Concepts."ATV/r - HIV.D.DE140"]
define "ATV/r (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."ATV/r - HIV.D.DE140"
/* End of ATV/r (Care) */

/*
@dataElement: HIV.D.DE141 - LPV/r
@activity: HIV.D8 Capture or update client history
@description: Treated with lopinavir/ritonavir (LPV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "LPV/r (Care)":
  exists "LPV/r (Care) Condition"
    or exists "LPV/r (Care) Observation"
define "LPV/r (Care) Condition":
  [Condition: Concepts."LPV/r - HIV.D.DE141"]
define "LPV/r (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."LPV/r - HIV.D.DE141"
/* End of LPV/r (Care) */

/*
@dataElement: HIV.D.DE142 - DRV/r
@activity: HIV.D8 Capture or update client history
@description: Treated with darunavir/ritonavir (DRV/r)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DRV/r (Care)":
  exists "DRV/r (Care) Condition"
    or exists "DRV/r (Care) Observation"
define "DRV/r (Care) Condition":
  [Condition: Concepts."DRV/r - HIV.D.DE142"]
define "DRV/r (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."DRV/r - HIV.D.DE142"
/* End of DRV/r (Care) */

/*
@dataElement: HIV.D.DE143 - RTV
@activity: HIV.D8 Capture or update client history
@description: Treated with ritonavir (RTV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RTV (Care)":
  exists "RTV (Care) Condition"
    or exists "RTV (Care) Observation"
define "RTV (Care) Condition":
  [Condition: Concepts."RTV"]
define "RTV (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."RTV"
/* End of RTV (Care) */

/*
@dataElement: HIV.D.DE144 - DTG
@activity: HIV.D8 Capture or update client history
@description: Treated with dolutegravir (DTG)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DTG (Care)":
  exists "DTG (Care) Condition"
    or exists "DTG (Care) Observation"
define "DTG (Care) Condition":
  [Condition: Concepts."DTG - HIV.D.DE144"]
define "DTG (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."DTG - HIV.D.DE144"
/* End of DTG (Care) */

/*
@dataElement: HIV.D.DE145 - RAL
@activity: HIV.D8 Capture or update client history
@description: Treated with raltegravir (RAL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "RAL (Care)":
  exists "RAL (Care) Condition"
    or exists "RAL (Care) Observation"
define "RAL (Care) Condition":
  [Condition: Concepts."RAL - HIV.D.DE145"]
define "RAL (Care) Observation":
  "ART regimen composition (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."RAL - HIV.D.DE145"
/* End of RAL (Care) */

/*
@dataElement: HIV.D.DE152 - Prevention services offered and referrals
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer for prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention services offered and referrals (Care)":
  exists "Prevention services offered and referrals (Care) Observation"
define "Prevention services offered and referrals (Care) Observation":
  [Observation: Concepts."Prevention services offered and referrals - HIV.D.DE152"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Prevention services offered and referrals (Care) */

/*
@dataElement: HIV.D.DE153 - Offer male and female condoms and condom-compatible lubricants
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Offer male and female condoms and condom-compatible lubricants
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer male and female condoms and condom-compatible lubricants (Care)":
  exists "Offer male and female condoms and condom-compatible lubricants (Care) Condition"
    or exists "Offer male and female condoms and condom-compatible lubricants (Care) Observation"
define "Offer male and female condoms and condom-compatible lubricants (Care) Condition":
  [Condition: Concepts."Offer male and female condoms and condom-compatible lubricants - HIV.D.DE153"]
define "Offer male and female condoms and condom-compatible lubricants (Care) Observation":
  "Prevention services offered and referrals (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Offer male and female condoms and condom-compatible lubricants - HIV.D.DE153"
/* End of Offer male and female condoms and condom-compatible lubricants (Care) */

/*
@dataElement: HIV.D.DE154 - Harm reduction for people who inject drugs
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer people who inject drugs to harm reduction services (needle and syringe programmes, opioid substitution therapy, other drug-dependence treatment and opioid overdose prevention and management)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Harm reduction for people who inject drugs (Care)":
  exists "Harm reduction for people who inject drugs (Care) Condition"
    or exists "Harm reduction for people who inject drugs (Care) Observation"
define "Harm reduction for people who inject drugs (Care) Condition":
  [Condition: Concepts."Harm reduction for people who inject drugs - HIV.D.DE154"]
define "Harm reduction for people who inject drugs (Care) Observation":
  "Prevention services offered and referrals (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Harm reduction for people who inject drugs - HIV.D.DE154"
/* End of Harm reduction for people who inject drugs (Care) */

/*
@dataElement: HIV.D.DE155 - Behavioural interventions to support risk reduction
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer to services for behavioural interventions to support risk reduction, particularly for people with HIV and members of key populations
*/
// TODO: Replace placeholder with relevant CQL logic
define "Behavioural interventions to support risk reduction (Care)":
  exists "Behavioural interventions to support risk reduction (Care) Condition"
    or exists "Behavioural interventions to support risk reduction (Care) Observation"
define "Behavioural interventions to support risk reduction (Care) Condition":
  [Condition: Concepts."Behavioural interventions to support risk reduction - HIV.D.DE155"]
define "Behavioural interventions to support risk reduction (Care) Observation":
  "Prevention services offered and referrals (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Behavioural interventions to support risk reduction - HIV.D.DE155"
/* End of Behavioural interventions to support risk reduction (Care) */

/*
@dataElement: HIV.D.DE156 - Sexual and reproductive health integrated services
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer or refer to sexual and reproductive health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sexual and reproductive health integrated services (Care)":
  exists "Sexual and reproductive health integrated services (Care) Observation"
define "Sexual and reproductive health integrated services (Care) Observation":
  [Observation: Concepts."Sexual and reproductive health integrated services - HIV.D.DE156"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Sexual and reproductive health integrated services (Care) */

/*
@dataElement: HIV.D.DE157 - Contraception and family planning
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer contraception and family planning services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Contraception and family planning (Care)":
  exists "Contraception and family planning (Care) Condition"
    or exists "Contraception and family planning (Care) Observation"
define "Contraception and family planning (Care) Condition":
  [Condition: Concepts."Contraception and family planning - HIV.D.DE157"]
define "Contraception and family planning (Care) Observation":
  "Sexual and reproductive health integrated services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Contraception and family planning - HIV.D.DE157"
/* End of Contraception and family planning (Care) */

/*
@dataElement: HIV.D.DE158 - Check pregnancy status
@activity: HIV.D12 Determine recommended screenings and tests
@description: Check woman's pregnancy status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Check pregnancy status (Care)":
  exists "Check pregnancy status (Care) Condition"
    or exists "Check pregnancy status (Care) Observation"
define "Check pregnancy status (Care) Condition":
  [Condition: Concepts."Check pregnancy status - HIV.D.DE158"]
define "Check pregnancy status (Care) Observation":
  "Sexual and reproductive health integrated services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Check pregnancy status - HIV.D.DE158"
/* End of Check pregnancy status (Care) */

/*
@dataElement: HIV.D.DE159 - Prevention of mother-to-child transmission
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer prevention of mother-to-child transmission services (counselling)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prevention of mother-to-child transmission (Care)":
  exists "Prevention of mother-to-child transmission (Care) Condition"
    or exists "Prevention of mother-to-child transmission (Care) Observation"
define "Prevention of mother-to-child transmission (Care) Condition":
  [Condition: Concepts."Prevention of mother-to-child transmission"]
define "Prevention of mother-to-child transmission (Care) Observation":
  "Sexual and reproductive health integrated services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Prevention of mother-to-child transmission"
/* End of Prevention of mother-to-child transmission (Care) */

/*
@dataElement: HIV.D.DE160 - STI testing and treatment
@activity: HIV.D12 Determine recommended screenings and tests
@description: Offer STI testing and treatment services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI testing and treatment (Care)":
  exists "STI testing and treatment (Care) Condition"
    or exists "STI testing and treatment (Care) Observation"
define "STI testing and treatment (Care) Condition":
  [Condition: Concepts."STI testing and treatment - HIV.D.DE160"]
define "STI testing and treatment (Care) Observation":
  "Sexual and reproductive health integrated services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."STI testing and treatment - HIV.D.DE160"
/* End of STI testing and treatment (Care) */

/*
@dataElement: HIV.D.DE161 - HBsAg test date
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date client was tested for hepatitis B virus (HBV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test date (Care)":
  [Observation: Concepts."HBsAg test date - HIV.D.DE161"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HBsAg test date (Care) Value":
  "HBsAg test date (Care)" O
  return O.value
/* End of HBsAg test date (Care) */

/*
@dataElement: HIV.D.DE162 - HBsAg test result
@activity: HIV.D12 Determine recommended screenings and tests
@description: Hepatitis B virus test result (HBsAg)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test result (Care)":
  exists "HBsAg test result (Care) Observation"
define "HBsAg test result (Care) Observation":
  [Observation: Concepts."HBsAg test result - HIV.D.DE162"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HBsAg test result (Care) */

/*
@dataElement: HIV.D.DE163 - Positive
@activity: HIV.D12 Determine recommended screenings and tests
@description: HBsAg test result was positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Care|DDE163)":
  exists "Positive (Care|DDE163) Condition"
    or exists "Positive (Care|DDE163) Observation"
define "Positive (Care|DDE163) Condition":
  [Condition: Concepts."Positive - HIV.D.DE163"]
define "Positive (Care|DDE163) Observation":
  "HBsAg test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.D.DE163"
/* End of Positive (Care|DDE163) */

/*
@dataElement: HIV.D.DE164 - Negative
@activity: HIV.D12 Determine recommended screenings and tests
@description: HBsAg test result was negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Care|DDE164)":
  exists "Negative (Care|DDE164) Condition"
    or exists "Negative (Care|DDE164) Observation"
define "Negative (Care|DDE164) Condition":
  [Condition: Concepts."Negative - HIV.D.DE164"]
define "Negative (Care|DDE164) Observation":
  "HBsAg test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.D.DE164"
/* End of Negative (Care|DDE164) */

/*
@dataElement: HIV.D.DE165 - Indeterminate
@activity: HIV.D12 Determine recommended screenings and tests
@description: HBsAg test result was indeterminate
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (Care|DDE165)":
  exists "Indeterminate (Care|DDE165) Condition"
    or exists "Indeterminate (Care|DDE165) Observation"
define "Indeterminate (Care|DDE165) Condition":
  [Condition: Concepts."Indeterminate - HIV.D.DE165"]
define "Indeterminate (Care|DDE165) Observation":
  "HBsAg test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Indeterminate - HIV.D.DE165"
/* End of Indeterminate (Care|DDE165) */

/*
@dataElement: HIV.D.DE167 - HBV treatment TDF start date
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date when client started treatment (TDF) for hepatitis B virus (HBV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBV treatment TDF start date (Care)":
  [Observation: Concepts."HBV treatment TDF start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HBV treatment TDF start date (Care) Value":
  "HBV treatment TDF start date (Care)" O
  return O.value
/* End of HBV treatment TDF start date (Care) */

/*
@dataElement: HIV.D.DE169 - HCV test date
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date client was tested for hepatitis C virus (HCV antibody, HCV RNA or HCV core antigen)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV test date (Care)":
  [Observation: Concepts."HCV test date - HIV.D.DE169"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HCV test date (Care) Value":
  "HCV test date (Care)" O
  return O.value
/* End of HCV test date (Care) */

/*
@dataElement: HIV.D.DE170 - HCV test result
@activity: HIV.D12 Determine recommended screenings and tests
@description: Hepatitis C virus test result (HCV antibody, HCV RNA or HCV core antigen)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV test result (Care)":
  exists "HCV test result (Care) Observation"
define "HCV test result (Care) Observation":
  [Observation: Concepts."HCV test result - HIV.D.DE170"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HCV test result (Care) */

/*
@dataElement: HIV.D.DE171 - Positive
@activity: HIV.D12 Determine recommended screenings and tests
@description: HCV test result was positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Care|DDE171)":
  exists "Positive (Care|DDE171) Condition"
    or exists "Positive (Care|DDE171) Observation"
define "Positive (Care|DDE171) Condition":
  [Condition: Concepts."Positive - HIV.D.DE171"]
define "Positive (Care|DDE171) Observation":
  "HCV test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.D.DE171"
/* End of Positive (Care|DDE171) */

/*
@dataElement: HIV.D.DE172 - Negative
@activity: HIV.D12 Determine recommended screenings and tests
@description: HCV test result was negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Care|DDE172)":
  exists "Negative (Care|DDE172) Condition"
    or exists "Negative (Care|DDE172) Observation"
define "Negative (Care|DDE172) Condition":
  [Condition: Concepts."Negative - HIV.D.DE172"]
define "Negative (Care|DDE172) Observation":
  "HCV test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.D.DE172"
/* End of Negative (Care|DDE172) */

/*
@dataElement: HIV.D.DE173 - Indeterminate
@activity: HIV.D12 Determine recommended screenings and tests
@description: HCV test result was indeterminate
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (Care|DDE173)":
  exists "Indeterminate (Care|DDE173) Condition"
    or exists "Indeterminate (Care|DDE173) Observation"
define "Indeterminate (Care|DDE173) Condition":
  [Condition: Concepts."Indeterminate - HIV.D.DE173"]
define "Indeterminate (Care|DDE173) Observation":
  "HCV test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Indeterminate - HIV.D.DE173"
/* End of Indeterminate (Care|DDE173) */

/*
@dataElement: HIV.D.DE175 - HCV treatment start date
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date when client started treatment for hepatitis C virus (HCV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV treatment start date (Care)":
  [Observation: Concepts."HCV treatment start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HCV treatment start date (Care) Value":
  "HCV treatment start date (Care)" O
  return O.value
/* End of HCV treatment start date (Care) */

/*
@dataElement: HIV.D.DE176 - HCV treatment completion date
@activity: HIV.D12 Determine recommended screenings and tests
@description: Date when client completed treatment for hepatitis C virus (HCV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV treatment completion date (Care)":
  [Observation: Concepts."HCV treatment completion date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HCV treatment completion date (Care) Value":
  "HCV treatment completion date (Care)" O
  return O.value
/* End of HCV treatment completion date (Care) */

/*
@dataElement: HIV.D.DE178 - HCV viral load test date
@activity: HIV.D12 Determine recommended screenings and tests
@description: Hepatitis C viral load test date
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test date (Care)":
  [Observation: Concepts."HCV viral load test date - HIV.D.DE178"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HCV viral load test date (Care) Value":
  "HCV viral load test date (Care)" O
  return O.value
/* End of HCV viral load test date (Care) */

/*
@dataElement: HIV.D.DE179 - HCV viral load test result
@activity: HIV.D12 Determine recommended screenings and tests
@description: Hepatitis C viral load test result (qualitative)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test result (Care)":
  exists "HCV viral load test result (Care) Observation"
define "HCV viral load test result (Care) Observation":
  [Observation: Concepts."HCV viral load test result - HIV.D.DE179"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HCV viral load test result (Care) */

/*
@dataElement: HIV.D.DE180 - Detected
@activity: HIV.D12 Determine recommended screenings and tests
@description: HCV was detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Detected (Care)":
  exists "Detected (Care) Condition"
    or exists "Detected (Care) Observation"
define "Detected (Care) Condition":
  [Condition: Concepts."Detected - HIV.D.DE180"]
define "Detected (Care) Observation":
  "HCV viral load test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Detected - HIV.D.DE180"
/* End of Detected (Care) */

/*
@dataElement: HIV.D.DE181 - Not detected
@activity: HIV.D12 Determine recommended screenings and tests
@description: HCV was not detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not detected (Care)":
  exists "Not detected (Care) Condition"
    or exists "Not detected (Care) Observation"
define "Not detected (Care) Condition":
  [Condition: Concepts."Not detected - HIV.D.DE181"]
define "Not detected (Care) Observation":
  "HCV viral load test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Not detected - HIV.D.DE181"
/* End of Not detected (Care) */

/*
@dataElement: HIV.D.DE182 - HCV medicine type
@activity: HIV.D12 Determine recommended screenings and tests
@description: Type of medicine client is prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV medicine type (Care)":
  exists "HCV medicine type (Care) Observation"
define "HCV medicine type (Care) Observation":
  [Observation: Concepts."HCV medicine type"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HCV medicine type (Care) */

/*
@dataElement: HIV.D.DE183 - Interferon
@activity: HIV.D12 Determine recommended screenings and tests
@description: Client is prescribed interferon
*/
// TODO: Replace placeholder with relevant CQL logic
define "Interferon (Care)":
  exists "Interferon (Care) Condition"
    or exists "Interferon (Care) Observation"
define "Interferon (Care) Condition":
  [Condition: Concepts."Interferon"]
define "Interferon (Care) Observation":
  "HCV medicine type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Interferon"
/* End of Interferon (Care) */

/*
@dataElement: HIV.D.DE184 - Direct acting antivirals
@activity: HIV.D12 Determine recommended screenings and tests
@description: Client is prescribed direct acting antivirals
*/
// TODO: Replace placeholder with relevant CQL logic
define "Direct acting antivirals (Care)":
  exists "Direct acting antivirals (Care) Condition"
    or exists "Direct acting antivirals (Care) Observation"
define "Direct acting antivirals (Care) Condition":
  [Condition: Concepts."Direct acting antivirals"]
define "Direct acting antivirals (Care) Observation":
  "HCV medicine type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Direct acting antivirals"
/* End of Direct acting antivirals (Care) */

/*
@dataElement: HIV.D.DE185 - Currently on TDF-based ART
@activity: HIV.D12 Determine recommended screenings and tests
@description: Client is currently on TDF-based ART regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently on TDF-based ART (Care)":
  exists "Currently on TDF-based ART (Care) Observation"
define "Currently on TDF-based ART (Care) Observation":
  [Observation: Concepts."Currently on TDF-based ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Currently on TDF-based ART (Care) */

/*
@dataElement: HIV.D.DE186 - HIV clinical stage
@activity: HIV.D8 Capture or update client history
@description: WHO clinical stage of client based on signs and symptoms. WHO clinical staging is a way to categorize HIV disease severity based on new or recurrent clinical events. There are 4 WHO clinical stages that range from mild symptoms (WHO clinical stage 1) to severe symptoms (WHO clinical stage 4).
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV clinical stage (Care)":
  exists "HIV clinical stage (Care) Observation"
define "HIV clinical stage (Care) Observation":
  [Observation: Concepts."HIV clinical stage - HIV.D.DE186"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV clinical stage (Care) */

/*
@dataElement: HIV.D.DE187 - WHO HIV clinical stage 1
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 1, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 1 (Care)":
  exists "WHO HIV clinical stage 1 (Care) Condition"
    or exists "WHO HIV clinical stage 1 (Care) Observation"
define "WHO HIV clinical stage 1 (Care) Condition":
  [Condition: Concepts."WHO HIV clinical stage 1"]
define "WHO HIV clinical stage 1 (Care) Observation":
  "HIV clinical stage (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."WHO HIV clinical stage 1"
/* End of WHO HIV clinical stage 1 (Care) */

/*
@dataElement: HIV.D.DE188 - WHO HIV clinical stage 2
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 2, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 2 (Care)":
  exists "WHO HIV clinical stage 2 (Care) Condition"
    or exists "WHO HIV clinical stage 2 (Care) Observation"
define "WHO HIV clinical stage 2 (Care) Condition":
  [Condition: Concepts."WHO HIV clinical stage 2"]
define "WHO HIV clinical stage 2 (Care) Observation":
  "HIV clinical stage (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."WHO HIV clinical stage 2"
/* End of WHO HIV clinical stage 2 (Care) */

/*
@dataElement: HIV.D.DE189 - WHO HIV clinical stage 3
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 3, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 3 (Care)":
  exists "WHO HIV clinical stage 3 (Care) Condition"
    or exists "WHO HIV clinical stage 3 (Care) Observation"
define "WHO HIV clinical stage 3 (Care) Condition":
  [Condition: Concepts."WHO HIV clinical stage 3"]
define "WHO HIV clinical stage 3 (Care) Observation":
  "HIV clinical stage (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."WHO HIV clinical stage 3"
/* End of WHO HIV clinical stage 3 (Care) */

/*
@dataElement: HIV.D.DE190 - WHO HIV clinical stage 4
@activity: HIV.D8 Capture or update client history
@description: Client is currently assessed to be at a clinical stage 4, based on clinical assessment and diagnostics
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage 4 (Care)":
  exists "WHO HIV clinical stage 4 (Care) Condition"
    or exists "WHO HIV clinical stage 4 (Care) Observation"
define "WHO HIV clinical stage 4 (Care) Condition":
  [Condition: Concepts."WHO HIV clinical stage 4"]
define "WHO HIV clinical stage 4 (Care) Observation":
  "HIV clinical stage (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."WHO HIV clinical stage 4"
/* End of WHO HIV clinical stage 4 (Care) */

/*
@dataElement: HIV.D.DE193 - Date viral load test results received by client
@activity: HIV.D10 Counsel returning client
@description: The date on which the client received results from viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date viral load test results received by client (Care|DDE193)":
  [Observation: Concepts."Date viral load test results received by client - HIV.D.DE193"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date viral load test results received by client (Care|DDE193) Value":
  "Date viral load test results received by client (Care|DDE193)" O
  return O.value
/* End of Date viral load test results received by client (Care|DDE193) */

/*
@dataElement: HIV.D.DE194 - Date of viral load sample collection
@activity: HIV.D10 Counsel returning client
@description: Date and time when the sample was collected to test the client's HIV viral load
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of viral load sample collection (Care)":
  [Observation: Concepts."Date of viral load sample collection - HIV.D.DE194"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of viral load sample collection (Care) Value":
  "Date of viral load sample collection (Care)" O
  return O.value
/* End of Date of viral load sample collection (Care) */

/*
@dataElement: HIV.D.DE195 - Date of scheduled review of viral load test results
@activity: HIV.D10 Counsel returning client
@description: Expected date when client's viral load test results will be returned and reviewed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of scheduled review of viral load test results (Care)":
  [Observation: Concepts."Date of scheduled review of viral load test results"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of scheduled review of viral load test results (Care) Value":
  "Date of scheduled review of viral load test results (Care)" O
  return O.value
/* End of Date of scheduled review of viral load test results (Care) */

/*
@dataElement: HIV.D.DE217 - Reason ART stopped
@activity: HIV.D10 Counsel returning client
@description: Reason client intentionally stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason ART stopped (Care)":
  exists "Reason ART stopped (Care) Observation"
define "Reason ART stopped (Care) Observation":
  [Observation: Concepts."Reason ART stopped - HIV.D.DE217"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Reason ART stopped (Care) */

/*
@dataElement: HIV.D.DE218 - Toxicity/side effects
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of toxicity/side effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Toxicity/side effects (Care|DDE218)":
  exists "Toxicity/side effects (Care|DDE218) Condition"
    or exists "Toxicity/side effects (Care|DDE218) Observation"
define "Toxicity/side effects (Care|DDE218) Condition":
  [Condition: Concepts."Toxicity/side effects - HIV.D.DE218"]
define "Toxicity/side effects (Care|DDE218) Observation":
  "Reason ART stopped (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Toxicity/side effects - HIV.D.DE218"
/* End of Toxicity/side effects (Care|DDE218) */

/*
@dataElement: HIV.D.DE219 - Severe illness, hospitalization
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of severe illness, hospitalization
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe illness, hospitalization (Care)":
  exists "Severe illness, hospitalization (Care) Condition"
    or exists "Severe illness, hospitalization (Care) Observation"
define "Severe illness, hospitalization (Care) Condition":
  [Condition: Concepts."Severe illness, hospitalization - HIV.D.DE219"]
define "Severe illness, hospitalization (Care) Observation":
  "Reason ART stopped (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Severe illness, hospitalization - HIV.D.DE219"
/* End of Severe illness, hospitalization (Care) */

/*
@dataElement: HIV.D.DE220 - Drugs out of stock
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because drugs were out of stock
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drugs out of stock (Care)":
  exists "Drugs out of stock (Care) Condition"
    or exists "Drugs out of stock (Care) Observation"
define "Drugs out of stock (Care) Condition":
  [Condition: Concepts."Drugs out of stock"]
define "Drugs out of stock (Care) Observation":
  "Reason ART stopped (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Drugs out of stock"
/* End of Drugs out of stock (Care) */

/*
@dataElement: HIV.D.DE221 - Client lacks finances
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of lack of finances
*/
// TODO: Replace placeholder with relevant CQL logic
define "Client lacks finances (Care)":
  exists "Client lacks finances (Care) Condition"
    or exists "Client lacks finances (Care) Observation"
define "Client lacks finances (Care) Condition":
  [Condition: Concepts."Client lacks finances"]
define "Client lacks finances (Care) Observation":
  "Reason ART stopped (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Client lacks finances"
/* End of Client lacks finances (Care) */

/*
@dataElement: HIV.D.DE222 - Excluded HIV infection in infant
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because HIV infection in infant was excluded
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excluded HIV infection in infant (Care)":
  exists "Excluded HIV infection in infant (Care) Condition"
    or exists "Excluded HIV infection in infant (Care) Observation"
define "Excluded HIV infection in infant (Care) Condition":
  [Condition: Concepts."Excluded HIV infection in infant - HIV.D.DE222"]
define "Excluded HIV infection in infant (Care) Observation":
  "Reason ART stopped (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Excluded HIV infection in infant - HIV.D.DE222"
/* End of Excluded HIV infection in infant (Care) */

/*
@dataElement: HIV.D.DE223 - Other reason for stopping ART
@activity: HIV.D10 Counsel returning client
@description: Client stopped ART because of other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other reason for stopping ART (Care)":
  exists "Other reason for stopping ART (Care) Condition"
    or exists "Other reason for stopping ART (Care) Observation"
define "Other reason for stopping ART (Care) Condition":
  [Condition: Concepts."Other reason for stopping ART - HIV.D.DE223"]
define "Other reason for stopping ART (Care) Observation":
  "Reason ART stopped (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other reason for stopping ART - HIV.D.DE223"
/* End of Other reason for stopping ART (Care) */

/*
@dataElement: HIV.D.DE225 - Treatment failure
@activity: HIV.D17 Check for signs of treatment failure
@description: ART treatment failure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Treatment failure (Care)":
  exists "Treatment failure (Care) Observation"
define "Treatment failure (Care) Observation":
  [Observation: Concepts."Treatment failure"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Treatment failure (Care) */

/*
@dataElement: HIV.D.DE226 - Clinical failure
@activity: HIV.D17 Check for signs of treatment failure
@description: New or recurrent clinical event indicating severe immunodeficiency in adults or advanced or severe immunodeficiency in children
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical failure (Care)":
  exists "Clinical failure (Care) Condition"
    or exists "Clinical failure (Care) Observation"
define "Clinical failure (Care) Condition":
  [Condition: Concepts."Clinical failure"]
define "Clinical failure (Care) Observation":
  "Treatment failure (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Clinical failure"
/* End of Clinical failure (Care) */

/*
@dataElement: HIV.D.DE227 - Immunological failure
@activity: HIV.D17 Check for signs of treatment failure
@description: CD4 count at or below 250 cells/mm3 following clinical failure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Immunological failure (Care)":
  exists "Immunological failure (Care) Condition"
    or exists "Immunological failure (Care) Observation"
define "Immunological failure (Care) Condition":
  [Condition: Concepts."Immunological failure"]
define "Immunological failure (Care) Observation":
  "Treatment failure (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Immunological failure"
/* End of Immunological failure (Care) */

/*
@dataElement: HIV.D.DE228 - Virological failure
@activity: HIV.D17 Check for signs of treatment failure
@description: The inability to achieve or maintain viral suppression below a certain threshold indicated by viral load above 1000 copies/mL based on two consecutive viral load measurements in 3 months, with adherence support following the first viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Virological failure (Care)":
  exists "Virological failure (Care) Condition"
    or exists "Virological failure (Care) Observation"
define "Virological failure (Care) Condition":
  [Condition: Concepts."Virological failure"]
define "Virological failure (Care) Observation":
  "Treatment failure (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Virological failure"
/* End of Virological failure (Care) */

/*
@dataElement: HIV.D.DE259 - Risk factors, comorbidities and coinfections signs and symptoms
@activity: HIV.D14 Prevent, screen, and manage comorbidities and coinfections
@description: Signs and symptoms of opportunistic infections or other comorbidities experienced by client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Risk factors, comorbidities and coinfections signs and symptoms (Care)":
  exists "Risk factors, comorbidities and coinfections signs and symptoms (Care) Observation"
define "Risk factors, comorbidities and coinfections signs and symptoms (Care) Observation":
  [Observation: Concepts."Risk factors, comorbidities and coinfections signs and symptoms"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Risk factors, comorbidities and coinfections signs and symptoms (Care) */

/*
@dataElement: HIV.D.DE282 - Presumptive TB
@activity: HIV.D14 Prevent, screen, and manage comorbidities and coinfections
@description: Client's comorbidities or coinfections or symptoms of these include presumptive TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Presumptive TB (Care)":
  exists "Presumptive TB (Care) Condition"
    or exists "Presumptive TB (Care) Observation"
define "Presumptive TB (Care) Condition":
  [Condition: Concepts."Presumptive TB - HIV.D.DE282"]
define "Presumptive TB (Care) Observation":
  "Risk factors, comorbidities and coinfections signs and symptoms (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Presumptive TB - HIV.D.DE282"
/* End of Presumptive TB (Care) */

/*
@dataElement: HIV.D.DE289 - WHO HIV clinical stage condition or symptom
@activity: HIV.D15 Determine clinical stage of HIV
@description: New or recurrent clinical events used to categorize HIV disease severity based at baseline and follow up
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage condition or symptom (Care)":
  exists "WHO HIV clinical stage condition or symptom (Care) Observation"
define "WHO HIV clinical stage condition or symptom (Care) Observation":
  [Observation: Concepts."WHO HIV clinical stage condition or symptom - HIV.D.DE289"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of WHO HIV clinical stage condition or symptom (Care) */

/*
@dataElement: HIV.D.DE290 - Asymptomatic
@activity: HIV.D15 Determine clinical stage of HIV
@description: No HIV-related symptoms reported and no clinical signs on examination
*/
// TODO: Replace placeholder with relevant CQL logic
define "Asymptomatic (Care)":
  exists "Asymptomatic (Care) Condition"
    or exists "Asymptomatic (Care) Observation"
define "Asymptomatic (Care) Condition":
  [Condition: Concepts."Asymptomatic"]
define "Asymptomatic (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Asymptomatic"
/* End of Asymptomatic (Care) */

/*
@dataElement: HIV.D.DE291 - Persistent generalized lymphadenopathy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Persistent enlarged lymph nodes >1 cm at two or more non-contiguous sites (excluding inguinal) without known cause
*/
// TODO: Replace placeholder with relevant CQL logic
define "Persistent generalized lymphadenopathy (Care)":
  exists "Persistent generalized lymphadenopathy (Care) Condition"
    or exists "Persistent generalized lymphadenopathy (Care) Observation"
define "Persistent generalized lymphadenopathy (Care) Condition":
  [Condition: Concepts."Persistent generalized lymphadenopathy"]
define "Persistent generalized lymphadenopathy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Persistent generalized lymphadenopathy"
/* End of Persistent generalized lymphadenopathy (Care) */

/*
@dataElement: HIV.D.DE292 - Moderate unexplained weight loss
@activity: HIV.D15 Determine clinical stage of HIV
@description: Moderate unexplained weight loss (<10% of presumed or measured body weight)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Moderate unexplained weight loss (Care)":
  exists "Moderate unexplained weight loss (Care) Condition"
    or exists "Moderate unexplained weight loss (Care) Observation"
define "Moderate unexplained weight loss (Care) Condition":
  [Condition: Concepts."Moderate unexplained weight loss"]
define "Moderate unexplained weight loss (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Moderate unexplained weight loss"
/* End of Moderate unexplained weight loss (Care) */

/*
@dataElement: HIV.D.DE293 - Recurrent respiratory tract infections
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent respiratory tract infections including sinusitis, tonsillitis, otitis media or pharyngitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent respiratory tract infections (Care)":
  exists "Recurrent respiratory tract infections (Care) Condition"
    or exists "Recurrent respiratory tract infections (Care) Observation"
define "Recurrent respiratory tract infections (Care) Condition":
  [Condition: Concepts."Recurrent respiratory tract infections"]
define "Recurrent respiratory tract infections (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Recurrent respiratory tract infections"
/* End of Recurrent respiratory tract infections (Care) */

/*
@dataElement: HIV.D.DE294 - Unexplained persistent hepatosplenomegaly
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent hepatosplenomegaly
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent hepatosplenomegaly (Care)":
  exists "Unexplained persistent hepatosplenomegaly (Care) Condition"
    or exists "Unexplained persistent hepatosplenomegaly (Care) Observation"
define "Unexplained persistent hepatosplenomegaly (Care) Condition":
  [Condition: Concepts."Unexplained persistent hepatosplenomegaly"]
define "Unexplained persistent hepatosplenomegaly (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained persistent hepatosplenomegaly"
/* End of Unexplained persistent hepatosplenomegaly (Care) */

/*
@dataElement: HIV.D.DE295 - Herpes zoster
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include herpes zoster
*/
// TODO: Replace placeholder with relevant CQL logic
define "Herpes zoster (Care)":
  exists "Herpes zoster (Care) Condition"
    or exists "Herpes zoster (Care) Observation"
define "Herpes zoster (Care) Condition":
  [Condition: Concepts."Herpes zoster"]
define "Herpes zoster (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Herpes zoster"
/* End of Herpes zoster (Care) */

/*
@dataElement: HIV.D.DE296 - Angular cheilitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include angular cheilitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Angular cheilitis (Care)":
  exists "Angular cheilitis (Care) Condition"
    or exists "Angular cheilitis (Care) Observation"
define "Angular cheilitis (Care) Condition":
  [Condition: Concepts."Angular cheilitis"]
define "Angular cheilitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Angular cheilitis"
/* End of Angular cheilitis (Care) */

/*
@dataElement: HIV.D.DE297 - Linear gingival erythema
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include linear gingival erythema
*/
// TODO: Replace placeholder with relevant CQL logic
define "Linear gingival erythema (Care)":
  exists "Linear gingival erythema (Care) Condition"
    or exists "Linear gingival erythema (Care) Observation"
define "Linear gingival erythema (Care) Condition":
  [Condition: Concepts."Linear gingival erythema"]
define "Linear gingival erythema (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Linear gingival erythema"
/* End of Linear gingival erythema (Care) */

/*
@dataElement: HIV.D.DE298 - Recurrent oral ulceration
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent oral ulceration
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent oral ulceration (Care)":
  exists "Recurrent oral ulceration (Care) Condition"
    or exists "Recurrent oral ulceration (Care) Observation"
define "Recurrent oral ulceration (Care) Condition":
  [Condition: Concepts."Recurrent oral ulceration"]
define "Recurrent oral ulceration (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Recurrent oral ulceration"
/* End of Recurrent oral ulceration (Care) */

/*
@dataElement: HIV.D.DE299 - Papular pruritic eruption
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include papular pruritic eruption
*/
// TODO: Replace placeholder with relevant CQL logic
define "Papular pruritic eruption (Care)":
  exists "Papular pruritic eruption (Care) Condition"
    or exists "Papular pruritic eruption (Care) Observation"
define "Papular pruritic eruption (Care) Condition":
  [Condition: Concepts."Papular pruritic eruption"]
define "Papular pruritic eruption (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Papular pruritic eruption"
/* End of Papular pruritic eruption (Care) */

/*
@dataElement: HIV.D.DE300 - Fungal nail infections
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include fungal nail infections
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fungal nail infections (Care)":
  exists "Fungal nail infections (Care) Condition"
    or exists "Fungal nail infections (Care) Observation"
define "Fungal nail infections (Care) Condition":
  [Condition: Concepts."Fungal nail infections"]
define "Fungal nail infections (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Fungal nail infections"
/* End of Fungal nail infections (Care) */

/*
@dataElement: HIV.D.DE301 - Seborrhoeic dermatitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include seborrhoeic dermatitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Seborrhoeic dermatitis (Care)":
  exists "Seborrhoeic dermatitis (Care) Condition"
    or exists "Seborrhoeic dermatitis (Care) Observation"
define "Seborrhoeic dermatitis (Care) Condition":
  [Condition: Concepts."Seborrhoeic dermatitis"]
define "Seborrhoeic dermatitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Seborrhoeic dermatitis"
/* End of Seborrhoeic dermatitis (Care) */

/*
@dataElement: HIV.D.DE302 - Extensive wart virus infection
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extensive wart virus infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extensive wart virus infection (Care)":
  exists "Extensive wart virus infection (Care) Condition"
    or exists "Extensive wart virus infection (Care) Observation"
define "Extensive wart virus infection (Care) Condition":
  [Condition: Concepts."Extensive wart virus infection"]
define "Extensive wart virus infection (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Extensive wart virus infection"
/* End of Extensive wart virus infection (Care) */

/*
@dataElement: HIV.D.DE303 - Extensive molluscum contagiosum
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extensive molluscum contagiosum
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extensive molluscum contagiosum (Care)":
  exists "Extensive molluscum contagiosum (Care) Condition"
    or exists "Extensive molluscum contagiosum (Care) Observation"
define "Extensive molluscum contagiosum (Care) Condition":
  [Condition: Concepts."Extensive molluscum contagiosum"]
define "Extensive molluscum contagiosum (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Extensive molluscum contagiosum"
/* End of Extensive molluscum contagiosum (Care) */

/*
@dataElement: HIV.D.DE304 - Unexplained persistent parotid enlargement
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent parotid enlargement
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent parotid enlargement (Care)":
  exists "Unexplained persistent parotid enlargement (Care) Condition"
    or exists "Unexplained persistent parotid enlargement (Care) Observation"
define "Unexplained persistent parotid enlargement (Care) Condition":
  [Condition: Concepts."Unexplained persistent parotid enlargement"]
define "Unexplained persistent parotid enlargement (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained persistent parotid enlargement"
/* End of Unexplained persistent parotid enlargement (Care) */

/*
@dataElement: HIV.D.DE305 - Unexplained severe weight loss in adults
@activity: HIV.D15 Determine clinical stage of HIV
@description: Unexplained severe weight loss (>10% of presumed or measured body weight)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained severe weight loss in adults (Care)":
  exists "Unexplained severe weight loss in adults (Care) Condition"
    or exists "Unexplained severe weight loss in adults (Care) Observation"
define "Unexplained severe weight loss in adults (Care) Condition":
  [Condition: Concepts."Unexplained severe weight loss in adults"]
define "Unexplained severe weight loss in adults (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained severe weight loss in adults"
/* End of Unexplained severe weight loss in adults (Care) */

/*
@dataElement: HIV.D.DE306 - Unexplained moderate malnutrition not adequately responding to standard therapy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Defined as weight-for-height < - 2 z-score or mid-upper arm circumference 115 mm to <125 mm. For children younger than five years of age: stunting is defined as severe acute malnutrition - either weight for height < -3 z-score or mid-upper arm circumference <115 mm or the presence of oedema.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained moderate malnutrition not adequately responding to standard therapy (Care)":
  exists "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Condition"
    or exists "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Observation"
define "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Condition":
  [Condition: Concepts."Unexplained moderate malnutrition not adequately responding to standard therapy"]
define "Unexplained moderate malnutrition not adequately responding to standard therapy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained moderate malnutrition not adequately responding to standard therapy"
/* End of Unexplained moderate malnutrition not adequately responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE307 - Unexplained chronic diarrhoea for longer than 1 month
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained chronic diarrhoea for longer than 1 month
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained chronic diarrhoea for longer than 1 month (Care)":
  exists "Unexplained chronic diarrhoea for longer than 1 month (Care) Condition"
    or exists "Unexplained chronic diarrhoea for longer than 1 month (Care) Observation"
define "Unexplained chronic diarrhoea for longer than 1 month (Care) Condition":
  [Condition: Concepts."Unexplained chronic diarrhoea for longer than 1 month"]
define "Unexplained chronic diarrhoea for longer than 1 month (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained chronic diarrhoea for longer than 1 month"
/* End of Unexplained chronic diarrhoea for longer than 1 month (Care) */

/*
@dataElement: HIV.D.DE308 - Unexplained persistent diarrhoea 14 days or more
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent diarrhoea (14 days or more)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent diarrhoea 14 days or more (Care)":
  exists "Unexplained persistent diarrhoea 14 days or more (Care) Condition"
    or exists "Unexplained persistent diarrhoea 14 days or more (Care) Observation"
define "Unexplained persistent diarrhoea 14 days or more (Care) Condition":
  [Condition: Concepts."Unexplained persistent diarrhoea 14 days or more"]
define "Unexplained persistent diarrhoea 14 days or more (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained persistent diarrhoea 14 days or more"
/* End of Unexplained persistent diarrhoea 14 days or more (Care) */

/*
@dataElement: HIV.D.DE309 - Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained persistent fever (above 37.5 C, intermittent or constant, for longer than one 1 month)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care)":
  exists "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Condition"
    or exists "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Observation"
define "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Condition":
  [Condition: Concepts."Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month"]
define "Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month"
/* End of Unexplained persistent fever above 37.5 C, intermittent or constant, for longer than one 1 month (Care) */

/*
@dataElement: HIV.D.DE310 - Persistent oral candidiasis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include persistent oral candidiasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Persistent oral candidiasis (Care)":
  exists "Persistent oral candidiasis (Care) Condition"
    or exists "Persistent oral candidiasis (Care) Observation"
define "Persistent oral candidiasis (Care) Condition":
  [Condition: Concepts."Persistent oral candidiasis"]
define "Persistent oral candidiasis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Persistent oral candidiasis"
/* End of Persistent oral candidiasis (Care) */

/*
@dataElement: HIV.D.DE311 - Oral hairy leukoplakia
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has fine white small linear or corrugated lesions on lateral borders of the tongue that do not scrape off
*/
// TODO: Replace placeholder with relevant CQL logic
define "Oral hairy leukoplakia (Care)":
  exists "Oral hairy leukoplakia (Care) Condition"
    or exists "Oral hairy leukoplakia (Care) Observation"
define "Oral hairy leukoplakia (Care) Condition":
  [Condition: Concepts."Oral hairy leukoplakia"]
define "Oral hairy leukoplakia (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Oral hairy leukoplakia"
/* End of Oral hairy leukoplakia (Care) */

/*
@dataElement: HIV.D.DE312 - Pulmonary TB
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include pulmonary TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pulmonary TB (Care)":
  exists "Pulmonary TB (Care) Condition"
    or exists "Pulmonary TB (Care) Observation"
define "Pulmonary TB (Care) Condition":
  [Condition: Concepts."Pulmonary TB - HIV.D.DE312"]
define "Pulmonary TB (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Pulmonary TB - HIV.D.DE312"
/* End of Pulmonary TB (Care) */

/*
@dataElement: HIV.D.DE313 - Lymph node TB
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include lymph node TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lymph node TB (Care)":
  exists "Lymph node TB (Care) Condition"
    or exists "Lymph node TB (Care) Observation"
define "Lymph node TB (Care) Condition":
  [Condition: Concepts."Lymph node TB - HIV.D.DE313"]
define "Lymph node TB (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lymph node TB - HIV.D.DE313"
/* End of Lymph node TB (Care) */

/*
@dataElement: HIV.D.DE314 - Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include severe bacterial infections (such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care)":
  exists "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Condition"
    or exists "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Observation"
define "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Condition":
  [Condition: Concepts."Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia"]
define "Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia"
/* End of Severe bacterial infections such as pneumonia, empyema, pyomyositis, bone or joint infection, meningitis, bacteraemia (Care) */

/*
@dataElement: HIV.D.DE315 - Severe recurrent bacterial pneumonia
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include severe recurrent bacterial pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe recurrent bacterial pneumonia (Care)":
  exists "Severe recurrent bacterial pneumonia (Care) Condition"
    or exists "Severe recurrent bacterial pneumonia (Care) Observation"
define "Severe recurrent bacterial pneumonia (Care) Condition":
  [Condition: Concepts."Severe recurrent bacterial pneumonia"]
define "Severe recurrent bacterial pneumonia (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Severe recurrent bacterial pneumonia"
/* End of Severe recurrent bacterial pneumonia (Care) */

/*
@dataElement: HIV.D.DE316 - Acute necrotizing ulcerative stomatitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include acute necrotizing ulcerative stomatitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute necrotizing ulcerative stomatitis (Care)":
  exists "Acute necrotizing ulcerative stomatitis (Care) Condition"
    or exists "Acute necrotizing ulcerative stomatitis (Care) Observation"
define "Acute necrotizing ulcerative stomatitis (Care) Condition":
  [Condition: Concepts."Acute necrotizing ulcerative stomatitis"]
define "Acute necrotizing ulcerative stomatitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Acute necrotizing ulcerative stomatitis"
/* End of Acute necrotizing ulcerative stomatitis (Care) */

/*
@dataElement: HIV.D.DE317 - Acute necrotizing ulcerative gingivitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include acute necrotizing ulcerative gingivitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute necrotizing ulcerative gingivitis (Care)":
  exists "Acute necrotizing ulcerative gingivitis (Care) Condition"
    or exists "Acute necrotizing ulcerative gingivitis (Care) Observation"
define "Acute necrotizing ulcerative gingivitis (Care) Condition":
  [Condition: Concepts."Acute necrotizing ulcerative gingivitis"]
define "Acute necrotizing ulcerative gingivitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Acute necrotizing ulcerative gingivitis"
/* End of Acute necrotizing ulcerative gingivitis (Care) */

/*
@dataElement: HIV.D.DE318 - Acute necrotizing ulcerative periodontitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include acute necrotizing ulcerative periodontitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Acute necrotizing ulcerative periodontitis (Care)":
  exists "Acute necrotizing ulcerative periodontitis (Care) Condition"
    or exists "Acute necrotizing ulcerative periodontitis (Care) Observation"
define "Acute necrotizing ulcerative periodontitis (Care) Condition":
  [Condition: Concepts."Acute necrotizing ulcerative periodontitis"]
define "Acute necrotizing ulcerative periodontitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Acute necrotizing ulcerative periodontitis"
/* End of Acute necrotizing ulcerative periodontitis (Care) */

/*
@dataElement: HIV.D.DE319 - Unexplained anaemia <8 g/dL
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include unexplained anaemia (<8 g/dL)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained anaemia <8 g/dL (Care)":
  exists "Unexplained anaemia <8 g/dL (Care) Condition"
    or exists "Unexplained anaemia <8 g/dL (Care) Observation"
define "Unexplained anaemia <8 g/dL (Care) Condition":
  [Condition: Concepts."Unexplained anaemia <8 g/dL"]
define "Unexplained anaemia <8 g/dL (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained anaemia <8 g/dL"
/* End of Unexplained anaemia <8 g/dL (Care) */

/*
@dataElement: HIV.D.DE320 - Neutropaenia <0.5 x 10^9/L
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include neutropaenia (<0.5 x 10^9/L)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neutropaenia <0.5 x 10^9/L (Care)":
  exists "Neutropaenia <0.5 x 10^9/L (Care) Condition"
    or exists "Neutropaenia <0.5 x 10^9/L (Care) Observation"
define "Neutropaenia <0.5 x 10^9/L (Care) Condition":
  [Condition: Concepts."Neutropaenia <0.5 x 10^9/L"]
define "Neutropaenia <0.5 x 10^9/L (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Neutropaenia <0.5 x 10^9/L"
/* End of Neutropaenia <0.5 x 10^9/L (Care) */

/*
@dataElement: HIV.D.DE321 - Chronic thrombocytopaenia <50 x 10^9/L
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic thrombocytopaenia (<50 x 10^9/L)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic thrombocytopaenia <50 x 10^9/L (Care)":
  exists "Chronic thrombocytopaenia <50 x 10^9/L (Care) Condition"
    or exists "Chronic thrombocytopaenia <50 x 10^9/L (Care) Observation"
define "Chronic thrombocytopaenia <50 x 10^9/L (Care) Condition":
  [Condition: Concepts."Chronic thrombocytopaenia <50 x 10^9/L"]
define "Chronic thrombocytopaenia <50 x 10^9/L (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chronic thrombocytopaenia <50 x 10^9/L"
/* End of Chronic thrombocytopaenia <50 x 10^9/L (Care) */

/*
@dataElement: HIV.D.DE322 - Symptomatic lymphoid interstitial pneumonitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include symptomatic lymphoid interstitial pneumonitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Symptomatic lymphoid interstitial pneumonitis (Care)":
  exists "Symptomatic lymphoid interstitial pneumonitis (Care) Condition"
    or exists "Symptomatic lymphoid interstitial pneumonitis (Care) Observation"
define "Symptomatic lymphoid interstitial pneumonitis (Care) Condition":
  [Condition: Concepts."Symptomatic lymphoid interstitial pneumonitis"]
define "Symptomatic lymphoid interstitial pneumonitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Symptomatic lymphoid interstitial pneumonitis"
/* End of Symptomatic lymphoid interstitial pneumonitis (Care) */

/*
@dataElement: HIV.D.DE323 - Chronic HIV-associated lung disease, including bronchiectasis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic HIV-associated lung disease, including bronchiectasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic HIV-associated lung disease, including bronchiectasis (Care)":
  exists "Chronic HIV-associated lung disease, including bronchiectasis (Care) Condition"
    or exists "Chronic HIV-associated lung disease, including bronchiectasis (Care) Observation"
define "Chronic HIV-associated lung disease, including bronchiectasis (Care) Condition":
  [Condition: Concepts."Chronic HIV-associated lung disease, including bronchiectasis"]
define "Chronic HIV-associated lung disease, including bronchiectasis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chronic HIV-associated lung disease, including bronchiectasis"
/* End of Chronic HIV-associated lung disease, including bronchiectasis (Care) */

/*
@dataElement: HIV.D.DE324 - HIV wasting syndrome
@activity: HIV.D15 Determine clinical stage of HIV
@description: Unexplained involuntary weight loss (>10% baseline body weight), with obvious wasting or body mass index <18.5; PLUS EITHER unexplained chronic reported for longer than one month; OR reports of fever or night sweats for more than one month without other cause and lack of response to antibiotics or antimalarial agents; malaria must be excluded in malarious areas.
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV wasting syndrome (Care)":
  exists "HIV wasting syndrome (Care) Condition"
    or exists "HIV wasting syndrome (Care) Observation"
define "HIV wasting syndrome (Care) Condition":
  [Condition: Concepts."HIV wasting syndrome"]
define "HIV wasting syndrome (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV wasting syndrome"
/* End of HIV wasting syndrome (Care) */

/*
@dataElement: HIV.D.DE325 - Unexplained severe wasting not responding to standard therapy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has unexplained severe wasting not responding to standard therapy . For under 5 years old, defined as weight-for-height < -3 z-score
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained severe wasting not responding to standard therapy (Care)":
  exists "Unexplained severe wasting not responding to standard therapy (Care) Condition"
    or exists "Unexplained severe wasting not responding to standard therapy (Care) Observation"
define "Unexplained severe wasting not responding to standard therapy (Care) Condition":
  [Condition: Concepts."Unexplained severe wasting not responding to standard therapy"]
define "Unexplained severe wasting not responding to standard therapy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained severe wasting not responding to standard therapy"
/* End of Unexplained severe wasting not responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE326 - Unexplained stunting not responding to standard therapy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has unexplained stunting not responding to standard therapy . For under 5 years old, defined as length-for- age/height-for-age < -2 z-score
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained stunting not responding to standard therapy (Care)":
  exists "Unexplained stunting not responding to standard therapy (Care) Condition"
    or exists "Unexplained stunting not responding to standard therapy (Care) Observation"
define "Unexplained stunting not responding to standard therapy (Care) Condition":
  [Condition: Concepts."Unexplained stunting not responding to standard therapy"]
define "Unexplained stunting not responding to standard therapy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained stunting not responding to standard therapy"
/* End of Unexplained stunting not responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE327 - Unexplained severe malnutrition not responding to standard therapy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client has unexplained severe malnutrition not responding to standard therapy . For under 5 years old, weight for height < -3 z-score or mid-upper arm circumference <115 mm or the presence of oedema
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexplained severe malnutrition not responding to standard therapy (Care)":
  exists "Unexplained severe malnutrition not responding to standard therapy (Care) Condition"
    or exists "Unexplained severe malnutrition not responding to standard therapy (Care) Observation"
define "Unexplained severe malnutrition not responding to standard therapy (Care) Condition":
  [Condition: Concepts."Unexplained severe malnutrition not responding to standard therapy"]
define "Unexplained severe malnutrition not responding to standard therapy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexplained severe malnutrition not responding to standard therapy"
/* End of Unexplained severe malnutrition not responding to standard therapy (Care) */

/*
@dataElement: HIV.D.DE328 - Pneumocystis jirovecii pneumonia
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include pneumocystis (jirovecii) pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pneumocystis jirovecii pneumonia (Care)":
  exists "Pneumocystis jirovecii pneumonia (Care) Condition"
    or exists "Pneumocystis jirovecii pneumonia (Care) Observation"
define "Pneumocystis jirovecii pneumonia (Care) Condition":
  [Condition: Concepts."Pneumocystis jirovecii pneumonia"]
define "Pneumocystis jirovecii pneumonia (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Pneumocystis jirovecii pneumonia"
/* End of Pneumocystis jirovecii pneumonia (Care) */

/*
@dataElement: HIV.D.DE329 - Recurrent severe bacterial pneumonia
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent severe bacterial pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent severe bacterial pneumonia (Care)":
  exists "Recurrent severe bacterial pneumonia (Care) Condition"
    or exists "Recurrent severe bacterial pneumonia (Care) Observation"
define "Recurrent severe bacterial pneumonia (Care) Condition":
  [Condition: Concepts."Recurrent severe bacterial pneumonia"]
define "Recurrent severe bacterial pneumonia (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Recurrent severe bacterial pneumonia"
/* End of Recurrent severe bacterial pneumonia (Care) */

/*
@dataElement: HIV.D.DE330 - Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent severe bacterial infections (such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care)":
  exists "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Condition"
    or exists "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Observation"
define "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Condition":
  [Condition: Concepts."Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia"]
define "Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia"
/* End of Recurrent severe bacterial infections such as empyema, pyomyositis, bone or joint infection, meningitis, but excluding pneumonia (Care) */

/*
@dataElement: HIV.D.DE331 - Empyema
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent empyema
*/
// TODO: Replace placeholder with relevant CQL logic
define "Empyema (Care)":
  exists "Empyema (Care) Condition"
    or exists "Empyema (Care) Observation"
define "Empyema (Care) Condition":
  [Condition: Concepts."Empyema"]
define "Empyema (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Empyema"
/* End of Empyema (Care) */

/*
@dataElement: HIV.D.DE332 - Pyomyositis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent pyomyositis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pyomyositis (Care)":
  exists "Pyomyositis (Care) Condition"
    or exists "Pyomyositis (Care) Observation"
define "Pyomyositis (Care) Condition":
  [Condition: Concepts."Pyomyositis"]
define "Pyomyositis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Pyomyositis"
/* End of Pyomyositis (Care) */

/*
@dataElement: HIV.D.DE333 - Bone or joint infection
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent bone or joint infections
*/
// TODO: Replace placeholder with relevant CQL logic
define "Bone or joint infection (Care)":
  exists "Bone or joint infection (Care) Condition"
    or exists "Bone or joint infection (Care) Observation"
define "Bone or joint infection (Care) Condition":
  [Condition: Concepts."Bone or joint infection"]
define "Bone or joint infection (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Bone or joint infection"
/* End of Bone or joint infection (Care) */

/*
@dataElement: HIV.D.DE334 - Meningitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent meningitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Meningitis (Care)":
  exists "Meningitis (Care) Condition"
    or exists "Meningitis (Care) Observation"
define "Meningitis (Care) Condition":
  [Condition: Concepts."Meningitis"]
define "Meningitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Meningitis"
/* End of Meningitis (Care) */

/*
@dataElement: HIV.D.DE335 - Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic herpes simplex infection (orolabial or cutaneous of more than 1 month duration or visceral at any site)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care)":
  exists "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Condition"
    or exists "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Observation"
define "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Condition":
  [Condition: Concepts."Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site"]
define "Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site"
/* End of Chronic herpes simplex infection orolabial or cutaneous of more than 1 month duration or visceral at any site (Care) */

/*
@dataElement: HIV.D.DE336 - Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic herpes simplex infection (orolabial, genital or anorectal of more than one month in duration or visceral at any site)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care)":
  exists "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Condition"
    or exists "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Observation"
define "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Condition":
  [Condition: Concepts."Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site"]
define "Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site"
/* End of Chronic herpes simplex infection orolabial, genital or anorectal of more than 1 month in duration or visceral at any site (Care) */

/*
@dataElement: HIV.D.DE337 - Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include oesophageal candidiasis (or candidiasis of trachea, bronchi or lungs)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care)":
  exists "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Condition"
    or exists "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Observation"
define "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Condition":
  [Condition: Concepts."Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs"]
define "Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs"
/* End of Oesophageal candidiasis or candidiasis of trachea, bronchi or lungs (Care) */

/*
@dataElement: HIV.D.DE338 - Extrapulmonary TB
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extrapulmonary tuberculosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extrapulmonary TB (Care)":
  exists "Extrapulmonary TB (Care) Condition"
    or exists "Extrapulmonary TB (Care) Observation"
define "Extrapulmonary TB (Care) Condition":
  [Condition: Concepts."Extrapulmonary TB - HIV.D.DE338"]
define "Extrapulmonary TB (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Extrapulmonary TB - HIV.D.DE338"
/* End of Extrapulmonary TB (Care) */

/*
@dataElement: HIV.D.DE339 - Kaposi sarcoma
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include Kaposi sarcoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Kaposi sarcoma (Care)":
  exists "Kaposi sarcoma (Care) Condition"
    or exists "Kaposi sarcoma (Care) Observation"
define "Kaposi sarcoma (Care) Condition":
  [Condition: Concepts."Kaposi sarcoma"]
define "Kaposi sarcoma (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Kaposi sarcoma"
/* End of Kaposi sarcoma (Care) */

/*
@dataElement: HIV.D.DE340 - Cytomegalovirus infection retinitis or infection of other organs
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include cytomegalovirus infection (retinitis or infection of other organs)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cytomegalovirus infection retinitis or infection of other organs (Care)":
  exists "Cytomegalovirus infection retinitis or infection of other organs (Care) Condition"
    or exists "Cytomegalovirus infection retinitis or infection of other organs (Care) Observation"
define "Cytomegalovirus infection retinitis or infection of other organs (Care) Condition":
  [Condition: Concepts."Cytomegalovirus infection retinitis or infection of other organs"]
define "Cytomegalovirus infection retinitis or infection of other organs (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cytomegalovirus infection retinitis or infection of other organs"
/* End of Cytomegalovirus infection retinitis or infection of other organs (Care) */

/*
@dataElement: HIV.D.DE341 - Central nervous system toxoplasmosis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include central nervous system toxoplasmosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Central nervous system toxoplasmosis (Care)":
  exists "Central nervous system toxoplasmosis (Care) Condition"
    or exists "Central nervous system toxoplasmosis (Care) Observation"
define "Central nervous system toxoplasmosis (Care) Condition":
  [Condition: Concepts."Central nervous system toxoplasmosis"]
define "Central nervous system toxoplasmosis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Central nervous system toxoplasmosis"
/* End of Central nervous system toxoplasmosis (Care) */

/*
@dataElement: HIV.D.DE342 - HIV encephalopathy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include HIV encephalopathy
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV encephalopathy (Care)":
  exists "HIV encephalopathy (Care) Condition"
    or exists "HIV encephalopathy (Care) Observation"
define "HIV encephalopathy (Care) Condition":
  [Condition: Concepts."HIV encephalopathy"]
define "HIV encephalopathy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV encephalopathy"
/* End of HIV encephalopathy (Care) */

/*
@dataElement: HIV.D.DE343 - Extrapulmonary cryptococcosis, including meningitis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extrapulmonary cryptococcosis, including meningitis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extrapulmonary cryptococcosis, including meningitis (Care)":
  exists "Extrapulmonary cryptococcosis, including meningitis (Care) Condition"
    or exists "Extrapulmonary cryptococcosis, including meningitis (Care) Observation"
define "Extrapulmonary cryptococcosis, including meningitis (Care) Condition":
  [Condition: Concepts."Extrapulmonary cryptococcosis, including meningitis"]
define "Extrapulmonary cryptococcosis, including meningitis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Extrapulmonary cryptococcosis, including meningitis"
/* End of Extrapulmonary cryptococcosis, including meningitis (Care) */

/*
@dataElement: HIV.D.DE344 - Disseminated nontuberculous mycobacterial infection
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include disseminated nontuberculous mycobacterial infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Disseminated nontuberculous mycobacterial infection (Care)":
  exists "Disseminated nontuberculous mycobacterial infection (Care) Condition"
    or exists "Disseminated nontuberculous mycobacterial infection (Care) Observation"
define "Disseminated nontuberculous mycobacterial infection (Care) Condition":
  [Condition: Concepts."Disseminated nontuberculous mycobacterial infection"]
define "Disseminated nontuberculous mycobacterial infection (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Disseminated nontuberculous mycobacterial infection"
/* End of Disseminated nontuberculous mycobacterial infection (Care) */

/*
@dataElement: HIV.D.DE345 - Progressive multifocal leukoencephalopathy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include progressive multifocal leukoencephalopathy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Progressive multifocal leukoencephalopathy (Care)":
  exists "Progressive multifocal leukoencephalopathy (Care) Condition"
    or exists "Progressive multifocal leukoencephalopathy (Care) Observation"
define "Progressive multifocal leukoencephalopathy (Care) Condition":
  [Condition: Concepts."Progressive multifocal leukoencephalopathy"]
define "Progressive multifocal leukoencephalopathy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Progressive multifocal leukoencephalopathy"
/* End of Progressive multifocal leukoencephalopathy (Care) */

/*
@dataElement: HIV.D.DE346 - Chronic cryptosporidiosis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic cryptosporidiosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic cryptosporidiosis (Care)":
  exists "Chronic cryptosporidiosis (Care) Condition"
    or exists "Chronic cryptosporidiosis (Care) Observation"
define "Chronic cryptosporidiosis (Care) Condition":
  [Condition: Concepts."Chronic cryptosporidiosis"]
define "Chronic cryptosporidiosis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chronic cryptosporidiosis"
/* End of Chronic cryptosporidiosis (Care) */

/*
@dataElement: HIV.D.DE347 - Chronic cryptosporidiosis with diarrhoea
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic cryptosporidiosis (with diarrhoea)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic cryptosporidiosis with diarrhoea (Care)":
  exists "Chronic cryptosporidiosis with diarrhoea (Care) Condition"
    or exists "Chronic cryptosporidiosis with diarrhoea (Care) Observation"
define "Chronic cryptosporidiosis with diarrhoea (Care) Condition":
  [Condition: Concepts."Chronic cryptosporidiosis with diarrhoea"]
define "Chronic cryptosporidiosis with diarrhoea (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chronic cryptosporidiosis with diarrhoea"
/* End of Chronic cryptosporidiosis with diarrhoea (Care) */

/*
@dataElement: HIV.D.DE348 - Chronic isosporiasis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include chronic isosporiasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chronic isosporiasis (Care)":
  exists "Chronic isosporiasis (Care) Condition"
    or exists "Chronic isosporiasis (Care) Observation"
define "Chronic isosporiasis (Care) Condition":
  [Condition: Concepts."Chronic isosporiasis"]
define "Chronic isosporiasis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chronic isosporiasis"
/* End of Chronic isosporiasis (Care) */

/*
@dataElement: HIV.D.DE349 - Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include disseminated mycosis (extrapulmonary histoplasmosis, coccidioidomycosis)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care)":
  exists "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Condition"
    or exists "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Observation"
define "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Condition":
  [Condition: Concepts."Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis"]
define "Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis"
/* End of Disseminated mycosis extrapulmonary histoplasmosis, coccidioidomycosis (Care) */

/*
@dataElement: HIV.D.DE350 - Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include disseminated endemic mycosis (extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care)":
  exists "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Condition"
    or exists "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Observation"
define "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Condition":
  [Condition: Concepts."Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis"]
define "Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis"
/* End of Disseminated endemic mycosis extrapulmonary histoplasmosis, coccidioidomycosis, penicilliosis (Care) */

/*
@dataElement: HIV.D.DE351 - Cerebral lymphoma
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include cerebral lymphoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cerebral lymphoma (Care)":
  exists "Cerebral lymphoma (Care) Condition"
    or exists "Cerebral lymphoma (Care) Observation"
define "Cerebral lymphoma (Care) Condition":
  [Condition: Concepts."Cerebral lymphoma"]
define "Cerebral lymphoma (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cerebral lymphoma"
/* End of Cerebral lymphoma (Care) */

/*
@dataElement: HIV.D.DE352 - B-cell non-Hodgkin lymphoma
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include b-cell non-Hodgkin lymphoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "B-cell non-Hodgkin lymphoma (Care)":
  exists "B-cell non-Hodgkin lymphoma (Care) Condition"
    or exists "B-cell non-Hodgkin lymphoma (Care) Observation"
define "B-cell non-Hodgkin lymphoma (Care) Condition":
  [Condition: Concepts."B-cell non-Hodgkin lymphoma"]
define "B-cell non-Hodgkin lymphoma (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."B-cell non-Hodgkin lymphoma"
/* End of B-cell non-Hodgkin lymphoma (Care) */

/*
@dataElement: HIV.D.DE353 - HIV-associated nephropathy or cardiomyopathy
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include HIV- associated nephropathy or cardiomyopathy
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-associated nephropathy or cardiomyopathy (Care)":
  exists "HIV-associated nephropathy or cardiomyopathy (Care) Condition"
    or exists "HIV-associated nephropathy or cardiomyopathy (Care) Observation"
define "HIV-associated nephropathy or cardiomyopathy (Care) Condition":
  [Condition: Concepts."HIV-associated nephropathy or cardiomyopathy"]
define "HIV-associated nephropathy or cardiomyopathy (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-associated nephropathy or cardiomyopathy"
/* End of HIV-associated nephropathy or cardiomyopathy (Care) */

/*
@dataElement: HIV.D.DE354 - Recurrent septicaemia including nontyphoidal Salmonella
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include recurrent bacteraemia (septicaemia) (including nontyphoidal salmonella)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Recurrent septicaemia including nontyphoidal Salmonella (Care)":
  exists "Recurrent septicaemia including nontyphoidal Salmonella (Care) Condition"
    or exists "Recurrent septicaemia including nontyphoidal Salmonella (Care) Observation"
define "Recurrent septicaemia including nontyphoidal Salmonella (Care) Condition":
  [Condition: Concepts."Recurrent septicaemia including nontyphoidal Salmonella"]
define "Recurrent septicaemia including nontyphoidal Salmonella (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Recurrent septicaemia including nontyphoidal Salmonella"
/* End of Recurrent septicaemia including nontyphoidal Salmonella (Care) */

/*
@dataElement: HIV.D.DE355 - Invasive cervical carcinoma
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include invasive cervical carcinoma
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical carcinoma (Care)":
  exists "Invasive cervical carcinoma (Care) Condition"
    or exists "Invasive cervical carcinoma (Care) Observation"
define "Invasive cervical carcinoma (Care) Condition":
  [Condition: Concepts."Invasive cervical carcinoma"]
define "Invasive cervical carcinoma (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invasive cervical carcinoma"
/* End of Invasive cervical carcinoma (Care) */

/*
@dataElement: HIV.D.DE356 - Atypical disseminated leishmaniasis
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include atypical disseminated leishmaniasis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Atypical disseminated leishmaniasis (Care)":
  exists "Atypical disseminated leishmaniasis (Care) Condition"
    or exists "Atypical disseminated leishmaniasis (Care) Observation"
define "Atypical disseminated leishmaniasis (Care) Condition":
  [Condition: Concepts."Atypical disseminated leishmaniasis"]
define "Atypical disseminated leishmaniasis (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Atypical disseminated leishmaniasis"
/* End of Atypical disseminated leishmaniasis (Care) */

/*
@dataElement: HIV.D.DE357 - Neutropenia
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include neutropenia, an abnormally low count of a type of white blood cell (neutrophils)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neutropenia (Care)":
  exists "Neutropenia (Care) Condition"
    or exists "Neutropenia (Care) Observation"
define "Neutropenia (Care) Condition":
  [Condition: Concepts."Neutropenia"]
define "Neutropenia (Care) Observation":
  "WHO HIV clinical stage condition or symptom (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Neutropenia"
/* End of Neutropenia (Care) */

/*
@dataElement: HIV.D.DE364 - CD4 count
@activity: HIV.D20 Diagnostics
@description: CD4 cell count in cells/mm^3
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count (Care)":
  [Observation: Concepts."CD4 count - HIV.D.DE364"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "CD4 count (Care) Value":
  "CD4 count (Care)" O
  return O.value
/* End of CD4 count (Care) */

/*
@dataElement: HIV.D.DE367 - Baseline CD4 count
@activity: HIV.D20 Diagnostics
@description: CD4 count performed at HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Baseline CD4 count (Care)":
  [Observation: Concepts."Baseline CD4 count - HIV.D.DE367"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Baseline CD4 count (Care) Value":
  "Baseline CD4 count (Care)" O
  return O.value
/* End of Baseline CD4 count (Care) */

/*
@dataElement: HIV.D.DE368 - Date of baseline CD4 count test
@activity: HIV.D20 Diagnostics
@description: Date and time when baseline CD4 count test was conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of baseline CD4 count test (Care)":
  [Observation: Concepts."Date of baseline CD4 count test - HIV.D.DE368"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of baseline CD4 count test (Care) Value":
  "Date of baseline CD4 count test (Care)" O
  return O.value
/* End of Date of baseline CD4 count test (Care) */

/*
@dataElement: HIV.D.DE383 - Time to start ART
@activity: HIV.D8 Capture or update client history
@description: Time from HIV diagnosis to when client started ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Time to start ART (Care)":
  exists "Time to start ART (Care) Observation"
define "Time to start ART (Care) Observation":
  [Observation: Concepts."Time to start ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Time to start ART (Care) */

/*
@dataElement: HIV.D.DE384 - Within 7 days of HIV diagnosis
@activity: HIV.D8 Capture or update client history
@description: Client started ART within 7 days
*/
// TODO: Replace placeholder with relevant CQL logic
define "Within 7 days of HIV diagnosis (Care)":
  exists "Within 7 days of HIV diagnosis (Care) Condition"
    or exists "Within 7 days of HIV diagnosis (Care) Observation"
define "Within 7 days of HIV diagnosis (Care) Condition":
  [Condition: Concepts."Within 7 days of HIV diagnosis"]
define "Within 7 days of HIV diagnosis (Care) Observation":
  "Time to start ART (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Within 7 days of HIV diagnosis"
/* End of Within 7 days of HIV diagnosis (Care) */

/*
@dataElement: HIV.D.DE385 - Within 30 days of HIV diagnosis
@activity: HIV.D8 Capture or update client history
@description: Client started ART within 30 days of ART initiation (but over 7 days)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Within 30 days of HIV diagnosis (Care)":
  exists "Within 30 days of HIV diagnosis (Care) Condition"
    or exists "Within 30 days of HIV diagnosis (Care) Observation"
define "Within 30 days of HIV diagnosis (Care) Condition":
  [Condition: Concepts."Within 30 days of HIV diagnosis"]
define "Within 30 days of HIV diagnosis (Care) Observation":
  "Time to start ART (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Within 30 days of HIV diagnosis"
/* End of Within 30 days of HIV diagnosis (Care) */

/*
@dataElement: HIV.D.DE386 - Within 90 days of HIV diagnosis
@activity: HIV.D8 Capture or update client history
@description: Client started ART within 90 days of ART initiation (but over 30 days)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Within 90 days of HIV diagnosis (Care)":
  exists "Within 90 days of HIV diagnosis (Care) Condition"
    or exists "Within 90 days of HIV diagnosis (Care) Observation"
define "Within 90 days of HIV diagnosis (Care) Condition":
  [Condition: Concepts."Within 90 days of HIV diagnosis"]
define "Within 90 days of HIV diagnosis (Care) Observation":
  "Time to start ART (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Within 90 days of HIV diagnosis"
/* End of Within 90 days of HIV diagnosis (Care) */

/*
@dataElement: HIV.D.DE387 - Viral load test result
@activity: HIV.D20 Diagnostics
@description: Result from the viral load test in number of copies/mL
*/
// TODO: Replace placeholder with relevant CQL logic
define "Viral load test result (Care)":
  [Observation: Concepts."Viral load test result - HIV.D.DE387"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Viral load test result (Care) Value":
  "Viral load test result (Care)" O
  return O.value
/* End of Viral load test result (Care) */

/*
@dataElement: HIV.D.DE391 - Reason for HIV viral load test
@activity: HIV.D20 Diagnostics
@description: Whether the viral load is being tested for routine monitoring on a set schedule or for targeted monitoring for suspected treatment failure
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason for HIV viral load test (Care)":
  exists "Reason for HIV viral load test (Care) Observation"
define "Reason for HIV viral load test (Care) Observation":
  [Observation: Concepts."Reason for HIV viral load test"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Reason for HIV viral load test (Care) */

/*
@dataElement: HIV.D.DE392 - Routine viral load test
@activity: HIV.D20 Diagnostics
@description: Routine refers to viral load tests obtained at standard intervals following ART initiation to monitor viral load response to ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Routine viral load test (Care)":
  exists "Routine viral load test (Care) Condition"
    or exists "Routine viral load test (Care) Observation"
define "Routine viral load test (Care) Condition":
  [Condition: Concepts."Routine viral load test"]
define "Routine viral load test (Care) Observation":
  "Reason for HIV viral load test (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Routine viral load test"
/* End of Routine viral load test (Care) */

/*
@dataElement: HIV.D.DE393 - Targeted viral load monitoring
@activity: HIV.D20 Diagnostics
@description: Targeted refers to viral load tests obtained based on a specific clinical indication (such as concern about disease progression or failure to respond to ART)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Targeted viral load monitoring (Care)":
  exists "Targeted viral load monitoring (Care) Condition"
    or exists "Targeted viral load monitoring (Care) Observation"
define "Targeted viral load monitoring (Care) Condition":
  [Condition: Concepts."Targeted viral load monitoring"]
define "Targeted viral load monitoring (Care) Observation":
  "Reason for HIV viral load test (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Targeted viral load monitoring"
/* End of Targeted viral load monitoring (Care) */

/*
@dataElement: HIV.D.DE394 - Initial viral load test
@activity: HIV.D20 Diagnostics
@description: The first viral load test of the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Initial viral load test (Care)":
  exists "Initial viral load test (Care) Condition"
    or exists "Initial viral load test (Care) Observation"
define "Initial viral load test (Care) Condition":
  [Condition: Concepts."Initial viral load test"]
define "Initial viral load test (Care) Observation":
  "Reason for HIV viral load test (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Initial viral load test"
/* End of Initial viral load test (Care) */

/*
@dataElement: HIV.D.DE395 - Follow-up viral load test after receiving enhanced adherence counselling
@activity: HIV.D20 Diagnostics
@description: A follow-up viral load test within 3-6 months after enhanced adherence counselling after client received a high viral load test result
*/
// TODO: Replace placeholder with relevant CQL logic
define "Follow-up viral load test after receiving enhanced adherence counselling (Care)":
  exists "Follow-up viral load test after receiving enhanced adherence counselling (Care) Condition"
    or exists "Follow-up viral load test after receiving enhanced adherence counselling (Care) Observation"
define "Follow-up viral load test after receiving enhanced adherence counselling (Care) Condition":
  [Condition: Concepts."Follow-up viral load test after receiving enhanced adherence counselling"]
define "Follow-up viral load test after receiving enhanced adherence counselling (Care) Observation":
  "Reason for HIV viral load test (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Follow-up viral load test after receiving enhanced adherence counselling"
/* End of Follow-up viral load test after receiving enhanced adherence counselling (Care) */

/*
@dataElement: HIV.D.DE399 - Monitoring examinations
@activity: HIV.D20 Diagnostics
@description: Name of examinations, test and results for any relevant investigations carried out for client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Monitoring examinations (Care)":
  exists "Monitoring examinations (Care) Observation"
define "Monitoring examinations (Care) Observation":
  [Observation: Concepts."Monitoring examinations"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Monitoring examinations (Care) */

/*
@dataElement: HIV.D.DE400 - Haemoglobin Hb
@activity: HIV.D20 Diagnostics
@description: Provider ordered a Haemoglobin (Hb) test, number in g/dL test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haemoglobin Hb (Care)":
  exists "Haemoglobin Hb (Care) Condition"
    or exists "Haemoglobin Hb (Care) Observation"
define "Haemoglobin Hb (Care) Condition":
  [Condition: Concepts."Haemoglobin Hb"]
define "Haemoglobin Hb (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Haemoglobin Hb"
/* End of Haemoglobin Hb (Care) */

/*
@dataElement: HIV.D.DE401 - Pregnancy test
@activity: HIV.D20 Diagnostics
@description: Provider ordered a pregnancy test for client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pregnancy test (Care)":
  exists "Pregnancy test (Care) Condition"
    or exists "Pregnancy test (Care) Observation"
define "Pregnancy test (Care) Condition":
  [Condition: Concepts."Pregnancy test"]
define "Pregnancy test (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Pregnancy test"
/* End of Pregnancy test (Care) */

/*
@dataElement: HIV.D.DE402 - Syphilis test
@activity: HIV.D20 Diagnostics
@description: Provider ordered a syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test (Care)":
  exists "Syphilis test (Care) Condition"
    or exists "Syphilis test (Care) Observation"
define "Syphilis test (Care) Condition":
  [Condition: Concepts."Syphilis test"]
define "Syphilis test (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Syphilis test"
/* End of Syphilis test (Care) */

/*
@dataElement: HIV.D.DE403 - Chest X-ray CXR
@activity: HIV.D20 Diagnostics
@description: Provider ordered a chest X-ray (CXR)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chest X-ray CXR (Care)":
  exists "Chest X-ray CXR (Care) Condition"
    or exists "Chest X-ray CXR (Care) Observation"
define "Chest X-ray CXR (Care) Condition":
  [Condition: Concepts."Chest X-ray CXR"]
define "Chest X-ray CXR (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chest X-ray CXR"
/* End of Chest X-ray CXR (Care) */

/*
@dataElement: HIV.D.DE404 - Sputum or culture for TB
@activity: HIV.D20 Diagnostics
@description: Provider ordered sputum or culture for TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sputum or culture for TB (Care)":
  exists "Sputum or culture for TB (Care) Condition"
    or exists "Sputum or culture for TB (Care) Observation"
define "Sputum or culture for TB (Care) Condition":
  [Condition: Concepts."Sputum or culture for TB"]
define "Sputum or culture for TB (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sputum or culture for TB"
/* End of Sputum or culture for TB (Care) */

/*
@dataElement: HIV.D.DE405 - HBsAg test HBV
@activity: HIV.D20 Diagnostics
@description: Provider ordered an HBsAg test (HBV) test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test HBV (Care)":
  exists "HBsAg test HBV (Care) Condition"
    or exists "HBsAg test HBV (Care) Observation"
define "HBsAg test HBV (Care) Condition":
  [Condition: Concepts."HBsAg test HBV"]
define "HBsAg test HBV (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HBsAg test HBV"
/* End of HBsAg test HBV (Care) */

/*
@dataElement: HIV.D.DE406 - HIV viral load test ordered
@activity: HIV.D20 Diagnostics
@description: Provider ordered an HIV viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV viral load test ordered (Care)":
  exists "HIV viral load test ordered (Care) Condition"
    or exists "HIV viral load test ordered (Care) Observation"
define "HIV viral load test ordered (Care) Condition":
  [Condition: Concepts."HIV viral load test ordered"]
define "HIV viral load test ordered (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV viral load test ordered"
/* End of HIV viral load test ordered (Care) */

/*
@dataElement: HIV.D.DE407 - HIV viral load test scheduled
@activity: HIV.D20 Diagnostics
@description: Scheduled an HIV viral load test with client
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV viral load test scheduled (Care)":
  exists "HIV viral load test scheduled (Care) Condition"
    or exists "HIV viral load test scheduled (Care) Observation"
define "HIV viral load test scheduled (Care) Condition":
  [Condition: Concepts."HIV viral load test scheduled"]
define "HIV viral load test scheduled (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV viral load test scheduled"
/* End of HIV viral load test scheduled (Care) */

/*
@dataElement: HIV.D.DE408 - CD4 count ordered
@activity: HIV.D20 Diagnostics
@description: Provider ordered a CD4 cell count
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count ordered (Care)":
  exists "CD4 count ordered (Care) Condition"
    or exists "CD4 count ordered (Care) Observation"
define "CD4 count ordered (Care) Condition":
  [Condition: Concepts."CD4 count ordered"]
define "CD4 count ordered (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."CD4 count ordered"
/* End of CD4 count ordered (Care) */

/*
@dataElement: HIV.D.DE409 - CD4 count test scheduled
@activity: HIV.D20 Diagnostics
@description: Scheduled a CD4 test with client
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count test scheduled (Care)":
  exists "CD4 count test scheduled (Care) Condition"
    or exists "CD4 count test scheduled (Care) Observation"
define "CD4 count test scheduled (Care) Condition":
  [Condition: Concepts."CD4 count test scheduled"]
define "CD4 count test scheduled (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."CD4 count test scheduled"
/* End of CD4 count test scheduled (Care) */

/*
@dataElement: HIV.D.DE410 - Cryptococcal antigen test
@activity: HIV.D20 Diagnostics
@description: Provider ordered a cryptococcal antigen test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cryptococcal antigen test (Care)":
  exists "Cryptococcal antigen test (Care) Condition"
    or exists "Cryptococcal antigen test (Care) Observation"
define "Cryptococcal antigen test (Care) Condition":
  [Condition: Concepts."Cryptococcal antigen test"]
define "Cryptococcal antigen test (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cryptococcal antigen test"
/* End of Cryptococcal antigen test (Care) */

/*
@dataElement: HIV.D.DE411 - Histoplasmosis antigen test
@activity: HIV.D20 Diagnostics
@description: Provider ordered a histoplasmosis antigen test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Histoplasmosis antigen test (Care)":
  exists "Histoplasmosis antigen test (Care) Condition"
    or exists "Histoplasmosis antigen test (Care) Observation"
define "Histoplasmosis antigen test (Care) Condition":
  [Condition: Concepts."Histoplasmosis antigen test"]
define "Histoplasmosis antigen test (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Histoplasmosis antigen test"
/* End of Histoplasmosis antigen test (Care) */

/*
@dataElement: HIV.D.DE412 - Cervical cancer screening scheduled
@activity: HIV.D28 Offer other services
@description: Scheduled cervical cancer screening with client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening scheduled (Care)":
  exists "Cervical cancer screening scheduled (Care) Condition"
    or exists "Cervical cancer screening scheduled (Care) Observation"
define "Cervical cancer screening scheduled (Care) Condition":
  [Condition: Concepts."Cervical cancer screening scheduled"]
define "Cervical cancer screening scheduled (Care) Observation":
  "Monitoring examinations (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cervical cancer screening scheduled"
/* End of Cervical cancer screening scheduled (Care) */

/*
@dataElement: HIV.D.DE413 - Date of scheduled monitoring examination
@activity: HIV.D28 Offer other services
@description: Date of scheduled monitoring examination
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of scheduled monitoring examination (Care)":
  [Observation: Concepts."Date of scheduled monitoring examination"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of scheduled monitoring examination (Care) Value":
  "Date of scheduled monitoring examination (Care)" O
  return O.value
/* End of Date of scheduled monitoring examination (Care) */

/*
@dataElement: HIV.D.DE417 - Date viral load test results received by client
@activity: HIV.D20 Diagnostics
@description: The date on which the client received results from a viral load test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date viral load test results received by client (Care|DDE417)":
  [Observation: Concepts."Date viral load test results received by client - HIV.D.DE417"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date viral load test results received by client (Care|DDE417) Value":
  "Date viral load test results received by client (Care|DDE417)" O
  return O.value
/* End of Date viral load test results received by client (Care|DDE417) */

/*
@dataElement: HIV.D.DE418 - Reason for ARV drug regimen substitution
@activity: HIV.D21 Determine regimen and treatment options
@description: Reason why a substitution was made to the antiretroviral (ARV) drug regimen
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason for ARV drug regimen substitution (Care)":
  exists "Reason for ARV drug regimen substitution (Care) Observation"
define "Reason for ARV drug regimen substitution (Care) Observation":
  [Observation: Concepts."Reason for ARV drug regimen substitution"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Reason for ARV drug regimen substitution (Care) */

/*
@dataElement: HIV.D.DE419 - Toxicity/side effects
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of toxicity/side effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Toxicity/side effects (Care|DDE419)":
  exists "Toxicity/side effects (Care|DDE419) Condition"
    or exists "Toxicity/side effects (Care|DDE419) Observation"
define "Toxicity/side effects (Care|DDE419) Condition":
  [Condition: Concepts."Toxicity/side effects - HIV.D.DE419"]
define "Toxicity/side effects (Care|DDE419) Observation":
  "Reason for ARV drug regimen substitution (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Toxicity/side effects - HIV.D.DE419"
/* End of Toxicity/side effects (Care|DDE419) */

/*
@dataElement: HIV.D.DE420 - Drug-drug interaction
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of a drug-drug interaction
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug-drug interaction (Care)":
  exists "Drug-drug interaction (Care) Condition"
    or exists "Drug-drug interaction (Care) Observation"
define "Drug-drug interaction (Care) Condition":
  [Condition: Concepts."Drug-drug interaction"]
define "Drug-drug interaction (Care) Observation":
  "Reason for ARV drug regimen substitution (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Drug-drug interaction"
/* End of Drug-drug interaction (Care) */

/*
@dataElement: HIV.D.DE421 - Pregnancy
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of pregnancy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pregnancy (Care)":
  exists "Pregnancy (Care) Condition"
    or exists "Pregnancy (Care) Observation"
define "Pregnancy (Care) Condition":
  [Condition: Concepts."Pregnancy"]
define "Pregnancy (Care) Observation":
  "Reason for ARV drug regimen substitution (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Pregnancy"
/* End of Pregnancy (Care) */

/*
@dataElement: HIV.D.DE422 - New TB
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because of new tuberculosis (TB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "New TB (Care)":
  exists "New TB (Care) Condition"
    or exists "New TB (Care) Observation"
define "New TB (Care) Condition":
  [Condition: Concepts."New TB"]
define "New TB (Care) Observation":
  "Reason for ARV drug regimen substitution (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."New TB"
/* End of New TB (Care) */

/*
@dataElement: HIV.D.DE423 - New drug available
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because a new drug was available
*/
// TODO: Replace placeholder with relevant CQL logic
define "New drug available (Care)":
  exists "New drug available (Care) Condition"
    or exists "New drug available (Care) Observation"
define "New drug available (Care) Condition":
  [Condition: Concepts."New drug available"]
define "New drug available (Care) Observation":
  "Reason for ARV drug regimen substitution (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."New drug available"
/* End of New drug available (Care) */

/*
@dataElement: HIV.D.DE424 - Drug out of stock
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made to the regimen because drug was out of stock
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drug out of stock (Care)":
  exists "Drug out of stock (Care) Condition"
    or exists "Drug out of stock (Care) Observation"
define "Drug out of stock (Care) Condition":
  [Condition: Concepts."Drug out of stock"]
define "Drug out of stock (Care) Observation":
  "Reason for ARV drug regimen substitution (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Drug out of stock"
/* End of Drug out of stock (Care) */

/*
@dataElement: HIV.D.DE425 - Other reason for regimen substitution
@activity: HIV.D21 Determine regimen and treatment options
@description: A substitution was made for another reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other reason for regimen substitution (Care)":
  exists "Other reason for regimen substitution (Care) Condition"
    or exists "Other reason for regimen substitution (Care) Observation"
define "Other reason for regimen substitution (Care) Condition":
  [Condition: Concepts."Other reason for regimen substitution"]
define "Other reason for regimen substitution (Care) Observation":
  "Reason for ARV drug regimen substitution (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other reason for regimen substitution"
/* End of Other reason for regimen substitution (Care) */

/*
@dataElement: HIV.D.DE427 - Switch to second-line ART regimen recommended
@activity: HIV.D21 Determine regimen and treatment options
@description: A switch to second-line ART regimen is recommended
*/
// TODO: Replace placeholder with relevant CQL logic
define "Switch to second-line ART regimen recommended (Care)":
  exists "Switch to second-line ART regimen recommended (Care) Observation"
define "Switch to second-line ART regimen recommended (Care) Observation":
  [Observation: Concepts."Switch to second-line ART regimen recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Switch to second-line ART regimen recommended (Care) */

/*
@dataElement: HIV.D.DE436 - Regimen substitution recommended
@activity: HIV.D23 Prescribe
@description: A drug substitution is recommended
*/
// TODO: Replace placeholder with relevant CQL logic
define "Regimen substitution recommended (Care)":
  exists "Regimen substitution recommended (Care) Observation"
define "Regimen substitution recommended (Care) Observation":
  [Observation: Concepts."Regimen substitution recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Regimen substitution recommended (Care) */

/*
@dataElement: HIV.D.DE437 - Dose adjustment recommended
@activity: HIV.D23 Prescribe
@description: A dosage change is recommended
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dose adjustment recommended (Care)":
  exists "Dose adjustment recommended (Care) Observation"
define "Dose adjustment recommended (Care) Observation":
  [Observation: Concepts."Dose adjustment recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Dose adjustment recommended (Care) */

/*
@dataElement: HIV.D.DE443 - Suspicion of treatment failure or interruption
@activity: HIV.D23 Prescribe
@description: Client has been on ART, but has stopped taking it or a treatment failure is suspected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Suspicion of treatment failure or interruption (Care)":
  exists "Suspicion of treatment failure or interruption (Care) Observation"
define "Suspicion of treatment failure or interruption (Care) Observation":
  [Observation: Concepts."Suspicion of treatment failure or interruption"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Suspicion of treatment failure or interruption (Care) */

/*
@dataElement: HIV.D.DE457 - Medications prescribed
@activity: HIV.D23 Prescribe
@description: Name or regimen code of all other medications prescribed during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medications prescribed (Care)":
  exists "Medications prescribed (Care) Observation"
define "Medications prescribed (Care) Observation":
  [Observation: Concepts."Medications prescribed - HIV.D.DE457"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Medications prescribed (Care) */

/*
@dataElement: HIV.D.DE458 - Date medications prescribed
@activity: HIV.D23 Prescribe
@description: Date the medications were prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date medications prescribed (Care)":
  [Observation: Concepts."Date medications prescribed - HIV.D.DE458"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date medications prescribed (Care) Value":
  "Date medications prescribed (Care)" O
  return O.value
/* End of Date medications prescribed (Care) */

/*
@dataElement: HIV.D.DE459 - Dose of medications prescribed
@activity: HIV.D23 Prescribe
@description: Number of doses (quantity taken at a single point in time) of drugs prescribed/dispensed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dose of medications prescribed (Care)":
  [Observation: Concepts."Dose of medications prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Dose of medications prescribed (Care) Value":
  "Dose of medications prescribed (Care)" O
  return O.value
/* End of Dose of medications prescribed (Care) */

/*
@dataElement: HIV.D.DE460 - Number of days medications prescribed
@activity: HIV.D23 Prescribe
@description: Number of days supply of each medication or regimen prescribed during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of days medications prescribed (Care)":
  [Observation: Concepts."Number of days medications prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Number of days medications prescribed (Care) Value":
  "Number of days medications prescribed (Care)" O
  return O.value
/* End of Number of days medications prescribed (Care) */

/*
@dataElement: HIV.D.DE465 - Adherence counselling provided
@activity: HIV.D24 Counsel
@description: Counselling was carried out during visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Adherence counselling provided (Care)":
  exists "Adherence counselling provided (Care) Observation"
define "Adherence counselling provided (Care) Observation":
  [Observation: Concepts."Adherence counselling provided - HIV.D.DE465"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Adherence counselling provided (Care) */

/*
@dataElement: HIV.D.DE466 - Type of treatment-limiting toxicity
@activity: HIV.D21 Determine regimen and treatment options
@description: Type of treatment-limiting toxicity experienced by client. Treatment-limiting toxicity is defined as a serious adverse drug reaction that results in drug discontinuation or substitution. In addition, any reaction that leads to treatment interruption or requires changing the drug or regimen because of an adverse drug reaction is also considered a serious adverse drug reaction.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of treatment-limiting toxicity (Care)":
  exists "Type of treatment-limiting toxicity (Care) Observation"
define "Type of treatment-limiting toxicity (Care) Observation":
  [Observation: Concepts."Type of treatment-limiting toxicity"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of treatment-limiting toxicity (Care) */

/*
@dataElement: HIV.D.DE467 - Gastrointestinal
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to GI issues (nausea, diarrhoea, abdominal pain, vomiting)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gastrointestinal (Care)":
  exists "Gastrointestinal (Care) Condition"
    or exists "Gastrointestinal (Care) Observation"
define "Gastrointestinal (Care) Condition":
  [Condition: Concepts."Gastrointestinal"]
define "Gastrointestinal (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Gastrointestinal"
/* End of Gastrointestinal (Care) */

/*
@dataElement: HIV.D.DE468 - Skin issues
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to skin issues (rash, hypersensitivity reaction)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Skin issues (Care)":
  exists "Skin issues (Care) Condition"
    or exists "Skin issues (Care) Observation"
define "Skin issues (Care) Condition":
  [Condition: Concepts."Skin issues"]
define "Skin issues (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Skin issues"
/* End of Skin issues (Care) */

/*
@dataElement: HIV.D.DE469 - Peripheral neuropathy
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to peripheral neuropathy (burning/numbness/ tingling)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Peripheral neuropathy (Care)":
  exists "Peripheral neuropathy (Care) Condition"
    or exists "Peripheral neuropathy (Care) Observation"
define "Peripheral neuropathy (Care) Condition":
  [Condition: Concepts."Peripheral neuropathy"]
define "Peripheral neuropathy (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Peripheral neuropathy"
/* End of Peripheral neuropathy (Care) */

/*
@dataElement: HIV.D.DE470 - Central nervous system symptoms
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to central nervous system symptoms (dizzy, anxiety, nightmare, depression, seizures)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Central nervous system symptoms (Care)":
  exists "Central nervous system symptoms (Care) Condition"
    or exists "Central nervous system symptoms (Care) Observation"
define "Central nervous system symptoms (Care) Condition":
  [Condition: Concepts."Central nervous system symptoms"]
define "Central nervous system symptoms (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Central nervous system symptoms"
/* End of Central nervous system symptoms (Care) */

/*
@dataElement: HIV.D.DE471 - Weight gain
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to weight gain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Weight gain (Care)":
  exists "Weight gain (Care) Condition"
    or exists "Weight gain (Care) Observation"
define "Weight gain (Care) Condition":
  [Condition: Concepts."Weight gain"]
define "Weight gain (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Weight gain"
/* End of Weight gain (Care) */

/*
@dataElement: HIV.D.DE472 - Hepatic dysfunction
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to hepatic dysfunction (jaundice)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatic dysfunction (Care)":
  exists "Hepatic dysfunction (Care) Condition"
    or exists "Hepatic dysfunction (Care) Observation"
define "Hepatic dysfunction (Care) Condition":
  [Condition: Concepts."Hepatic dysfunction"]
define "Hepatic dysfunction (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hepatic dysfunction"
/* End of Hepatic dysfunction (Care) */

/*
@dataElement: HIV.D.DE473 - Haematological disorders
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to haematological (anaemia, neutropenia) disorders
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haematological disorders (Care)":
  exists "Haematological disorders (Care) Condition"
    or exists "Haematological disorders (Care) Observation"
define "Haematological disorders (Care) Condition":
  [Condition: Concepts."Haematological disorders"]
define "Haematological disorders (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Haematological disorders"
/* End of Haematological disorders (Care) */

/*
@dataElement: HIV.D.DE474 - Fatigue
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to fatigue
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fatigue (Care)":
  exists "Fatigue (Care) Condition"
    or exists "Fatigue (Care) Observation"
define "Fatigue (Care) Condition":
  [Condition: Concepts."Fatigue"]
define "Fatigue (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Fatigue"
/* End of Fatigue (Care) */

/*
@dataElement: HIV.D.DE475 - Headache
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to headache
*/
// TODO: Replace placeholder with relevant CQL logic
define "Headache (Care|DDE475)":
  exists "Headache (Care|DDE475) Condition"
    or exists "Headache (Care|DDE475) Observation"
define "Headache (Care|DDE475) Condition":
  [Condition: Concepts."Headache - HIV.D.DE475"]
define "Headache (Care|DDE475) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Headache - HIV.D.DE475"
/* End of Headache (Care|DDE475) */

/*
@dataElement: HIV.D.DE476 - Bone dysfunction
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to bone dysfunction (fractures, osteopenia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Bone dysfunction (Care)":
  exists "Bone dysfunction (Care) Condition"
    or exists "Bone dysfunction (Care) Observation"
define "Bone dysfunction (Care) Condition":
  [Condition: Concepts."Bone dysfunction"]
define "Bone dysfunction (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Bone dysfunction"
/* End of Bone dysfunction (Care) */

/*
@dataElement: HIV.D.DE477 - Metabolic symptoms
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to metabolic symptoms (body fat changes, hyperglycaemia, dyslipidaemia)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Metabolic symptoms (Care)":
  exists "Metabolic symptoms (Care) Condition"
    or exists "Metabolic symptoms (Care) Observation"
define "Metabolic symptoms (Care) Condition":
  [Condition: Concepts."Metabolic symptoms"]
define "Metabolic symptoms (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Metabolic symptoms"
/* End of Metabolic symptoms (Care) */

/*
@dataElement: HIV.D.DE478 - Kidney dysfunction
@activity: HIV.D21 Determine regimen and treatment options
@description: Treatment-limiting toxicity due to kidney dysfunction (nephrolithiasis, renal insufficiency)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Kidney dysfunction (Care)":
  exists "Kidney dysfunction (Care) Condition"
    or exists "Kidney dysfunction (Care) Observation"
define "Kidney dysfunction (Care) Condition":
  [Condition: Concepts."Kidney dysfunction"]
define "Kidney dysfunction (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Kidney dysfunction"
/* End of Kidney dysfunction (Care) */

/*
@dataElement: HIV.D.DE479 - Unexpected adverse drug reaction
@activity: HIV.D21 Determine regimen and treatment options
@description: Client experienced an unexpected adverse drug reaction
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unexpected adverse drug reaction (Care)":
  exists "Unexpected adverse drug reaction (Care) Condition"
    or exists "Unexpected adverse drug reaction (Care) Observation"
define "Unexpected adverse drug reaction (Care) Condition":
  [Condition: Concepts."Unexpected adverse drug reaction"]
define "Unexpected adverse drug reaction (Care) Observation":
  "Type of treatment-limiting toxicity (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unexpected adverse drug reaction"
/* End of Unexpected adverse drug reaction (Care) */

/*
@dataElement: HIV.D.DE487 - Dates of substitution within second-line regimen
@activity: HIV.D21 Determine regimen and treatment options
@description: Date on which ARV drug regimen for client was changed within the second-line regimen (substitution)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dates of substitution within second-line regimen (Care)":
  [Observation: Concepts."Dates of substitution within second-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Dates of substitution within second-line regimen (Care) Value":
  "Dates of substitution within second-line regimen (Care)" O
  return O.value
/* End of Dates of substitution within second-line regimen (Care) */

/*
@dataElement: HIV.D.DE493 - Dates of substitution within third-line regimen
@activity: HIV.D21 Determine regimen and treatment options
@description: Date on which ARV drug regimen for client was changed within the third-line (substitution)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dates of substitution within third-line regimen (Care)":
  [Observation: Concepts."Dates of substitution within third-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Dates of substitution within third-line regimen (Care) Value":
  "Dates of substitution within third-line regimen (Care)" O
  return O.value
/* End of Dates of substitution within third-line regimen (Care) */

/*
@dataElement: HIV.D.DE496 - Enhanced adherence counselling provided
@activity: HIV.D24 Counsel
@description: Enhanced adherence counselling was provided to the client during the visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Enhanced adherence counselling provided (Care)":
  exists "Enhanced adherence counselling provided (Care) Observation"
define "Enhanced adherence counselling provided (Care) Observation":
  [Observation: Concepts."Enhanced adherence counselling provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Enhanced adherence counselling provided (Care) */

/*
@dataElement: HIV.D.DE507 - Counselling provided on diagnoses
@activity: HIV.D24 Counsel
@description: Counselling provided on diagnoses
*/
// TODO: Replace placeholder with relevant CQL logic
define "Counselling provided on diagnoses (Care)":
  exists "Counselling provided on diagnoses (Care) Observation"
define "Counselling provided on diagnoses (Care) Observation":
  [Observation: Concepts."Counselling provided on diagnoses"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Counselling provided on diagnoses (Care) */

/*
@dataElement: HIV.D.DE510 - Syphilis counselling and treatment
@activity: HIV.D24 Counsel
@description: Whether counselling and treatment was provided to a client who has been diagnosed with syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis counselling and treatment (Care)":
  exists "Syphilis counselling and treatment (Care) Observation"
define "Syphilis counselling and treatment (Care) Observation":
  [Observation: Concepts."Syphilis counselling and treatment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Syphilis counselling and treatment (Care) */

/*
@dataElement: HIV.D.DE519 - Other support services
@activity: HIV.D28 Offer other services
@description: Offer or refer for other support services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other support services (Care)":
  exists "Other support services (Care) Observation"
define "Other support services (Care) Observation":
  [Observation: Concepts."Other support services - HIV.D.DE519"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Other support services (Care) */

/*
@dataElement: HIV.D.DE520 - Mental health services
@activity: HIV.D28 Offer other services
@description: Offer or refer for mental health services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Mental health services (Care)":
  exists "Mental health services (Care) Condition"
    or exists "Mental health services (Care) Observation"
define "Mental health services (Care) Condition":
  [Condition: Concepts."Mental health services - HIV.D.DE520"]
define "Mental health services (Care) Observation":
  "Other support services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Mental health services - HIV.D.DE520"
/* End of Mental health services (Care) */

/*
@dataElement: HIV.D.DE521 - Psychosocial counselling, support and treatment adherence counselling
@activity: HIV.D28 Offer other services
@description: Offer or refer for psychosocial counselling, support and treatment adherence counselling
*/
// TODO: Replace placeholder with relevant CQL logic
define "Psychosocial counselling, support and treatment adherence counselling (Care)":
  exists "Psychosocial counselling, support and treatment adherence counselling (Care) Condition"
    or exists "Psychosocial counselling, support and treatment adherence counselling (Care) Observation"
define "Psychosocial counselling, support and treatment adherence counselling (Care) Condition":
  [Condition: Concepts."Psychosocial counselling, support and treatment adherence counselling - HIV.D.DE521"]
define "Psychosocial counselling, support and treatment adherence counselling (Care) Observation":
  "Other support services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Psychosocial counselling, support and treatment adherence counselling - HIV.D.DE521"
/* End of Psychosocial counselling, support and treatment adherence counselling (Care) */

/*
@dataElement: HIV.D.DE522 - Legal and social services
@activity: HIV.D28 Offer other services
@description: Offer or refer for legal and social services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Legal and social services (Care)":
  exists "Legal and social services (Care) Condition"
    or exists "Legal and social services (Care) Observation"
define "Legal and social services (Care) Condition":
  [Condition: Concepts."Legal and social services - HIV.D.DE522"]
define "Legal and social services (Care) Observation":
  "Other support services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Legal and social services - HIV.D.DE522"
/* End of Legal and social services (Care) */

/*
@dataElement: HIV.D.DE523 - Services for responding to violence against women
@activity: HIV.D28 Offer other services
@description: Offer or refer for services for responding to violence against women, including first-line support and psychosocial support, post-rape care and other support services including shelters, legal services and women and child protection services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Services for responding to violence against women (Care)":
  exists "Services for responding to violence against women (Care) Condition"
    or exists "Services for responding to violence against women (Care) Observation"
define "Services for responding to violence against women (Care) Condition":
  [Condition: Concepts."Services for responding to violence against women - HIV.D.DE523"]
define "Services for responding to violence against women (Care) Observation":
  "Other support services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Services for responding to violence against women - HIV.D.DE523"
/* End of Services for responding to violence against women (Care) */

/*
@dataElement: HIV.D.DE524 - Date/time of follow-up appointment
@activity: HIV.D29 Schedule follow-up
@description: Date the client is to return for monitoring, re-supply or any other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date/time of follow-up appointment (Care)":
  [Observation: Concepts."Date/time of follow-up appointment - HIV.D.DE524"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date/time of follow-up appointment (Care) Value":
  "Date/time of follow-up appointment (Care)" O
  return O.value
/* End of Date/time of follow-up appointment (Care) */

/*
@dataElement: HIV.D.DE525 - Type of follow-up appointment
@activity: HIV.D29 Schedule follow-up
@description: Whether the visit will be clinical only, ARV drug pick-up or other. Client may have multiple follow-ups scheduled.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of follow-up appointment (Care)":
  exists "Type of follow-up appointment (Care) Observation"
define "Type of follow-up appointment (Care) Observation":
  [Observation: Concepts."Type of follow-up appointment - HIV.D.DE525"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of follow-up appointment (Care) */

/*
@dataElement: HIV.D.DE526 - Clinical visit
@activity: HIV.D29 Schedule follow-up
@description: Appointment for clinical care by a provider
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical visit (Care|DDE526)":
  exists "Clinical visit (Care|DDE526) Condition"
    or exists "Clinical visit (Care|DDE526) Observation"
define "Clinical visit (Care|DDE526) Condition":
  [Condition: Concepts."Clinical visit - HIV.D.DE526"]
define "Clinical visit (Care|DDE526) Observation":
  "Type of follow-up appointment (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Clinical visit - HIV.D.DE526"
/* End of Clinical visit (Care|DDE526) */

/*
@dataElement: HIV.D.DE527 - Antiretroviral drug pick up
@activity: HIV.D29 Schedule follow-up
@description: Appointment for a drug pick up
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antiretroviral drug pick up (Care)":
  exists "Antiretroviral drug pick up (Care) Condition"
    or exists "Antiretroviral drug pick up (Care) Observation"
define "Antiretroviral drug pick up (Care) Condition":
  [Condition: Concepts."Antiretroviral drug pick up"]
define "Antiretroviral drug pick up (Care) Observation":
  "Type of follow-up appointment (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antiretroviral drug pick up"
/* End of Antiretroviral drug pick up (Care) */

/*
@dataElement: HIV.D.DE528 - Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer
@activity: HIV.D29 Schedule follow-up
@description: Appointment for a post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528)":
  exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Condition"
    or exists "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Observation"
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Condition":
  [Condition: Concepts."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer - HIV.D.DE528"]
define "Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) Observation":
  "Type of follow-up appointment (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer - HIV.D.DE528"
/* End of Post-treatment follow-up visit for cervical precancer lesions or invasive cervical cancer (Care|DDE528) */

/*
@dataElement: HIV.D.DE529 - Other
@activity: HIV.D29 Schedule follow-up
@description: Other reason for the follow-up appointment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE529)":
  exists "Other (Care|DDE529) Condition"
    or exists "Other (Care|DDE529) Observation"
define "Other (Care|DDE529) Condition":
  [Condition: Concepts."Other - HIV.D.DE529"]
define "Other (Care|DDE529) Observation":
  "Type of follow-up appointment (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.D.DE529"
/* End of Other (Care|DDE529) */

/*
@dataElement: HIV.D.DE531 - Follow-up test recommended date
@activity: HIV.D29 Schedule follow-up
@description: A test or screening recommended for the client's care plan at a future date
*/
// TODO: Replace placeholder with relevant CQL logic
define "Follow-up test recommended date (Care)":
  [Observation: Concepts."Follow-up test recommended date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Follow-up test recommended date (Care) Value":
  "Follow-up test recommended date (Care)" O
  return O.value
/* End of Follow-up test recommended date (Care) */

/*
@dataElement: HIV.D.DE537 - Current medications
@activity: HIV.D8 Capture or update client history
@description: List of all of the medications the client is currently taking
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current medications (Care)":
  exists "Current medications (Care) Observation"
define "Current medications (Care) Observation":
  [Observation: Concepts."Current medications"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Current medications (Care) */

/*
@dataElement: HIV.D.DE538 - No medications
@activity: HIV.D8 Capture or update client history
@description: The client is currently not on any medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "No medications (Care)":
  exists "No medications (Care) Condition"
    or exists "No medications (Care) Observation"
define "No medications (Care) Condition":
  [Condition: Concepts."No medications"]
define "No medications (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."No medications"
/* End of No medications (Care) */

/*
@dataElement: HIV.D.DE539 - Dont know of any current medications
@activity: HIV.D8 Capture or update client history
@description: The client does not know if she is on any medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dont know of any current medications (Care)":
  exists "Dont know of any current medications (Care) Condition"
    or exists "Dont know of any current medications (Care) Observation"
define "Dont know of any current medications (Care) Condition":
  [Condition: Concepts."Dont know of any current medications"]
define "Dont know of any current medications (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Dont know of any current medications"
/* End of Dont know of any current medications (Care) */

/*
@dataElement: HIV.D.DE540 - Analgesic
@activity: HIV.D8 Capture or update client history
@description: Analgesic medication (painkiller)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Analgesic (Care)":
  exists "Analgesic (Care) Condition"
    or exists "Analgesic (Care) Observation"
define "Analgesic (Care) Condition":
  [Condition: Concepts."Analgesic"]
define "Analgesic (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Analgesic"
/* End of Analgesic (Care) */

/*
@dataElement: HIV.D.DE541 - Antacids
@activity: HIV.D8 Capture or update client history
@description: Antacids
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antacids (Care)":
  exists "Antacids (Care) Condition"
    or exists "Antacids (Care) Observation"
define "Antacids (Care) Condition":
  [Condition: Concepts."Antacids"]
define "Antacids (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antacids"
/* End of Antacids (Care) */

/*
@dataElement: HIV.D.DE542 - Antibiotics broad-spectrum
@activity: HIV.D8 Capture or update client history
@description: Client is currently taking broad-spectrum antibiotics
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antibiotics broad-spectrum (Care)":
  exists "Antibiotics broad-spectrum (Care) Condition"
    or exists "Antibiotics broad-spectrum (Care) Observation"
define "Antibiotics broad-spectrum (Care) Condition":
  [Condition: Concepts."Antibiotics broad-spectrum"]
define "Antibiotics broad-spectrum (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antibiotics broad-spectrum"
/* End of Antibiotics broad-spectrum (Care) */

/*
@dataElement: HIV.D.DE543 - Anticonvulsive
@activity: HIV.D8 Capture or update client history
@description: Anticonvulsive medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anticonvulsive (Care)":
  exists "Anticonvulsive (Care) Condition"
    or exists "Anticonvulsive (Care) Observation"
define "Anticonvulsive (Care) Condition":
  [Condition: Concepts."Anticonvulsive"]
define "Anticonvulsive (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Anticonvulsive"
/* End of Anticonvulsive (Care) */

/*
@dataElement: HIV.D.DE544 - Antidiabetic
@activity: HIV.D8 Capture or update client history
@description: Antidiabetic medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antidiabetic (Care)":
  exists "Antidiabetic (Care) Condition"
    or exists "Antidiabetic (Care) Observation"
define "Antidiabetic (Care) Condition":
  [Condition: Concepts."Antidiabetic"]
define "Antidiabetic (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antidiabetic"
/* End of Antidiabetic (Care) */

/*
@dataElement: HIV.D.DE545 - Antifungals
@activity: HIV.D8 Capture or update client history
@description: Client is currently taking antifungals
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antifungals (Care)":
  exists "Antifungals (Care) Condition"
    or exists "Antifungals (Care) Observation"
define "Antifungals (Care) Condition":
  [Condition: Concepts."Antifungals"]
define "Antifungals (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antifungals"
/* End of Antifungals (Care) */

/*
@dataElement: HIV.D.DE546 - Antihelmintic
@activity: HIV.D8 Capture or update client history
@description: Antihelmintic or antiparasitic medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antihelmintic (Care)":
  exists "Antihelmintic (Care) Condition"
    or exists "Antihelmintic (Care) Observation"
define "Antihelmintic (Care) Condition":
  [Condition: Concepts."Antihelmintic"]
define "Antihelmintic (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antihelmintic"
/* End of Antihelmintic (Care) */

/*
@dataElement: HIV.D.DE547 - Antihypertensive
@activity: HIV.D8 Capture or update client history
@description: Antihypertensive medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antihypertensive (Care)":
  exists "Antihypertensive (Care) Condition"
    or exists "Antihypertensive (Care) Observation"
define "Antihypertensive (Care) Condition":
  [Condition: Concepts."Antihypertensive"]
define "Antihypertensive (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antihypertensive"
/* End of Antihypertensive (Care) */

/*
@dataElement: HIV.D.DE548 - Antimalarials
@activity: HIV.D8 Capture or update client history
@description: Antimalarial medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antimalarials (Care)":
  exists "Antimalarials (Care) Condition"
    or exists "Antimalarials (Care) Observation"
define "Antimalarials (Care) Condition":
  [Condition: Concepts."Antimalarials"]
define "Antimalarials (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antimalarials"
/* End of Antimalarials (Care) */

/*
@dataElement: HIV.D.DE549 - Antiretrovirals ARVs
@activity: HIV.D8 Capture or update client history
@description: Antiretrovirals (ARVs)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antiretrovirals ARVs (Care)":
  exists "Antiretrovirals ARVs (Care) Condition"
    or exists "Antiretrovirals ARVs (Care) Observation"
define "Antiretrovirals ARVs (Care) Condition":
  [Condition: Concepts."Antiretrovirals ARVs"]
define "Antiretrovirals ARVs (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antiretrovirals ARVs"
/* End of Antiretrovirals ARVs (Care) */

/*
@dataElement: HIV.D.DE550 - Antiparasitics
@activity: HIV.D8 Capture or update client history
@description: Client is currently taking antiparasitics
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antiparasitics (Care)":
  exists "Antiparasitics (Care) Condition"
    or exists "Antiparasitics (Care) Observation"
define "Antiparasitics (Care) Condition":
  [Condition: Concepts."Antiparasitics"]
define "Antiparasitics (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antiparasitics"
/* End of Antiparasitics (Care) */

/*
@dataElement: HIV.D.DE551 - Antivirals
@activity: HIV.D8 Capture or update client history
@description: Antiviral medication
*/
// TODO: Replace placeholder with relevant CQL logic
define "Antivirals (Care)":
  exists "Antivirals (Care) Condition"
    or exists "Antivirals (Care) Observation"
define "Antivirals (Care) Condition":
  [Condition: Concepts."Antivirals"]
define "Antivirals (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Antivirals"
/* End of Antivirals (Care) */

/*
@dataElement: HIV.D.DE552 - Buprenorphine
@activity: HIV.D8 Capture or update client history
@description: Opioid substitution to treat opioid dependence
*/
// TODO: Replace placeholder with relevant CQL logic
define "Buprenorphine (Care|DDE552)":
  exists "Buprenorphine (Care|DDE552) Condition"
    or exists "Buprenorphine (Care|DDE552) Observation"
define "Buprenorphine (Care|DDE552) Condition":
  [Condition: Concepts."Buprenorphine - HIV.D.DE552"]
define "Buprenorphine (Care|DDE552) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Buprenorphine - HIV.D.DE552"
/* End of Buprenorphine (Care|DDE552) */

/*
@dataElement: HIV.D.DE553 - Co-trimoxazole preventive therapy CPT
@activity: HIV.D8 Capture or update client history
@description: Combination of two antimicrobial drugs (sulfamethoxazole and trimethoprim) that covers a variety of bacterial, fungal and protozoan infections
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole preventive therapy CPT (Care)":
  exists "Co-trimoxazole preventive therapy CPT (Care) Condition"
    or exists "Co-trimoxazole preventive therapy CPT (Care) Observation"
define "Co-trimoxazole preventive therapy CPT (Care) Condition":
  [Condition: Concepts."Co-trimoxazole preventive therapy CPT"]
define "Co-trimoxazole preventive therapy CPT (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Co-trimoxazole preventive therapy CPT"
/* End of Co-trimoxazole preventive therapy CPT (Care) */

/*
@dataElement: HIV.D.DE554 - Hormonal family planning method
@activity: HIV.D8 Capture or update client history
@description: Hormonal family planning method
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hormonal family planning method (Care)":
  exists "Hormonal family planning method (Care) Condition"
    or exists "Hormonal family planning method (Care) Observation"
define "Hormonal family planning method (Care) Condition":
  [Condition: Concepts."Hormonal family planning method"]
define "Hormonal family planning method (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hormonal family planning method"
/* End of Hormonal family planning method (Care) */

/*
@dataElement: HIV.D.DE555 - Methadone
@activity: HIV.D8 Capture or update client history
@description: Opioid substitution to treat opioid dependence
*/
// TODO: Replace placeholder with relevant CQL logic
define "Methadone (Care|DDE555)":
  exists "Methadone (Care|DDE555) Condition"
    or exists "Methadone (Care|DDE555) Observation"
define "Methadone (Care|DDE555) Condition":
  [Condition: Concepts."Methadone - HIV.D.DE555"]
define "Methadone (Care|DDE555) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Methadone - HIV.D.DE555"
/* End of Methadone (Care|DDE555) */

/*
@dataElement: HIV.D.DE556 - PrEP to prevent HIV
@activity: HIV.D8 Capture or update client history
@description: Pre-exposure prophylaxis (PrEP) medication for preventing the acquisition of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP to prevent HIV (Care)":
  exists "PrEP to prevent HIV (Care) Condition"
    or exists "PrEP to prevent HIV (Care) Observation"
define "PrEP to prevent HIV (Care) Condition":
  [Condition: Concepts."PrEP to prevent HIV"]
define "PrEP to prevent HIV (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."PrEP to prevent HIV"
/* End of PrEP to prevent HIV (Care) */

/*
@dataElement: HIV.D.DE557 - Other antibiotics
@activity: HIV.D8 Capture or update client history
@description: Other antibiotics not listed above
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other antibiotics (Care)":
  exists "Other antibiotics (Care) Condition"
    or exists "Other antibiotics (Care) Observation"
define "Other antibiotics (Care) Condition":
  [Condition: Concepts."Other antibiotics"]
define "Other antibiotics (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other antibiotics"
/* End of Other antibiotics (Care) */

/*
@dataElement: HIV.D.DE558 - Other medications
@activity: HIV.D8 Capture or update client history
@description: Other medications or supplements that are not listed above
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other medications (Care)":
  exists "Other medications (Care) Condition"
    or exists "Other medications (Care) Observation"
define "Other medications (Care) Condition":
  [Condition: Concepts."Other medications"]
define "Other medications (Care) Observation":
  "Current medications (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other medications"
/* End of Other medications (Care) */

/*
@dataElement: HIV.D.DE656 - Date of cervical cancer screening test
@activity: HIV.D28 Offer other services
@description: Date of cervical cancer screening test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of cervical cancer screening test (Care)":
  [Observation: Concepts."Date of cervical cancer screening test"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of cervical cancer screening test (Care) Value":
  "Date of cervical cancer screening test (Care)" O
  return O.value
/* End of Date of cervical cancer screening test (Care) */

/*
@dataElement: HIV.D.DE657 - Lifetime screening test number
@activity: HIV.D28 Offer other services
@description: Client's lifetime number of screenings for cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lifetime screening test number (Care)":
  [Observation: Concepts."Lifetime screening test number"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Lifetime screening test number (Care) Value":
  "Lifetime screening test number (Care)" O
  return O.value
/* End of Lifetime screening test number (Care) */

/*
@dataElement: HIV.D.DE658 - Cervical cancer primary screening test type
@activity: HIV.D28 Offer other services
@description: Type of cervical cancer screening test used in primary screening
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer primary screening test type (Care)":
  exists "Cervical cancer primary screening test type (Care) Observation"
define "Cervical cancer primary screening test type (Care) Observation":
  [Observation: Concepts."Cervical cancer primary screening test type"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Cervical cancer primary screening test type (Care) */

/*
@dataElement: HIV.D.DE659 - HPV-DNA
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using HPV-DNA test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HPV-DNA (Care)":
  exists "HPV-DNA (Care) Condition"
    or exists "HPV-DNA (Care) Observation"
define "HPV-DNA (Care) Condition":
  [Condition: Concepts."HPV-DNA"]
define "HPV-DNA (Care) Observation":
  "Cervical cancer primary screening test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HPV-DNA"
/* End of HPV-DNA (Care) */

/*
@dataElement: HIV.D.DE660 - VIA
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using visual inspection with acetic acid (VIA)
*/
// TODO: Replace placeholder with relevant CQL logic
define "VIA (Care)":
  exists "VIA (Care) Condition"
    or exists "VIA (Care) Observation"
define "VIA (Care) Condition":
  [Condition: Concepts."VIA"]
define "VIA (Care) Observation":
  "Cervical cancer primary screening test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."VIA"
/* End of VIA (Care) */

/*
@dataElement: HIV.D.DE661 - Cervical cytology
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using cervical cytology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cytology (Care)":
  exists "Cervical cytology (Care) Condition"
    or exists "Cervical cytology (Care) Observation"
define "Cervical cytology (Care) Condition":
  [Condition: Concepts."Cervical cytology"]
define "Cervical cytology (Care) Observation":
  "Cervical cancer primary screening test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cervical cytology"
/* End of Cervical cytology (Care) */

/*
@dataElement: HIV.D.DE662 - Other
@activity: HIV.D28 Offer other services
@description: Screened for cervical cancer using other method
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE662)":
  exists "Other (Care|DDE662) Condition"
    or exists "Other (Care|DDE662) Observation"
define "Other (Care|DDE662) Condition":
  [Condition: Concepts."Other - HIV.D.DE662"]
define "Other (Care|DDE662) Observation":
  "Cervical cancer primary screening test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.D.DE662"
/* End of Other (Care|DDE662) */

/*
@dataElement: HIV.D.DE705 - Date of diagnosis of cervical precancer lesions or invasive cervical cancer
@activity: HIV.D28 Offer other services
@description: Date of diagnosis of cervical precancer lesions or invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care)":
  [Observation: Concepts."Date of diagnosis of cervical precancer lesions or invasive cervical cancer"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care) Value":
  "Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care)" O
  return O.value
/* End of Date of diagnosis of cervical precancer lesions or invasive cervical cancer (Care) */

/*
@dataElement: HIV.D.DE706 - Cervical cancer screening outcome
@activity: HIV.D28 Offer other services
@description: Client's screening outcome for cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening outcome (Care)":
  exists "Cervical cancer screening outcome (Care) Observation"
define "Cervical cancer screening outcome (Care) Observation":
  [Observation: Concepts."Cervical cancer screening outcome"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Cervical cancer screening outcome (Care) */

/*
@dataElement: HIV.D.DE707 - Positive for cervical precancer lesions
@activity: HIV.D28 Offer other services
@description: Screening outcome for cervical precancer lesions is positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive for cervical precancer lesions (Care)":
  exists "Positive for cervical precancer lesions (Care) Condition"
    or exists "Positive for cervical precancer lesions (Care) Observation"
define "Positive for cervical precancer lesions (Care) Condition":
  [Condition: Concepts."Positive for cervical precancer lesions"]
define "Positive for cervical precancer lesions (Care) Observation":
  "Cervical cancer screening outcome (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive for cervical precancer lesions"
/* End of Positive for cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE708 - Negative for cervical precancer lesions
@activity: HIV.D28 Offer other services
@description: Screening outcome for cervical precancer lesions is negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative for cervical precancer lesions (Care)":
  exists "Negative for cervical precancer lesions (Care) Condition"
    or exists "Negative for cervical precancer lesions (Care) Observation"
define "Negative for cervical precancer lesions (Care) Condition":
  [Condition: Concepts."Negative for cervical precancer lesions"]
define "Negative for cervical precancer lesions (Care) Observation":
  "Cervical cancer screening outcome (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative for cervical precancer lesions"
/* End of Negative for cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE709 - Cervical cancer diagnosis
@activity: HIV.D28 Offer other services
@description: Type of cervical cancer diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer diagnosis (Care)":
  exists "Cervical cancer diagnosis (Care) Observation"
define "Cervical cancer diagnosis (Care) Observation":
  [Observation: Concepts."Cervical cancer diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Cervical cancer diagnosis (Care) */

/*
@dataElement: HIV.D.DE710 - Cervical precancer lesions
@activity: HIV.D28 Offer other services
@description: Client is diagnosed with cervical precancer lesions
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical precancer lesions (Care)":
  exists "Cervical precancer lesions (Care) Condition"
    or exists "Cervical precancer lesions (Care) Observation"
define "Cervical precancer lesions (Care) Condition":
  [Condition: Concepts."Cervical precancer lesions"]
define "Cervical precancer lesions (Care) Observation":
  "Cervical cancer diagnosis (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cervical precancer lesions"
/* End of Cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE711 - Invasive cervical cancer
@activity: HIV.D28 Offer other services
@description: Client is diagnosed with invasive cervical cancer disease
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical cancer (Care)":
  exists "Invasive cervical cancer (Care) Condition"
    or exists "Invasive cervical cancer (Care) Observation"
define "Invasive cervical cancer (Care) Condition":
  [Condition: Concepts."Invasive cervical cancer"]
define "Invasive cervical cancer (Care) Observation":
  "Cervical cancer diagnosis (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invasive cervical cancer"
/* End of Invasive cervical cancer (Care) */

/*
@dataElement: HIV.D.DE712 - Cervical cancer stage at diagnosis
@activity: HIV.D28 Offer other services
@description: Cervical cancer stage at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer stage at diagnosis (Care)":
  exists "Cervical cancer stage at diagnosis (Care) Observation"
define "Cervical cancer stage at diagnosis (Care) Observation":
  [Observation: Concepts."Cervical cancer stage at diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Cervical cancer stage at diagnosis (Care) */

/*
@dataElement: HIV.D.DE713 - Stage 0
@activity: HIV.D28 Offer other services
@description: Stage 0 cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage 0 (Care)":
  exists "Stage 0 (Care) Condition"
    or exists "Stage 0 (Care) Observation"
define "Stage 0 (Care) Condition":
  [Condition: Concepts."Stage 0"]
define "Stage 0 (Care) Observation":
  "Cervical cancer stage at diagnosis (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Stage 0"
/* End of Stage 0 (Care) */

/*
@dataElement: HIV.D.DE714 - Stage I
@activity: HIV.D28 Offer other services
@description: Stage I cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage I (Care)":
  exists "Stage I (Care) Condition"
    or exists "Stage I (Care) Observation"
define "Stage I (Care) Condition":
  [Condition: Concepts."Stage I"]
define "Stage I (Care) Observation":
  "Cervical cancer stage at diagnosis (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Stage I"
/* End of Stage I (Care) */

/*
@dataElement: HIV.D.DE715 - Stage II
@activity: HIV.D28 Offer other services
@description: Stage II cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage II (Care)":
  exists "Stage II (Care) Condition"
    or exists "Stage II (Care) Observation"
define "Stage II (Care) Condition":
  [Condition: Concepts."Stage II"]
define "Stage II (Care) Observation":
  "Cervical cancer stage at diagnosis (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Stage II"
/* End of Stage II (Care) */

/*
@dataElement: HIV.D.DE716 - Stage III
@activity: HIV.D28 Offer other services
@description: Stage III cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage III (Care)":
  exists "Stage III (Care) Condition"
    or exists "Stage III (Care) Observation"
define "Stage III (Care) Condition":
  [Condition: Concepts."Stage III"]
define "Stage III (Care) Observation":
  "Cervical cancer stage at diagnosis (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Stage III"
/* End of Stage III (Care) */

/*
@dataElement: HIV.D.DE717 - Stage IV
@activity: HIV.D28 Offer other services
@description: Stage IV cervical cancer at diagnosis of cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Stage IV (Care)":
  exists "Stage IV (Care) Condition"
    or exists "Stage IV (Care) Observation"
define "Stage IV (Care) Condition":
  [Condition: Concepts."Stage IV"]
define "Stage IV (Care) Observation":
  "Cervical cancer stage at diagnosis (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Stage IV"
/* End of Stage IV (Care) */

/*
@dataElement: HIV.D.DE718 - Date of treatment for cervical precancer lesions
@activity: HIV.D28 Offer other services
@description: Date of treatment for cervical precancer lesions
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of treatment for cervical precancer lesions (Care)":
  [Observation: Concepts."Date of treatment for cervical precancer lesions"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of treatment for cervical precancer lesions (Care) Value":
  "Date of treatment for cervical precancer lesions (Care)" O
  return O.value
/* End of Date of treatment for cervical precancer lesions (Care) */

/*
@dataElement: HIV.D.DE730 - Invasive cervical cancer treatment episode
@activity: HIV.D28 Offer other services
@description: Client's lifetime number of treatments for invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical cancer treatment episode (Care)":
  [Observation: Concepts."Invasive cervical cancer treatment episode"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Invasive cervical cancer treatment episode (Care) Value":
  "Invasive cervical cancer treatment episode (Care)" O
  return O.value
/* End of Invasive cervical cancer treatment episode (Care) */

/*
@dataElement: HIV.D.DE731 - Invasive cervical cancer treatment method
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invasive cervical cancer treatment method (Care)":
  exists "Invasive cervical cancer treatment method (Care) Observation"
define "Invasive cervical cancer treatment method (Care) Observation":
  [Observation: Concepts."Invasive cervical cancer treatment method"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Invasive cervical cancer treatment method (Care) */

/*
@dataElement: HIV.D.DE732 - Conization
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a conization
*/
// TODO: Replace placeholder with relevant CQL logic
define "Conization (Care)":
  exists "Conization (Care) Condition"
    or exists "Conization (Care) Observation"
define "Conization (Care) Condition":
  [Condition: Concepts."Conization"]
define "Conization (Care) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Conization"
/* End of Conization (Care) */

/*
@dataElement: HIV.D.DE733 - Trachelectomy
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a trachelectomy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Trachelectomy (Care)":
  exists "Trachelectomy (Care) Condition"
    or exists "Trachelectomy (Care) Observation"
define "Trachelectomy (Care) Condition":
  [Condition: Concepts."Trachelectomy"]
define "Trachelectomy (Care) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Trachelectomy"
/* End of Trachelectomy (Care) */

/*
@dataElement: HIV.D.DE734 - Hysterectomy
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a hysterectomy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hysterectomy (Care)":
  exists "Hysterectomy (Care) Condition"
    or exists "Hysterectomy (Care) Observation"
define "Hysterectomy (Care) Condition":
  [Condition: Concepts."Hysterectomy"]
define "Hysterectomy (Care) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hysterectomy"
/* End of Hysterectomy (Care) */

/*
@dataElement: HIV.D.DE735 - Management of invasive cervical cancer
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is management of invasive cervical cancer
*/
// TODO: Replace placeholder with relevant CQL logic
define "Management of invasive cervical cancer (Care)":
  exists "Management of invasive cervical cancer (Care) Condition"
    or exists "Management of invasive cervical cancer (Care) Observation"
define "Management of invasive cervical cancer (Care) Condition":
  [Condition: Concepts."Management of invasive cervical cancer"]
define "Management of invasive cervical cancer (Care) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Management of invasive cervical cancer"
/* End of Management of invasive cervical cancer (Care) */

/*
@dataElement: HIV.D.DE736 - Radiotherapy
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a radiotherapy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Radiotherapy (Care)":
  exists "Radiotherapy (Care) Condition"
    or exists "Radiotherapy (Care) Observation"
define "Radiotherapy (Care) Condition":
  [Condition: Concepts."Radiotherapy"]
define "Radiotherapy (Care) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Radiotherapy"
/* End of Radiotherapy (Care) */

/*
@dataElement: HIV.D.DE737 - Chemotherapy
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a chemotherapy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chemotherapy (Care)":
  exists "Chemotherapy (Care) Condition"
    or exists "Chemotherapy (Care) Observation"
define "Chemotherapy (Care) Condition":
  [Condition: Concepts."Chemotherapy"]
define "Chemotherapy (Care) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chemotherapy"
/* End of Chemotherapy (Care) */

/*
@dataElement: HIV.D.DE738 - Chemoradiation
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a chemoradiation
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chemoradiation (Care)":
  exists "Chemoradiation (Care) Condition"
    or exists "Chemoradiation (Care) Observation"
define "Chemoradiation (Care) Condition":
  [Condition: Concepts."Chemoradiation"]
define "Chemoradiation (Care) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chemoradiation"
/* End of Chemoradiation (Care) */

/*
@dataElement: HIV.D.DE739 - Other
@activity: HIV.D28 Offer other services
@description: Invasive cervical cancer treatment method is a not in list
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE739)":
  exists "Other (Care|DDE739) Condition"
    or exists "Other (Care|DDE739) Observation"
define "Other (Care|DDE739) Condition":
  [Condition: Concepts."Other - HIV.D.DE739"]
define "Other (Care|DDE739) Observation":
  "Invasive cervical cancer treatment method (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.D.DE739"
/* End of Other (Care|DDE739) */

/*
@dataElement: HIV.D.DE745 - Cervical cancer screening interval amongst WLHIV
@activity: HIV.D28 Offer other services
@description: Country-specific interval between cancer screenings amongst women living with HIV (typically 3 or 5 years)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical cancer screening interval amongst WLHIV (Care)":
  [Observation: Concepts."Cervical cancer screening interval amongst WLHIV"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Cervical cancer screening interval amongst WLHIV (Care) Value":
  "Cervical cancer screening interval amongst WLHIV (Care)" O
  return O.value
/* End of Cervical cancer screening interval amongst WLHIV (Care) */

/*
@dataElement: HIV.D.DE753 - Offer other clinical services
@activity: HIV.D28 Offer other services
@description: Other clinical services offered or referrals given to the client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Offer other clinical services (Care)":
  exists "Offer other clinical services (Care) Observation"
define "Offer other clinical services (Care) Observation":
  [Observation: Concepts."Offer other clinical services - HIV.D.DE753"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Offer other clinical services (Care) */

/*
@dataElement: HIV.D.DE754 - Assessment and provision of vaccinations
@activity: HIV.D28 Offer other services
@description: Assessment and provision of vaccinations, such as for people from Key population member type, pregnant women and infants; and, where appropriate, tetanus vaccination for adolescent boys and men receiving VMMC
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assessment and provision of vaccinations (Care)":
  exists "Assessment and provision of vaccinations (Care) Condition"
    or exists "Assessment and provision of vaccinations (Care) Observation"
define "Assessment and provision of vaccinations (Care) Condition":
  [Condition: Concepts."Assessment and provision of vaccinations - HIV.D.DE754"]
define "Assessment and provision of vaccinations (Care) Observation":
  "Offer other clinical services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assessment and provision of vaccinations - HIV.D.DE754"
/* End of Assessment and provision of vaccinations (Care) */

/*
@dataElement: HIV.D.DE755 - Hepatitis B HBV and hepatitis C virus HCV testing and treatment
@activity: HIV.D28 Offer other services
@description: Offer or refer for HBV and/or HCV testing and treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care)":
  exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Condition"
    or exists "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Observation"
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Condition":
  [Condition: Concepts."Hepatitis B HBV and hepatitis C virus HCV testing and treatment"]
define "Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) Observation":
  "Offer other clinical services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hepatitis B HBV and hepatitis C virus HCV testing and treatment"
/* End of Hepatitis B HBV and hepatitis C virus HCV testing and treatment (Care) */

/*
@dataElement: HIV.D.DE756 - Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
@activity: HIV.D28 Offer other services
@description: Offer or refer for co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia
*/
// TODO: Replace placeholder with relevant CQL logic
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care)":
  exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Condition"
    or exists "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Observation"
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Condition":
  [Condition: Concepts."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia - HIV.D.DE756"]
define "Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) Observation":
  "Offer other clinical services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia - HIV.D.DE756"
/* End of Co-trimoxazole chemoprophylaxis to prevent pneumocystis carinii pneumonia (Care) */

/*
@dataElement: HIV.D.DE757 - Intensified TB case finding and linkage to TB treatment
@activity: HIV.D28 Offer other services
@description: Offer or refer for intensified TB case finding and linkage to TB treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Intensified TB case finding and linkage to TB treatment (Care)":
  exists "Intensified TB case finding and linkage to TB treatment (Care) Condition"
    or exists "Intensified TB case finding and linkage to TB treatment (Care) Observation"
define "Intensified TB case finding and linkage to TB treatment (Care) Condition":
  [Condition: Concepts."Intensified TB case finding and linkage to TB treatment - HIV.D.DE757"]
define "Intensified TB case finding and linkage to TB treatment (Care) Observation":
  "Offer other clinical services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Intensified TB case finding and linkage to TB treatment - HIV.D.DE757"
/* End of Intensified TB case finding and linkage to TB treatment (Care) */

/*
@dataElement: HIV.D.DE758 - Provision of isoniazid preventive therapy if person does not have TB
@activity: HIV.D28 Offer other services
@description: Offer or refer for provision of isoniazid preventive therapy if person does not have TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Provision of isoniazid preventive therapy if person does not have TB (Care)":
  exists "Provision of isoniazid preventive therapy if person does not have TB (Care) Condition"
    or exists "Provision of isoniazid preventive therapy if person does not have TB (Care) Observation"
define "Provision of isoniazid preventive therapy if person does not have TB (Care) Condition":
  [Condition: Concepts."Provision of isoniazid preventive therapy if person does not have TB - HIV.D.DE758"]
define "Provision of isoniazid preventive therapy if person does not have TB (Care) Observation":
  "Offer other clinical services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Provision of isoniazid preventive therapy if person does not have TB - HIV.D.DE758"
/* End of Provision of isoniazid preventive therapy if person does not have TB (Care) */

/*
@dataElement: HIV.D.DE759 - Malaria prevention such as bed nets and prophylaxis, depending on epidemiology
@activity: HIV.D28 Offer other services
@description: Offer or refer for malaria prevention (such as bed nets and prophylaxis), depending on epidemiology
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care)":
  exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Condition"
    or exists "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Observation"
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Condition":
  [Condition: Concepts."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology - HIV.D.DE759"]
define "Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) Observation":
  "Offer other clinical services (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Malaria prevention such as bed nets and prophylaxis, depending on epidemiology - HIV.D.DE759"
/* End of Malaria prevention such as bed nets and prophylaxis, depending on epidemiology (Care) */

/*
@dataElement: HIV.D.DE760 - Eligible for DSD ART
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is eligible for differentiated service delivery (DSD) for ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Eligible for DSD ART (Care)":
  exists "Eligible for DSD ART (Care) Observation"
define "Eligible for DSD ART (Care) Observation":
  [Observation: Concepts."Eligible for DSD ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Eligible for DSD ART (Care) */

/*
@dataElement: HIV.D.DE761 - Date DSD ART eligibility assessed
@activity: HIV.D21 Determine regimen and treatment options
@description: Date client was assessed for eligibility for differentiated service delivery (DSD) for ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date DSD ART eligibility assessed (Care)":
  [Observation: Concepts."Date DSD ART eligibility assessed"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date DSD ART eligibility assessed (Care) Value":
  "Date DSD ART eligibility assessed (Care)" O
  return O.value
/* End of Date DSD ART eligibility assessed (Care) */

/*
@dataElement: HIV.D.DE762 - Currently enrolled in DSD ART model
@activity: HIV.D21 Determine regimen and treatment options
@description: Client currently enrolled in differentiated service delivery (DSD) ART model
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently enrolled in DSD ART model (Care)":
  exists "Currently enrolled in DSD ART model (Care) Observation"
define "Currently enrolled in DSD ART model (Care) Observation":
  [Observation: Concepts."Currently enrolled in DSD ART model"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Currently enrolled in DSD ART model (Care) */

/*
@dataElement: HIV.D.DE763 - DSD ART start date
@activity: HIV.D21 Determine regimen and treatment options
@description: Date client started on differentiated service delivery (DSD) for ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "DSD ART start date (Care)":
  [Observation: Concepts."DSD ART start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "DSD ART start date (Care) Value":
  "DSD ART start date (Care)" O
  return O.value
/* End of DSD ART start date (Care) */

/*
@dataElement: HIV.D.DE764 - DSD ART models
@activity: HIV.D21 Determine regimen and treatment options
@description: Type of DSD ART model client is enrolled in (country-specific)
*/
// TODO: Replace placeholder with relevant CQL logic
define "DSD ART models (Care)":
  exists "DSD ART models (Care) Observation"
define "DSD ART models (Care) Observation":
  [Observation: Concepts."DSD ART models"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of DSD ART models (Care) */

/*
@dataElement: HIV.D.DE765 - Fast track ART refill
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in fast track ART refill (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fast track ART refill (Care)":
  exists "Fast track ART refill (Care) Condition"
    or exists "Fast track ART refill (Care) Observation"
define "Fast track ART refill (Care) Condition":
  [Condition: Concepts."Fast track ART refill"]
define "Fast track ART refill (Care) Observation":
  "DSD ART models (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Fast track ART refill"
/* End of Fast track ART refill (Care) */

/*
@dataElement: HIV.D.DE766 - Facility adherence club
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in facility adherence club (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Facility adherence club (Care)":
  exists "Facility adherence club (Care) Condition"
    or exists "Facility adherence club (Care) Observation"
define "Facility adherence club (Care) Condition":
  [Condition: Concepts."Facility adherence club"]
define "Facility adherence club (Care) Observation":
  "DSD ART models (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Facility adherence club"
/* End of Facility adherence club (Care) */

/*
@dataElement: HIV.D.DE767 - Community ART distribution point
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in community ART distribution point (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Community ART distribution point (Care)":
  exists "Community ART distribution point (Care) Condition"
    or exists "Community ART distribution point (Care) Observation"
define "Community ART distribution point (Care) Condition":
  [Condition: Concepts."Community ART distribution point"]
define "Community ART distribution point (Care) Observation":
  "DSD ART models (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Community ART distribution point"
/* End of Community ART distribution point (Care) */

/*
@dataElement: HIV.D.DE768 - CHW/peer educator community ART group
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in community health worker/peer educator community ART group (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "CHW/peer educator community ART group (Care)":
  exists "CHW/peer educator community ART group (Care) Condition"
    or exists "CHW/peer educator community ART group (Care) Observation"
define "CHW/peer educator community ART group (Care) Condition":
  [Condition: Concepts."CHW/peer educator community ART group"]
define "CHW/peer educator community ART group (Care) Observation":
  "DSD ART models (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."CHW/peer educator community ART group"
/* End of CHW/peer educator community ART group (Care) */

/*
@dataElement: HIV.D.DE769 - Patient/client community ART group
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in patient/client community ART group (DSD ART model)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Patient/client community ART group (Care)":
  exists "Patient/client community ART group (Care) Condition"
    or exists "Patient/client community ART group (Care) Observation"
define "Patient/client community ART group (Care) Condition":
  [Condition: Concepts."Patient/client community ART group"]
define "Patient/client community ART group (Care) Observation":
  "DSD ART models (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Patient/client community ART group"
/* End of Patient/client community ART group (Care) */

/*
@dataElement: HIV.D.DE770 - Other DSD ART model
@activity: HIV.D21 Determine regimen and treatment options
@description: Client is enrolled in another DSD ART model
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other DSD ART model (Care)":
  exists "Other DSD ART model (Care) Condition"
    or exists "Other DSD ART model (Care) Observation"
define "Other DSD ART model (Care) Condition":
  [Condition: Concepts."Other DSD ART model"]
define "Other DSD ART model (Care) Observation":
  "DSD ART models (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other DSD ART model"
/* End of Other DSD ART model (Care) */

/*
@dataElement: HIV.D.DE778 - Syndrome/STI diagnosed
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Syndrome or STI for which client is diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syndrome/STI diagnosed (Care)":
  exists "Syndrome/STI diagnosed (Care) Observation"
define "Syndrome/STI diagnosed (Care) Observation":
  [Observation: Concepts."Syndrome/STI diagnosed - HIV.D.DE778"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Syndrome/STI diagnosed (Care) */

/*
@dataElement: HIV.D.DE779 - Urethral discharge syndrome
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with urethral discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral discharge syndrome (Care)":
  exists "Urethral discharge syndrome (Care) Condition"
    or exists "Urethral discharge syndrome (Care) Observation"
define "Urethral discharge syndrome (Care) Condition":
  [Condition: Concepts."Urethral discharge syndrome - HIV.D.DE779"]
define "Urethral discharge syndrome (Care) Observation":
  "Syndrome/STI diagnosed (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Urethral discharge syndrome - HIV.D.DE779"
/* End of Urethral discharge syndrome (Care) */

/*
@dataElement: HIV.D.DE780 - Vaginal discharge syndrome
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with vaginal discharge syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Vaginal discharge syndrome (Care)":
  exists "Vaginal discharge syndrome (Care) Condition"
    or exists "Vaginal discharge syndrome (Care) Observation"
define "Vaginal discharge syndrome (Care) Condition":
  [Condition: Concepts."Vaginal discharge syndrome - HIV.D.DE780"]
define "Vaginal discharge syndrome (Care) Observation":
  "Syndrome/STI diagnosed (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Vaginal discharge syndrome - HIV.D.DE780"
/* End of Vaginal discharge syndrome (Care) */

/*
@dataElement: HIV.D.DE781 - Lower Abdominal pain 
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with lower abdominal pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lower Abdominal pain  (Care)":
  exists "Lower Abdominal pain  (Care) Condition"
    or exists "Lower Abdominal pain  (Care) Observation"
define "Lower Abdominal pain  (Care) Condition":
  [Condition: Concepts."Lower Abdominal pain  - HIV.D.DE781"]
define "Lower Abdominal pain  (Care) Observation":
  "Syndrome/STI diagnosed (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lower Abdominal pain  - HIV.D.DE781"
/* End of Lower Abdominal pain  (Care) */

/*
@dataElement: HIV.D.DE782 - Genital ulcer disease syndrome
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with genital ulcer disease syndrome
*/
// TODO: Replace placeholder with relevant CQL logic
define "Genital ulcer disease syndrome (Care)":
  exists "Genital ulcer disease syndrome (Care) Condition"
    or exists "Genital ulcer disease syndrome (Care) Observation"
define "Genital ulcer disease syndrome (Care) Condition":
  [Condition: Concepts."Genital ulcer disease syndrome - HIV.D.DE782"]
define "Genital ulcer disease syndrome (Care) Observation":
  "Syndrome/STI diagnosed (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Genital ulcer disease syndrome - HIV.D.DE782"
/* End of Genital ulcer disease syndrome (Care) */

/*
@dataElement: HIV.D.DE783 - Anorectal discharge
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Client diagnosed with anorectal discharge
*/
// TODO: Replace placeholder with relevant CQL logic
define "Anorectal discharge (Care)":
  exists "Anorectal discharge (Care) Condition"
    or exists "Anorectal discharge (Care) Observation"
define "Anorectal discharge (Care) Condition":
  [Condition: Concepts."Anorectal discharge - HIV.D.DE783"]
define "Anorectal discharge (Care) Observation":
  "Syndrome/STI diagnosed (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Anorectal discharge - HIV.D.DE783"
/* End of Anorectal discharge (Care) */

/*
@dataElement: HIV.D.DE784 - Sent for testing
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Specimen sent for testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sent for testing (Care)":
  exists "Sent for testing (Care) Condition"
    or exists "Sent for testing (Care) Observation"
define "Sent for testing (Care) Condition":
  [Condition: Concepts."Sent for testing - HIV.D.DE784"]
define "Sent for testing (Care) Observation":
  "Syndrome/STI diagnosed (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sent for testing - HIV.D.DE784"
/* End of Sent for testing (Care) */

/*
@dataElement: HIV.D.DE785 - Other
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Other syndrome/STI diagnosed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE785)":
  exists "Other (Care|DDE785) Condition"
    or exists "Other (Care|DDE785) Observation"
define "Other (Care|DDE785) Condition":
  [Condition: Concepts."Other - HIV.D.DE785"]
define "Other (Care|DDE785) Observation":
  "Syndrome/STI diagnosed (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.D.DE785"
/* End of Other (Care|DDE785) */

/*
@dataElement: HIV.D.DE787 - Any STI syndrome diagnosed
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Was the client diagnosed with any of the five STI syndromes during this visit?
*/
// TODO: Replace placeholder with relevant CQL logic
define "Any STI syndrome diagnosed (Care)":
  exists "Any STI syndrome diagnosed (Care) Observation"
define "Any STI syndrome diagnosed (Care) Observation":
  [Observation: Concepts."Any STI syndrome diagnosed - HIV.D.DE787"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Any STI syndrome diagnosed (Care) */

/*
@dataElement: HIV.D.DE801 - Syphilis test date
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test date (Care)":
  [Observation: Concepts."Syphilis test date - HIV.D.DE801"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Syphilis test date (Care) Value":
  "Syphilis test date (Care)" O
  return O.value
/* End of Syphilis test date (Care) */

/*
@dataElement: HIV.D.DE802 - Syphilis test result
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Result from syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test result (Care)":
  exists "Syphilis test result (Care) Observation"
define "Syphilis test result (Care) Observation":
  [Observation: Concepts."Syphilis test result - HIV.D.DE802"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Syphilis test result (Care) */

/*
@dataElement: HIV.D.DE803 - Positive
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is positive for syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Care|DDE803)":
  exists "Positive (Care|DDE803) Condition"
    or exists "Positive (Care|DDE803) Observation"
define "Positive (Care|DDE803) Condition":
  [Condition: Concepts."Positive - HIV.D.DE803"]
define "Positive (Care|DDE803) Observation":
  "Syphilis test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.D.DE803"
/* End of Positive (Care|DDE803) */

/*
@dataElement: HIV.D.DE804 - Negative
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is negative for syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Care|DDE804)":
  exists "Negative (Care|DDE804) Condition"
    or exists "Negative (Care|DDE804) Observation"
define "Negative (Care|DDE804) Condition":
  [Condition: Concepts."Negative - HIV.D.DE804"]
define "Negative (Care|DDE804) Observation":
  "Syphilis test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.D.DE804"
/* End of Negative (Care|DDE804) */

/*
@dataElement: HIV.D.DE805 - Inconclusive
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (Care|DDE805)":
  exists "Inconclusive (Care|DDE805) Condition"
    or exists "Inconclusive (Care|DDE805) Observation"
define "Inconclusive (Care|DDE805) Condition":
  [Condition: Concepts."Inconclusive - HIV.D.DE805"]
define "Inconclusive (Care|DDE805) Observation":
  "Syphilis test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Inconclusive - HIV.D.DE805"
/* End of Inconclusive (Care|DDE805) */

/*
@dataElement: HIV.D.DE806 - Syphilis treatment start date
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of initiation of syphilis treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis treatment start date (Care)":
  [Observation: Concepts."Syphilis treatment start date - HIV.D.DE806"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Syphilis treatment start date (Care) Value":
  "Syphilis treatment start date (Care)" O
  return O.value
/* End of Syphilis treatment start date (Care) */

/*
@dataElement: HIV.D.DE807 - Gonorrhoea test date
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test date (Care)":
  [Observation: Concepts."Gonorrhoea test date - HIV.D.DE807"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Gonorrhoea test date (Care) Value":
  "Gonorrhoea test date (Care)" O
  return O.value
/* End of Gonorrhoea test date (Care) */

/*
@dataElement: HIV.D.DE808 - Gonorrhoea test result
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Result from Gonorrhoea test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea test result (Care)":
  exists "Gonorrhoea test result (Care) Observation"
define "Gonorrhoea test result (Care) Observation":
  [Observation: Concepts."Gonorrhoea test result - HIV.D.DE808"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Gonorrhoea test result (Care) */

/*
@dataElement: HIV.D.DE809 - Positive
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is positive for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Care|DDE809)":
  exists "Positive (Care|DDE809) Condition"
    or exists "Positive (Care|DDE809) Observation"
define "Positive (Care|DDE809) Condition":
  [Condition: Concepts."Positive - HIV.D.DE809"]
define "Positive (Care|DDE809) Observation":
  "Gonorrhoea test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.D.DE809"
/* End of Positive (Care|DDE809) */

/*
@dataElement: HIV.D.DE810 - Negative
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is negative for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Care|DDE810)":
  exists "Negative (Care|DDE810) Condition"
    or exists "Negative (Care|DDE810) Observation"
define "Negative (Care|DDE810) Condition":
  [Condition: Concepts."Negative - HIV.D.DE810"]
define "Negative (Care|DDE810) Observation":
  "Gonorrhoea test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.D.DE810"
/* End of Negative (Care|DDE810) */

/*
@dataElement: HIV.D.DE811 - Inconclusive
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Test result is inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (Care|DDE811)":
  exists "Inconclusive (Care|DDE811) Condition"
    or exists "Inconclusive (Care|DDE811) Observation"
define "Inconclusive (Care|DDE811) Condition":
  [Condition: Concepts."Inconclusive - HIV.D.DE811"]
define "Inconclusive (Care|DDE811) Observation":
  "Gonorrhoea test result (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Inconclusive - HIV.D.DE811"
/* End of Inconclusive (Care|DDE811) */

/*
@dataElement: HIV.D.DE812 - Gonorrhoea treatment start date
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Date of initiation of Gonorrhoea treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Gonorrhoea treatment start date (Care)":
  [Observation: Concepts."Gonorrhoea treatment start date - HIV.D.DE812"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Gonorrhoea treatment start date (Care) Value":
  "Gonorrhoea treatment start date (Care)" O
  return O.value
/* End of Gonorrhoea treatment start date (Care) */

/*
@dataElement: HIV.D.DE813 - Type of specimen
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Type of specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Type of specimen (Care)":
  exists "Type of specimen (Care) Observation"
define "Type of specimen (Care) Observation":
  [Observation: Concepts."Type of specimen - HIV.D.DE813"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Type of specimen (Care) */

/*
@dataElement: HIV.D.DE814 - Blood
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Blood specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Blood (Care)":
  exists "Blood (Care) Condition"
    or exists "Blood (Care) Observation"
define "Blood (Care) Condition":
  [Condition: Concepts."Blood - HIV.D.DE814"]
define "Blood (Care) Observation":
  "Type of specimen (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Blood - HIV.D.DE814"
/* End of Blood (Care) */

/*
@dataElement: HIV.D.DE815 - Urine
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Urine specimen to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urine (Care)":
  exists "Urine (Care) Condition"
    or exists "Urine (Care) Observation"
define "Urine (Care) Condition":
  [Condition: Concepts."Urine - HIV.D.DE815"]
define "Urine (Care) Observation":
  "Type of specimen (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Urine - HIV.D.DE815"
/* End of Urine (Care) */

/*
@dataElement: HIV.D.DE816 - Cervical or vaginal swab
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Cervical or vaginal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cervical or vaginal swab (Care)":
  exists "Cervical or vaginal swab (Care) Condition"
    or exists "Cervical or vaginal swab (Care) Observation"
define "Cervical or vaginal swab (Care) Condition":
  [Condition: Concepts."Cervical or vaginal swab - HIV.D.DE816"]
define "Cervical or vaginal swab (Care) Observation":
  "Type of specimen (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cervical or vaginal swab - HIV.D.DE816"
/* End of Cervical or vaginal swab (Care) */

/*
@dataElement: HIV.D.DE817 - Urethral or penile swab
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Urethral or penile swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Urethral or penile swab (Care)":
  exists "Urethral or penile swab (Care) Condition"
    or exists "Urethral or penile swab (Care) Observation"
define "Urethral or penile swab (Care) Condition":
  [Condition: Concepts."Urethral or penile swab - HIV.D.DE817"]
define "Urethral or penile swab (Care) Observation":
  "Type of specimen (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Urethral or penile swab - HIV.D.DE817"
/* End of Urethral or penile swab (Care) */

/*
@dataElement: HIV.D.DE818 - Rectal swab
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Rectal swab to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rectal swab (Care)":
  exists "Rectal swab (Care) Condition"
    or exists "Rectal swab (Care) Observation"
define "Rectal swab (Care) Condition":
  [Condition: Concepts."Rectal swab - HIV.D.DE818"]
define "Rectal swab (Care) Observation":
  "Type of specimen (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Rectal swab - HIV.D.DE818"
/* End of Rectal swab (Care) */

/*
@dataElement: HIV.D.DE819 - Other
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Other specimen type to be collected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE819)":
  exists "Other (Care|DDE819) Condition"
    or exists "Other (Care|DDE819) Observation"
define "Other (Care|DDE819) Condition":
  [Condition: Concepts."Other - HIV.D.DE819"]
define "Other (Care|DDE819) Observation":
  "Type of specimen (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.D.DE819"
/* End of Other (Care|DDE819) */

/*
@dataElement: HIV.D.DE828 - Neisseria gonorrhoeae test type
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Type of diagnostic test used for Neisseria gonorrhoeae
*/
// TODO: Replace placeholder with relevant CQL logic
define "Neisseria gonorrhoeae test type (Care)":
  exists "Neisseria gonorrhoeae test type (Care) Observation"
define "Neisseria gonorrhoeae test type (Care) Observation":
  [Observation: Concepts."Neisseria gonorrhoeae test type - HIV.D.DE828"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Neisseria gonorrhoeae test type (Care) */

/*
@dataElement: HIV.D.DE829 - NAAT
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Nucleic Acid Amplification Test (NAAT) used
*/
// TODO: Replace placeholder with relevant CQL logic
define "NAAT (Care)":
  exists "NAAT (Care) Condition"
    or exists "NAAT (Care) Observation"
define "NAAT (Care) Condition":
  [Condition: Concepts."NAAT - HIV.D.DE829"]
define "NAAT (Care) Observation":
  "Neisseria gonorrhoeae test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."NAAT - HIV.D.DE829"
/* End of NAAT (Care) */

/*
@dataElement: HIV.D.DE830 - POC Test
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Point-of-care (POC) test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "POC Test (Care)":
  exists "POC Test (Care) Condition"
    or exists "POC Test (Care) Observation"
define "POC Test (Care) Condition":
  [Condition: Concepts."POC Test - HIV.D.DE830"]
define "POC Test (Care) Observation":
  "Neisseria gonorrhoeae test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."POC Test - HIV.D.DE830"
/* End of POC Test (Care) */

/*
@dataElement: HIV.D.DE831 - Culture
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Culture test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Culture (Care)":
  exists "Culture (Care) Condition"
    or exists "Culture (Care) Observation"
define "Culture (Care) Condition":
  [Condition: Concepts."Culture - HIV.D.DE831"]
define "Culture (Care) Observation":
  "Neisseria gonorrhoeae test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Culture - HIV.D.DE831"
/* End of Culture (Care) */

/*
@dataElement: HIV.D.DE832 - Microscopy
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Microscopy test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Microscopy (Care)":
  exists "Microscopy (Care) Condition"
    or exists "Microscopy (Care) Observation"
define "Microscopy (Care) Condition":
  [Condition: Concepts."Microscopy - HIV.D.DE832"]
define "Microscopy (Care) Observation":
  "Neisseria gonorrhoeae test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Microscopy - HIV.D.DE832"
/* End of Microscopy (Care) */

/*
@dataElement: HIV.D.DE833 - Other
@activity: HIV.D26 Offer sexual and reproductive health services
@description: Other type of test used
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE833)":
  exists "Other (Care|DDE833) Condition"
    or exists "Other (Care|DDE833) Observation"
define "Other (Care|DDE833) Condition":
  [Condition: Concepts."Other - HIV.D.DE833"]
define "Other (Care|DDE833) Observation":
  "Neisseria gonorrhoeae test type (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.D.DE833"
/* End of Other (Care|DDE833) */

/*
@dataElement: HIV.D.DE903 - Medication/drug
@activity: HIV.D21 Determine regimen and treatment options
@description: Current or considered medication/drug, for the purpose of determining drug interactions
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medication/drug (Care)":
  exists "Medication/drug (Care) Observation"
define "Medication/drug (Care) Observation":
  [Observation: Concepts."Medication/drug"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Medication/drug (Care) */

/*
@dataElement: HIV.D.DE904 - Rifampicin
@activity: HIV.D21 Determine regimen and treatment options
@description: Rifampicin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rifampicin (Care)":
  exists "Rifampicin (Care) Condition"
    or exists "Rifampicin (Care) Observation"
define "Rifampicin (Care) Condition":
  [Condition: Concepts."Rifampicin"]
define "Rifampicin (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Rifampicin"
/* End of Rifampicin (Care) */

/*
@dataElement: HIV.D.DE905 - Halofantrine
@activity: HIV.D21 Determine regimen and treatment options
@description: Halofantrine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Halofantrine (Care)":
  exists "Halofantrine (Care) Condition"
    or exists "Halofantrine (Care) Observation"
define "Halofantrine (Care) Condition":
  [Condition: Concepts."Halofantrine"]
define "Halofantrine (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Halofantrine"
/* End of Halofantrine (Care) */

/*
@dataElement: HIV.D.DE906 - Lovastatin
@activity: HIV.D21 Determine regimen and treatment options
@description: Lovastatin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lovastatin (Care)":
  exists "Lovastatin (Care) Condition"
    or exists "Lovastatin (Care) Observation"
define "Lovastatin (Care) Condition":
  [Condition: Concepts."Lovastatin"]
define "Lovastatin (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lovastatin"
/* End of Lovastatin (Care) */

/*
@dataElement: HIV.D.DE907 - Simvastatin
@activity: HIV.D21 Determine regimen and treatment options
@description: Simvastatin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Simvastatin (Care)":
  exists "Simvastatin (Care) Condition"
    or exists "Simvastatin (Care) Observation"
define "Simvastatin (Care) Condition":
  [Condition: Concepts."Simvastatin"]
define "Simvastatin (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Simvastatin"
/* End of Simvastatin (Care) */

/*
@dataElement: HIV.D.DE908 - Hormonal contraception
@activity: HIV.D21 Determine regimen and treatment options
@description: Hormonal contraception currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Hormonal contraception (Care)":
  exists "Hormonal contraception (Care) Condition"
    or exists "Hormonal contraception (Care) Observation"
define "Hormonal contraception (Care) Condition":
  [Condition: Concepts."Hormonal contraception"]
define "Hormonal contraception (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Hormonal contraception"
/* End of Hormonal contraception (Care) */

/*
@dataElement: HIV.D.DE909 - Metformin
@activity: HIV.D21 Determine regimen and treatment options
@description: Metformin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Metformin (Care)":
  exists "Metformin (Care) Condition"
    or exists "Metformin (Care) Observation"
define "Metformin (Care) Condition":
  [Condition: Concepts."Metformin"]
define "Metformin (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Metformin"
/* End of Metformin (Care) */

/*
@dataElement: HIV.D.DE910 - Astemizole
@activity: HIV.D21 Determine regimen and treatment options
@description: Astemizole currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Astemizole (Care)":
  exists "Astemizole (Care) Condition"
    or exists "Astemizole (Care) Observation"
define "Astemizole (Care) Condition":
  [Condition: Concepts."Astemizole"]
define "Astemizole (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Astemizole"
/* End of Astemizole (Care) */

/*
@dataElement: HIV.D.DE911 - Terfenadine
@activity: HIV.D21 Determine regimen and treatment options
@description: Terfenadine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Terfenadine (Care)":
  exists "Terfenadine (Care) Condition"
    or exists "Terfenadine (Care) Observation"
define "Terfenadine (Care) Condition":
  [Condition: Concepts."Terfenadine"]
define "Terfenadine (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Terfenadine"
/* End of Terfenadine (Care) */

/*
@dataElement: HIV.D.DE912 - TDF
@activity: HIV.D21 Determine regimen and treatment options
@description: TDF currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "TDF (Care|DDE912)":
  exists "TDF (Care|DDE912) Condition"
    or exists "TDF (Care|DDE912) Observation"
define "TDF (Care|DDE912) Condition":
  [Condition: Concepts."TDF - HIV.D.DE912"]
define "TDF (Care|DDE912) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TDF - HIV.D.DE912"
/* End of TDF (Care|DDE912) */

/*
@dataElement: HIV.D.DE913 - Simeprevir
@activity: HIV.D21 Determine regimen and treatment options
@description: Simeprevir currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Simeprevir (Care)":
  exists "Simeprevir (Care) Condition"
    or exists "Simeprevir (Care) Observation"
define "Simeprevir (Care) Condition":
  [Condition: Concepts."Simeprevir"]
define "Simeprevir (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Simeprevir"
/* End of Simeprevir (Care) */

/*
@dataElement: HIV.D.DE914 - Ombitasvir + paritaprevir/ritonavir + dasabuvir
@activity: HIV.D21 Determine regimen and treatment options
@description: Ombitasvir + paritaprevir/ritonavir + dasabuvir currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care)":
  exists "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Condition"
    or exists "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Observation"
define "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Condition":
  [Condition: Concepts."Ombitasvir + paritaprevir/ritonavir + dasabuvir"]
define "Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Ombitasvir + paritaprevir/ritonavir + dasabuvir"
/* End of Ombitasvir + paritaprevir/ritonavir + dasabuvir (Care) */

/*
@dataElement: HIV.D.DE915 - Methadone
@activity: HIV.D21 Determine regimen and treatment options
@description: Methadone currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Methadone (Care|DDE915)":
  exists "Methadone (Care|DDE915) Condition"
    or exists "Methadone (Care|DDE915) Observation"
define "Methadone (Care|DDE915) Condition":
  [Condition: Concepts."Methadone - HIV.D.DE915"]
define "Methadone (Care|DDE915) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Methadone - HIV.D.DE915"
/* End of Methadone (Care|DDE915) */

/*
@dataElement: HIV.D.DE916 - Buprenorphine
@activity: HIV.D21 Determine regimen and treatment options
@description: Buprenorphine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Buprenorphine (Care|DDE916)":
  exists "Buprenorphine (Care|DDE916) Condition"
    or exists "Buprenorphine (Care|DDE916) Observation"
define "Buprenorphine (Care|DDE916) Condition":
  [Condition: Concepts."Buprenorphine - HIV.D.DE916"]
define "Buprenorphine (Care|DDE916) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Buprenorphine - HIV.D.DE916"
/* End of Buprenorphine (Care|DDE916) */

/*
@dataElement: HIV.D.DE917 - Dofetilide
@activity: HIV.D21 Determine regimen and treatment options
@description: Dofetilide currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dofetilide (Care)":
  exists "Dofetilide (Care) Condition"
    or exists "Dofetilide (Care) Observation"
define "Dofetilide (Care) Condition":
  [Condition: Concepts."Dofetilide"]
define "Dofetilide (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Dofetilide"
/* End of Dofetilide (Care) */

/*
@dataElement: HIV.D.DE918 - Carbamazepine
@activity: HIV.D21 Determine regimen and treatment options
@description: Carbamazepine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Carbamazepine (Care)":
  exists "Carbamazepine (Care) Condition"
    or exists "Carbamazepine (Care) Observation"
define "Carbamazepine (Care) Condition":
  [Condition: Concepts."Carbamazepine"]
define "Carbamazepine (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Carbamazepine"
/* End of Carbamazepine (Care) */

/*
@dataElement: HIV.D.DE919 - Phenobarbital
@activity: HIV.D21 Determine regimen and treatment options
@description: Phenobarbital currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Phenobarbital (Care)":
  exists "Phenobarbital (Care) Condition"
    or exists "Phenobarbital (Care) Observation"
define "Phenobarbital (Care) Condition":
  [Condition: Concepts."Phenobarbital"]
define "Phenobarbital (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Phenobarbital"
/* End of Phenobarbital (Care) */

/*
@dataElement: HIV.D.DE920 - Phenytoin
@activity: HIV.D21 Determine regimen and treatment options
@description: Phenytoin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Phenytoin (Care)":
  exists "Phenytoin (Care) Condition"
    or exists "Phenytoin (Care) Observation"
define "Phenytoin (Care) Condition":
  [Condition: Concepts."Phenytoin"]
define "Phenytoin (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Phenytoin"
/* End of Phenytoin (Care) */

/*
@dataElement: HIV.D.DE921 - Polyvalent cation products containing Mg, Al, Fe, Ca and Zn
@activity: HIV.D21 Determine regimen and treatment options
@description: Polyvalent cation products containing Mg, Al, Fe, Ca and Zn currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care)":
  exists "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Condition"
    or exists "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Observation"
define "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Condition":
  [Condition: Concepts."Polyvalent cation products containing Mg, Al, Fe, Ca and Zn"]
define "Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Polyvalent cation products containing Mg, Al, Fe, Ca and Zn"
/* End of Polyvalent cation products containing Mg, Al, Fe, Ca and Zn (Care) */

/*
@dataElement: HIV.D.DE922 - Amodiaquine
@activity: HIV.D21 Determine regimen and treatment options
@description: Amodiaquine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Amodiaquine (Care)":
  exists "Amodiaquine (Care) Condition"
    or exists "Amodiaquine (Care) Observation"
define "Amodiaquine (Care) Condition":
  [Condition: Concepts."Amodiaquine"]
define "Amodiaquine (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Amodiaquine"
/* End of Amodiaquine (Care) */

/*
@dataElement: HIV.D.DE923 - Cisapride
@activity: HIV.D21 Determine regimen and treatment options
@description: Cisapride currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Cisapride (Care)":
  exists "Cisapride (Care) Condition"
    or exists "Cisapride (Care) Observation"
define "Cisapride (Care) Condition":
  [Condition: Concepts."Cisapride"]
define "Cisapride (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Cisapride"
/* End of Cisapride (Care) */

/*
@dataElement: HIV.D.DE924 - Ergotamine
@activity: HIV.D21 Determine regimen and treatment options
@description: Ergotamine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Ergotamine (Care)":
  exists "Ergotamine (Care) Condition"
    or exists "Ergotamine (Care) Observation"
define "Ergotamine (Care) Condition":
  [Condition: Concepts."Ergotamine"]
define "Ergotamine (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Ergotamine"
/* End of Ergotamine (Care) */

/*
@dataElement: HIV.D.DE925 - Dihydroergotamine
@activity: HIV.D21 Determine regimen and treatment options
@description: Dihydroergotamine currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dihydroergotamine (Care)":
  exists "Dihydroergotamine (Care) Condition"
    or exists "Dihydroergotamine (Care) Observation"
define "Dihydroergotamine (Care) Condition":
  [Condition: Concepts."Dihydroergotamine"]
define "Dihydroergotamine (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Dihydroergotamine"
/* End of Dihydroergotamine (Care) */

/*
@dataElement: HIV.D.DE926 - Midazolam
@activity: HIV.D21 Determine regimen and treatment options
@description: Midazolam currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Midazolam (Care)":
  exists "Midazolam (Care) Condition"
    or exists "Midazolam (Care) Observation"
define "Midazolam (Care) Condition":
  [Condition: Concepts."Midazolam"]
define "Midazolam (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Midazolam"
/* End of Midazolam (Care) */

/*
@dataElement: HIV.D.DE927 - Triazolam
@activity: HIV.D21 Determine regimen and treatment options
@description: Triazolam currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Triazolam (Care)":
  exists "Triazolam (Care) Condition"
    or exists "Triazolam (Care) Observation"
define "Triazolam (Care) Condition":
  [Condition: Concepts."Triazolam"]
define "Triazolam (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Triazolam"
/* End of Triazolam (Care) */

/*
@dataElement: HIV.D.DE928 - Estrogen-based hormonal contraception
@activity: HIV.D21 Determine regimen and treatment options
@description: Estrogen-based hormonal contraception currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Estrogen-based hormonal contraception (Care)":
  exists "Estrogen-based hormonal contraception (Care) Condition"
    or exists "Estrogen-based hormonal contraception (Care) Observation"
define "Estrogen-based hormonal contraception (Care) Condition":
  [Condition: Concepts."Estrogen-based hormonal contraception"]
define "Estrogen-based hormonal contraception (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Estrogen-based hormonal contraception"
/* End of Estrogen-based hormonal contraception (Care) */

/*
@dataElement: HIV.D.DE929 - Ribavirin
@activity: HIV.D21 Determine regimen and treatment options
@description: Ribavirin currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Ribavirin (Care)":
  exists "Ribavirin (Care) Condition"
    or exists "Ribavirin (Care) Observation"
define "Ribavirin (Care) Condition":
  [Condition: Concepts."Ribavirin"]
define "Ribavirin (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Ribavirin"
/* End of Ribavirin (Care) */

/*
@dataElement: HIV.D.DE930 - Peginterferon alfa-2a
@activity: HIV.D21 Determine regimen and treatment options
@description: Peginterferon alfa-2a currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Peginterferon alfa-2a (Care)":
  exists "Peginterferon alfa-2a (Care) Condition"
    or exists "Peginterferon alfa-2a (Care) Observation"
define "Peginterferon alfa-2a (Care) Condition":
  [Condition: Concepts."Peginterferon alfa-2a"]
define "Peginterferon alfa-2a (Care) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Peginterferon alfa-2a"
/* End of Peginterferon alfa-2a (Care) */

/*
@dataElement: HIV.D.DE931 - Other
@activity: HIV.D21 Determine regimen and treatment options
@description: Other medication currently being taken by, or considered for, client
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Care|DDE931)":
  exists "Other (Care|DDE931) Condition"
    or exists "Other (Care|DDE931) Observation"
define "Other (Care|DDE931) Condition":
  [Condition: Concepts."Other - HIV.D.DE931"]
define "Other (Care|DDE931) Observation":
  "Medication/drug (Care) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.D.DE931"
/* End of Other (Care|DDE931) */

/*
@dataElement: HIV.D.DE933 - Medication change recommended
@activity: HIV.D21 Determine regimen and treatment options
@description: A medication change is recommended for the client based upon current or considered medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Medication change recommended (Care)":
  exists "Medication change recommended (Care) Observation"
define "Medication change recommended (Care) Observation":
  [Observation: Concepts."Medication change recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Medication change recommended (Care) */

/*
@dataElement: HIV.D.DE934 - WHO HIV clinical stage condition or symptom
@activity: HIV.D15 Determine clinical stage of HIV
@description: New or recurrent clinical events used to categorize HIV disease severity based at baseline and follow up
*/
// TODO: Replace placeholder with relevant CQL logic
define "WHO HIV clinical stage condition or symptom (HIV)":
  exists "WHO HIV clinical stage condition or symptom (HIV) Observation"
define "WHO HIV clinical stage condition or symptom (HIV) Observation":
  [Observation: Concepts."WHO HIV clinical stage condition or symptom - HIV.D.DE934"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of WHO HIV clinical stage condition or symptom (HIV) */

/*
@dataElement: HIV.D.DE935 - Pulmonary TB
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include pulmonary TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Pulmonary TB (HIV)":
  exists "Pulmonary TB (HIV) Condition"
    or exists "Pulmonary TB (HIV) Observation"
define "Pulmonary TB (HIV) Condition":
  [Condition: Concepts."Pulmonary TB - HIV.D.DE935"]
define "Pulmonary TB (HIV) Observation":
  "WHO HIV clinical stage condition or symptom (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Pulmonary TB - HIV.D.DE935"
/* End of Pulmonary TB (HIV) */

/*
@dataElement: HIV.D.DE936 - Lymph node TB
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include lymph node TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lymph node TB (HIV)":
  exists "Lymph node TB (HIV) Condition"
    or exists "Lymph node TB (HIV) Observation"
define "Lymph node TB (HIV) Condition":
  [Condition: Concepts."Lymph node TB - HIV.D.DE936"]
define "Lymph node TB (HIV) Observation":
  "WHO HIV clinical stage condition or symptom (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lymph node TB - HIV.D.DE936"
/* End of Lymph node TB (HIV) */

/*
@dataElement: HIV.D.DE937 - Extrapulmonary TB
@activity: HIV.D15 Determine clinical stage of HIV
@description: Client's symptoms include extrapulmonary tuberculosis (TB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Extrapulmonary TB (HIV)":
  exists "Extrapulmonary TB (HIV) Condition"
    or exists "Extrapulmonary TB (HIV) Observation"
define "Extrapulmonary TB (HIV) Condition":
  [Condition: Concepts."Extrapulmonary TB - HIV.D.DE937"]
define "Extrapulmonary TB (HIV) Observation":
  "WHO HIV clinical stage condition or symptom (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Extrapulmonary TB - HIV.D.DE937"
/* End of Extrapulmonary TB (HIV) */

/*
@dataElement: HIV.D.DE939 - TB diagnosis result
@activity: HIV.D8 Capture or update client history
@description: Final result of the TB investigation (bacteriological and/or clinical)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB diagnosis result (HIV)":
  exists "TB diagnosis result (HIV) Observation"
define "TB diagnosis result (HIV) Observation":
  [Observation: Concepts."TB diagnosis result"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of TB diagnosis result (HIV) */

/*
@dataElement: HIV.D.DE940 - Diagnosed TB
@activity: HIV.D8 Capture or update client history
@description: Client is diagnosed with TB disease
*/
// TODO: Replace placeholder with relevant CQL logic
define "Diagnosed TB (HIV)":
  exists "Diagnosed TB (HIV) Condition"
    or exists "Diagnosed TB (HIV) Observation"
define "Diagnosed TB (HIV) Condition":
  [Condition: Concepts."Diagnosed TB"]
define "Diagnosed TB (HIV) Observation":
  "TB diagnosis result (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Diagnosed TB"
/* End of Diagnosed TB (HIV) */

/*
@dataElement: HIV.D.DE941 - TB excluded
@activity: HIV.D8 Capture or update client history
@description: Client is not diagnosed with TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB excluded (HIV)":
  exists "TB excluded (HIV) Condition"
    or exists "TB excluded (HIV) Observation"
define "TB excluded (HIV) Condition":
  [Condition: Concepts."TB excluded"]
define "TB excluded (HIV) Observation":
  "TB diagnosis result (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TB excluded"
/* End of TB excluded (HIV) */

/*
@dataElement: HIV.D.DE945 - Presumptive TB
@activity: HIV.D8 Capture or update client history
@description: Client has signs or symptoms of tuberculosis (TB) without laboratory confirmation
*/
// TODO: Replace placeholder with relevant CQL logic
define "Presumptive TB (HIV)":
  exists "Presumptive TB (HIV) Observation"
define "Presumptive TB (HIV) Observation":
  [Observation: Concepts."Presumptive TB - HIV.D.DE945"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Presumptive TB (HIV) */

/*
@dataElement: HIV.D.DE952 - Date of TB diagnosis
@activity: HIV.D8 Capture or update client history
@description: The date when the diagnosis was established
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of TB diagnosis (HIV)":
  [Observation: Concepts."Date of TB diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of TB diagnosis (HIV) Value":
  "Date of TB diagnosis (HIV)" O
  return O.value
/* End of Date of TB diagnosis (HIV) */

/*
@dataElement: HIV.D.DE954 - TB preventive treatment TPT start date
@activity: HIV.D8 Capture or update client history
@description: The date on which the client began taking TPT
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB preventive treatment TPT start date (HIV)":
  [Observation: Concepts."TB preventive treatment TPT start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "TB preventive treatment TPT start date (HIV) Value":
  "TB preventive treatment TPT start date (HIV)" O
  return O.value
/* End of TB preventive treatment TPT start date (HIV) */

/*
@dataElement: HIV.D.DE956 - TB screening algorithm
@activity: HIV.D4 Screen for TB
@description: Screening algorithm selected for screening activities
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB screening algorithm (HIV)":
  exists "TB screening algorithm (HIV) Observation"
define "TB screening algorithm (HIV) Observation":
  [Observation: Concepts."TB screening algorithm"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of TB screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE957 - Screening with cough
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on cough symptom
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screening with cough (HIV)":
  exists "Screening with cough (HIV) Condition"
    or exists "Screening with cough (HIV) Observation"
define "Screening with cough (HIV) Condition":
  [Condition: Concepts."Screening with cough"]
define "Screening with cough (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Screening with cough"
/* End of Screening with cough (HIV) */

/*
@dataElement: HIV.D.DE958 - Screening with any TB symptom
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on any TB symptom
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screening with any TB symptom (HIV)":
  exists "Screening with any TB symptom (HIV) Condition"
    or exists "Screening with any TB symptom (HIV) Observation"
define "Screening with any TB symptom (HIV) Condition":
  [Condition: Concepts."Screening with any TB symptom"]
define "Screening with any TB symptom (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Screening with any TB symptom"
/* End of Screening with any TB symptom (HIV) */

/*
@dataElement: HIV.D.DE959 - W4SS single screening algorithm
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on the WHO-recommended four-symptom screen
*/
// TODO: Replace placeholder with relevant CQL logic
define "W4SS single screening algorithm (HIV)":
  exists "W4SS single screening algorithm (HIV) Condition"
    or exists "W4SS single screening algorithm (HIV) Observation"
define "W4SS single screening algorithm (HIV) Condition":
  [Condition: Concepts."W4SS single screening algorithm"]
define "W4SS single screening algorithm (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."W4SS single screening algorithm"
/* End of W4SS single screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE960 - CRP single screening algorithm
@activity: HIV.D4 Screen for TB
@description: Client screened for TB based on C-reactive protein (CRP) testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "CRP single screening algorithm (HIV)":
  exists "CRP single screening algorithm (HIV) Condition"
    or exists "CRP single screening algorithm (HIV) Observation"
define "CRP single screening algorithm (HIV) Condition":
  [Condition: Concepts."CRP single screening algorithm"]
define "CRP single screening algorithm (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."CRP single screening algorithm"
/* End of CRP single screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE961 - CXR single screening algorithm
@activity: HIV.D4 Screen for TB
@description: Client screened for TB with a chest radiography (CXR)
*/
// TODO: Replace placeholder with relevant CQL logic
define "CXR single screening algorithm (HIV)":
  exists "CXR single screening algorithm (HIV) Condition"
    or exists "CXR single screening algorithm (HIV) Observation"
define "CXR single screening algorithm (HIV) Condition":
  [Condition: Concepts."CXR single screening algorithm"]
define "CXR single screening algorithm (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."CXR single screening algorithm"
/* End of CXR single screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE962 - Parallel screening algorithm with W4SS and CRP
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using parallel screening with WHO-recommended four-symptom screen and C-reactive protein (CRP) testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Parallel screening algorithm with W4SS and CRP (HIV)":
  exists "Parallel screening algorithm with W4SS and CRP (HIV) Condition"
    or exists "Parallel screening algorithm with W4SS and CRP (HIV) Observation"
define "Parallel screening algorithm with W4SS and CRP (HIV) Condition":
  [Condition: Concepts."Parallel screening algorithm with W4SS and CRP"]
define "Parallel screening algorithm with W4SS and CRP (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Parallel screening algorithm with W4SS and CRP"
/* End of Parallel screening algorithm with W4SS and CRP (HIV) */

/*
@dataElement: HIV.D.DE963 - Sequential positive screening algorithm with W4SS and CRP
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential positive screening with WHO-recommended four-symptom screen and C-reactive protein (CRP) testing.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential positive screening algorithm with W4SS and CRP (HIV)":
  exists "Sequential positive screening algorithm with W4SS and CRP (HIV) Condition"
    or exists "Sequential positive screening algorithm with W4SS and CRP (HIV) Observation"
define "Sequential positive screening algorithm with W4SS and CRP (HIV) Condition":
  [Condition: Concepts."Sequential positive screening algorithm with W4SS and CRP"]
define "Sequential positive screening algorithm with W4SS and CRP (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sequential positive screening algorithm with W4SS and CRP"
/* End of Sequential positive screening algorithm with W4SS and CRP (HIV) */

/*
@dataElement: HIV.D.DE964 - Sequential negative screening algorithm with W4SS and CRP
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential negative screening with WHO-recommended four-symptom screen and C-reactive protein (CRP) testing
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential negative screening algorithm with W4SS and CRP (HIV)":
  exists "Sequential negative screening algorithm with W4SS and CRP (HIV) Condition"
    or exists "Sequential negative screening algorithm with W4SS and CRP (HIV) Observation"
define "Sequential negative screening algorithm with W4SS and CRP (HIV) Condition":
  [Condition: Concepts."Sequential negative screening algorithm with W4SS and CRP"]
define "Sequential negative screening algorithm with W4SS and CRP (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sequential negative screening algorithm with W4SS and CRP"
/* End of Sequential negative screening algorithm with W4SS and CRP (HIV) */

/*
@dataElement: HIV.D.DE965 - Parallel screening algorithm with W4SS and CXR
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using the parallel screening algorithm with W4SS and CXR
*/
// TODO: Replace placeholder with relevant CQL logic
define "Parallel screening algorithm with W4SS and CXR (HIV)":
  exists "Parallel screening algorithm with W4SS and CXR (HIV) Condition"
    or exists "Parallel screening algorithm with W4SS and CXR (HIV) Observation"
define "Parallel screening algorithm with W4SS and CXR (HIV) Condition":
  [Condition: Concepts."Parallel screening algorithm with W4SS and CXR"]
define "Parallel screening algorithm with W4SS and CXR (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Parallel screening algorithm with W4SS and CXR"
/* End of Parallel screening algorithm with W4SS and CXR (HIV) */

/*
@dataElement: HIV.D.DE966 - Sequential positive screening algorithm with W4SS and CXR
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential positive screening with WHO-recommended four-symptom screen and chest radiography
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential positive screening algorithm with W4SS and CXR (HIV)":
  exists "Sequential positive screening algorithm with W4SS and CXR (HIV) Condition"
    or exists "Sequential positive screening algorithm with W4SS and CXR (HIV) Observation"
define "Sequential positive screening algorithm with W4SS and CXR (HIV) Condition":
  [Condition: Concepts."Sequential positive screening algorithm with W4SS and CXR"]
define "Sequential positive screening algorithm with W4SS and CXR (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sequential positive screening algorithm with W4SS and CXR"
/* End of Sequential positive screening algorithm with W4SS and CXR (HIV) */

/*
@dataElement: HIV.D.DE967 - Sequential negative screening algorithm with W4SS and CXR
@activity: HIV.D4 Screen for TB
@description: Client screened for TB using sequential negative screening with WHO-recommended four-symptom screen and chest radiography
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sequential negative screening algorithm with W4SS and CXR (HIV)":
  exists "Sequential negative screening algorithm with W4SS and CXR (HIV) Condition"
    or exists "Sequential negative screening algorithm with W4SS and CXR (HIV) Observation"
define "Sequential negative screening algorithm with W4SS and CXR (HIV) Condition":
  [Condition: Concepts."Sequential negative screening algorithm with W4SS and CXR"]
define "Sequential negative screening algorithm with W4SS and CXR (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sequential negative screening algorithm with W4SS and CXR"
/* End of Sequential negative screening algorithm with W4SS and CXR (HIV) */

/*
@dataElement: HIV.D.DE968 - Screening with mWRD
@activity: HIV.D4 Screen for TB
@description: Client screened for TB with a molecular WHO-recommended rapid diagnostic test (mWRD), such as an Xpert MTB/RIF test to detect Mycobacterium tuberculosis (MTB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screening with mWRD (HIV)":
  exists "Screening with mWRD (HIV) Condition"
    or exists "Screening with mWRD (HIV) Observation"
define "Screening with mWRD (HIV) Condition":
  [Condition: Concepts."Screening with mWRD"]
define "Screening with mWRD (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Screening with mWRD"
/* End of Screening with mWRD (HIV) */

/*
@dataElement: HIV.D.DE969 - Clinical assessment
@activity: HIV.D4 Screen for TB
@description: Client screened for with a clinical evaluation for tuberculosis (TB) based on national guidelines. Clinical assessment may be used as an eligibility evaluation for testing with LF-LAM or for empiric TB treatment.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Clinical assessment (HIV)":
  exists "Clinical assessment (HIV) Condition"
    or exists "Clinical assessment (HIV) Observation"
define "Clinical assessment (HIV) Condition":
  [Condition: Concepts."Clinical assessment"]
define "Clinical assessment (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Clinical assessment"
/* End of Clinical assessment (HIV) */

/*
@dataElement: HIV.D.DE970 - Other TB screening algorithm
@activity: HIV.D4 Screen for TB
@description: Client screened for tuberculosis (TB) with a different screening method not listed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other TB screening algorithm (HIV)":
  exists "Other TB screening algorithm (HIV) Condition"
    or exists "Other TB screening algorithm (HIV) Observation"
define "Other TB screening algorithm (HIV) Condition":
  [Condition: Concepts."Other TB screening algorithm"]
define "Other TB screening algorithm (HIV) Observation":
  "TB screening algorithm (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other TB screening algorithm"
/* End of Other TB screening algorithm (HIV) */

/*
@dataElement: HIV.D.DE973 - Symptoms of TB
@activity: HIV.D4 Screen for TB
@description: Symptoms that may indicate TB disease in clients living with HIV, based on a clinical algorithm
*/
// TODO: Replace placeholder with relevant CQL logic
define "Symptoms of TB (HIV)":
  exists "Symptoms of TB (HIV) Observation"
define "Symptoms of TB (HIV) Observation":
  [Observation: Concepts."Symptoms of TB"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Symptoms of TB (HIV) */

/*
@dataElement: HIV.D.DE974 - Current cough
@activity: HIV.D4 Screen for TB
@description: Client has a cough regardless of duration
*/
// TODO: Replace placeholder with relevant CQL logic
define "Current cough (HIV)":
  exists "Current cough (HIV) Condition"
    or exists "Current cough (HIV) Observation"
define "Current cough (HIV) Condition":
  [Condition: Concepts."Current cough"]
define "Current cough (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Current cough"
/* End of Current cough (HIV) */

/*
@dataElement: HIV.D.DE975 - Prolonged cough >=2w
@activity: HIV.D4 Screen for TB
@description: Client has a prolonged cough of 2 weeks or more
*/
// TODO: Replace placeholder with relevant CQL logic
define "Prolonged cough >=2w (HIV)":
  exists "Prolonged cough >=2w (HIV) Condition"
    or exists "Prolonged cough >=2w (HIV) Observation"
define "Prolonged cough >=2w (HIV) Condition":
  [Condition: Concepts."Prolonged cough >=2w"]
define "Prolonged cough >=2w (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Prolonged cough >=2w"
/* End of Prolonged cough >=2w (HIV) */

/*
@dataElement: HIV.D.DE976 - Fever of 39 °C or greater
@activity: HIV.D4 Screen for TB
@description: Client has a fever with a measured temperature of 102.2 °F/39 °C or greater
*/
// TODO: Replace placeholder with relevant CQL logic
define "Fever of 39 °C or greater (HIV)":
  exists "Fever of 39 °C or greater (HIV) Condition"
    or exists "Fever of 39 °C or greater (HIV) Observation"
define "Fever of 39 °C or greater (HIV) Condition":
  [Condition: Concepts."Fever of 39 °C or greater"]
define "Fever of 39 °C or greater (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Fever of 39 °C or greater"
/* End of Fever of 39 °C or greater (HIV) */

/*
@dataElement: HIV.D.DE977 - Weight loss reported
@activity: HIV.D4 Screen for TB
@description: Unexplained weight loss
*/
// TODO: Replace placeholder with relevant CQL logic
define "Weight loss reported (HIV)":
  exists "Weight loss reported (HIV) Condition"
    or exists "Weight loss reported (HIV) Observation"
define "Weight loss reported (HIV) Condition":
  [Condition: Concepts."Weight loss reported"]
define "Weight loss reported (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Weight loss reported"
/* End of Weight loss reported (HIV) */

/*
@dataElement: HIV.D.DE978 - Night sweats
@activity: HIV.D4 Screen for TB
@description: Client reports experiencing night sweats
*/
// TODO: Replace placeholder with relevant CQL logic
define "Night sweats (HIV)":
  exists "Night sweats (HIV) Condition"
    or exists "Night sweats (HIV) Observation"
define "Night sweats (HIV) Condition":
  [Condition: Concepts."Night sweats"]
define "Night sweats (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Night sweats"
/* End of Night sweats (HIV) */

/*
@dataElement: HIV.D.DE979 - Poor weight gain
@activity: HIV.D4 Screen for TB
@description: Client reports poor weight gain of child or infant or growth curve flattening or weight for age <-2 Z-scores.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Poor weight gain (HIV)":
  exists "Poor weight gain (HIV) Condition"
    or exists "Poor weight gain (HIV) Observation"
define "Poor weight gain (HIV) Condition":
  [Condition: Concepts."Poor weight gain"]
define "Poor weight gain (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Poor weight gain"
/* End of Poor weight gain (HIV) */

/*
@dataElement: HIV.D.DE980 - Reduced playfulness
@activity: HIV.D4 Screen for TB
@description: Client reports reduced playfulness of child
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reduced playfulness (HIV)":
  exists "Reduced playfulness (HIV) Condition"
    or exists "Reduced playfulness (HIV) Observation"
define "Reduced playfulness (HIV) Condition":
  [Condition: Concepts."Reduced playfulness"]
define "Reduced playfulness (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reduced playfulness"
/* End of Reduced playfulness (HIV) */

/*
@dataElement: HIV.D.DE981 - Chest pain
@activity: HIV.D4 Screen for TB
@description: Client reports chest pain
*/
// TODO: Replace placeholder with relevant CQL logic
define "Chest pain (HIV)":
  exists "Chest pain (HIV) Condition"
    or exists "Chest pain (HIV) Observation"
define "Chest pain (HIV) Condition":
  [Condition: Concepts."Chest pain"]
define "Chest pain (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Chest pain"
/* End of Chest pain (HIV) */

/*
@dataElement: HIV.D.DE982 - Haemoptysis
@activity: HIV.D4 Screen for TB
@description: Client reports experiencing haemoptysis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Haemoptysis (HIV)":
  exists "Haemoptysis (HIV) Condition"
    or exists "Haemoptysis (HIV) Observation"
define "Haemoptysis (HIV) Condition":
  [Condition: Concepts."Haemoptysis"]
define "Haemoptysis (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Haemoptysis"
/* End of Haemoptysis (HIV) */

/*
@dataElement: HIV.D.DE983 - Lethargy
@activity: HIV.D4 Screen for TB
@description: Client reports lethargy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lethargy (HIV)":
  exists "Lethargy (HIV) Condition"
    or exists "Lethargy (HIV) Observation"
define "Lethargy (HIV) Condition":
  [Condition: Concepts."Lethargy - HIV.D.DE983"]
define "Lethargy (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lethargy - HIV.D.DE983"
/* End of Lethargy (HIV) */

/*
@dataElement: HIV.D.DE984 - None
@activity: HIV.D4 Screen for TB
@description: No symptoms of TB identified
*/
// TODO: Replace placeholder with relevant CQL logic
define "None (HIV)":
  exists "None (HIV) Condition"
    or exists "None (HIV) Observation"
define "None (HIV) Condition":
  [Condition: Concepts."None"]
define "None (HIV) Observation":
  "Symptoms of TB (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."None"
/* End of None (HIV) */

/*
@dataElement: HIV.D.DE985 - History of contact with a person with TB
@activity: HIV.D4 Screen for TB
@description: Client had a history of a contact with a person with TB
*/
// TODO: Replace placeholder with relevant CQL logic
define "History of contact with a person with TB (HIV)":
  exists "History of contact with a person with TB (HIV) Observation"
define "History of contact with a person with TB (HIV) Observation":
  [Observation: Concepts."History of contact with a person with TB"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of History of contact with a person with TB (HIV) */

/*
@dataElement: HIV.D.DE986 - TB screening result
@activity: HIV.D4 Screen for TB
@description: Record the result of the tuberculosis (TB) screening
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB screening result (HIV)":
  exists "TB screening result (HIV) Observation"
define "TB screening result (HIV) Observation":
  [Observation: Concepts."TB screening result"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of TB screening result (HIV) */

/*
@dataElement: HIV.D.DE987 - Screen positive for TB
@activity: HIV.D4 Screen for TB
@description: Screening result was positive for tuberculosis (TB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screen positive for TB (HIV)":
  exists "Screen positive for TB (HIV) Condition"
    or exists "Screen positive for TB (HIV) Observation"
define "Screen positive for TB (HIV) Condition":
  [Condition: Concepts."Screen positive for TB"]
define "Screen positive for TB (HIV) Observation":
  "TB screening result (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Screen positive for TB"
/* End of Screen positive for TB (HIV) */

/*
@dataElement: HIV.D.DE988 - Screen negative for TB
@activity: HIV.D4 Screen for TB
@description: Screening result was negative for tuberculosis (TB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Screen negative for TB (HIV)":
  exists "Screen negative for TB (HIV) Condition"
    or exists "Screen negative for TB (HIV) Observation"
define "Screen negative for TB (HIV) Condition":
  [Condition: Concepts."Screen negative for TB"]
define "Screen negative for TB (HIV) Observation":
  "TB screening result (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Screen negative for TB"
/* End of Screen negative for TB (HIV) */

/*
@dataElement: HIV.D.DE989 - Inconclusive
@activity: HIV.D4 Screen for TB
@description: Screening result was inconclusive for tuberculosis (TB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (HIV)":
  exists "Inconclusive (HIV) Condition"
    or exists "Inconclusive (HIV) Observation"
define "Inconclusive (HIV) Condition":
  [Condition: Concepts."Inconclusive - HIV.D.DE989"]
define "Inconclusive (HIV) Observation":
  "TB screening result (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Inconclusive - HIV.D.DE989"
/* End of Inconclusive (HIV) */

/*
@dataElement: HIV.D.DE990 - TB screening date
@activity: HIV.D4 Screen for TB
@description: Date the TB screening was conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB screening date (HIV)":
  [Observation: Concepts."TB screening date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "TB screening date (HIV) Value":
  "TB screening date (HIV)" O
  return O.value
/* End of TB screening date (HIV) */

/*
@dataElement: HIV.D.DE992 - TB diagnostic test category
@activity: HIV.D4 Screen for TB
@description: The type of diagnostic test performed to detect tuberculosis (TB) disease
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB diagnostic test category (HIV)":
  exists "TB diagnostic test category (HIV) Observation"
define "TB diagnostic test category (HIV) Observation":
  [Observation: Concepts."TB diagnostic test category"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of TB diagnostic test category (HIV) */

/*
@dataElement: HIV.D.DE993 - LF-LAM
@activity: HIV.D4 Screen for TB
@description: Client tested for tuberculosis with a lateral flow urine lipoarabinomannan assay
*/
// TODO: Replace placeholder with relevant CQL logic
define "LF-LAM (HIV)":
  exists "LF-LAM (HIV) Condition"
    or exists "LF-LAM (HIV) Observation"
define "LF-LAM (HIV) Condition":
  [Condition: Concepts."LF-LAM"]
define "LF-LAM (HIV) Observation":
  "TB diagnostic test category (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."LF-LAM"
/* End of LF-LAM (HIV) */

/*
@dataElement: HIV.D.DE994 - mWRD test for TB
@activity: HIV.D4 Screen for TB
@description: Client tested with a WHO-recommended molecular diagnostic test to detect Mycobacterium tuberculosis (MTB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "mWRD test for TB (HIV)":
  exists "mWRD test for TB (HIV) Condition"
    or exists "mWRD test for TB (HIV) Observation"
define "mWRD test for TB (HIV) Condition":
  [Condition: Concepts."mWRD test for TB"]
define "mWRD test for TB (HIV) Observation":
  "TB diagnostic test category (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."mWRD test for TB"
/* End of mWRD test for TB (HIV) */

/*
@dataElement: HIV.D.DE995 - Microscopy - Sputum acid-fast bacilli AFB
@activity: HIV.D4 Screen for TB
@description: Client tested for tuberculosis with a sputum acid-fast bacilli (AFB)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Microscopy - Sputum acid-fast bacilli AFB (HIV)":
  exists "Microscopy - Sputum acid-fast bacilli AFB (HIV) Condition"
    or exists "Microscopy - Sputum acid-fast bacilli AFB (HIV) Observation"
define "Microscopy - Sputum acid-fast bacilli AFB (HIV) Condition":
  [Condition: Concepts."Microscopy - Sputum acid-fast bacilli AFB"]
define "Microscopy - Sputum acid-fast bacilli AFB (HIV) Observation":
  "TB diagnostic test category (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Microscopy - Sputum acid-fast bacilli AFB"
/* End of Microscopy - Sputum acid-fast bacilli AFB (HIV) */

/*
@dataElement: HIV.D.DE996 - TB Culture
@activity: HIV.D4 Screen for TB
@description: Client tested for tuberculosis (TB) with a culture
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB Culture (HIV)":
  exists "TB Culture (HIV) Condition"
    or exists "TB Culture (HIV) Observation"
define "TB Culture (HIV) Condition":
  [Condition: Concepts."TB Culture"]
define "TB Culture (HIV) Observation":
  "TB diagnostic test category (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."TB Culture"
/* End of TB Culture (HIV) */

/*
@dataElement: HIV.D.DE997 - TB diagnostic test date
@activity: HIV.D4 Screen for TB
@description: The date when TB diagnostic test was performed
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB diagnostic test date (HIV)":
  [Observation: Concepts."TB diagnostic test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "TB diagnostic test date (HIV) Value":
  "TB diagnostic test date (HIV)" O
  return O.value
/* End of TB diagnostic test date (HIV) */

/*
@dataElement: HIV.D.DE1001 - TB treatment start date
@activity: HIV.D8 Capture or update client history
@description: The date on which the client start or restarted tuberculosis (TB) treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB treatment start date (HIV)":
  [Observation: Concepts."TB treatment start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "TB treatment start date (HIV) Value":
  "TB treatment start date (HIV)" O
  return O.value
/* End of TB treatment start date (HIV) */

/*
@dataElement: HIV.D.DE1017 - Eligible for TB preventive treatment
@activity: HIV.D14 Prevent, screen, and manage comorbidities and coinfections
@description: Client is eligible for tuberculosis preventive treatment (TPT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Eligible for TB preventive treatment (HIV)":
  exists "Eligible for TB preventive treatment (HIV) Observation"
define "Eligible for TB preventive treatment (HIV) Observation":
  [Observation: Concepts."Eligible for TB preventive treatment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Eligible for TB preventive treatment (HIV) */

/*
@dataElement: HIV.D.DE1023 - TB prevention services accepted
@activity: HIV.D21 Determine regimen and treatment options
@description: Indicates if the client accepts to be evaluated for TB infection and to take the treatment in case he/she is eligible
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB prevention services accepted (HIV)":
  exists "TB prevention services accepted (HIV) Observation"
define "TB prevention services accepted (HIV) Observation":
  [Observation: Concepts."TB prevention services accepted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of TB prevention services accepted (HIV) */

/*
@dataElement: HIV.D.DE1026 - C reactive protein test result
@activity: HIV.D4 Screen for TB
@description: Test result of the client's C reactive protein test result in mg/L
*/
// TODO: Replace placeholder with relevant CQL logic
define "C reactive protein test result (HIV)":
  [Observation: Concepts."C reactive protein test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "C reactive protein test result (HIV) Value":
  "C reactive protein test result (HIV)" O
  return O.value
/* End of C reactive protein test result (HIV) */

/*
@dataElement: HIV.D.DE1028 - TPT regimen type
@activity: HIV.D4 Screen for TB
@description: Type of TPT regimen the client is currently on
*/
// TODO: Replace placeholder with relevant CQL logic
define "TPT regimen type (HIV)":
  exists "TPT regimen type (HIV) Observation"
define "TPT regimen type (HIV) Observation":
  [Observation: Concepts."TPT regimen type"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of TPT regimen type (HIV) */

/*
@dataElement: HIV.D.DE1029 - 3HP
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is 3HP
*/
// TODO: Replace placeholder with relevant CQL logic
define "3HP (HIV)":
  exists "3HP (HIV) Condition"
    or exists "3HP (HIV) Observation"
define "3HP (HIV) Condition":
  [Condition: Concepts."3HP"]
define "3HP (HIV) Observation":
  "TPT regimen type (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."3HP"
/* End of 3HP (HIV) */

/*
@dataElement: HIV.D.DE1030 - 1HP
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is 1HP
*/
// TODO: Replace placeholder with relevant CQL logic
define "1HP (HIV)":
  exists "1HP (HIV) Condition"
    or exists "1HP (HIV) Observation"
define "1HP (HIV) Condition":
  [Condition: Concepts."1HP"]
define "1HP (HIV) Observation":
  "TPT regimen type (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."1HP"
/* End of 1HP (HIV) */

/*
@dataElement: HIV.D.DE1031 - 6H
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is 6H
*/
// TODO: Replace placeholder with relevant CQL logic
define "6H (HIV)":
  exists "6H (HIV) Condition"
    or exists "6H (HIV) Observation"
define "6H (HIV) Condition":
  [Condition: Concepts."6H"]
define "6H (HIV) Observation":
  "TPT regimen type (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."6H"
/* End of 6H (HIV) */

/*
@dataElement: HIV.D.DE1032 - Six months of levofloxacin daily
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is six months of levofloxacin daily
*/
// TODO: Replace placeholder with relevant CQL logic
define "Six months of levofloxacin daily (HIV)":
  exists "Six months of levofloxacin daily (HIV) Condition"
    or exists "Six months of levofloxacin daily (HIV) Observation"
define "Six months of levofloxacin daily (HIV) Condition":
  [Condition: Concepts."Six months of levofloxacin daily"]
define "Six months of levofloxacin daily (HIV) Observation":
  "TPT regimen type (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Six months of levofloxacin daily"
/* End of Six months of levofloxacin daily (HIV) */

/*
@dataElement: HIV.D.DE1033 - Other TB preventive treatment TPT regimen
@activity: HIV.D4 Screen for TB
@description: The client's current TPT regimen is another regimen than those listed above
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other TB preventive treatment TPT regimen (HIV)":
  exists "Other TB preventive treatment TPT regimen (HIV) Condition"
    or exists "Other TB preventive treatment TPT regimen (HIV) Observation"
define "Other TB preventive treatment TPT regimen (HIV) Condition":
  [Condition: Concepts."Other TB preventive treatment TPT regimen"]
define "Other TB preventive treatment TPT regimen (HIV) Observation":
  "TPT regimen type (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other TB preventive treatment TPT regimen"
/* End of Other TB preventive treatment TPT regimen (HIV) */

/*
@dataElement: HIV.D.DE1034 - TB preventive treatment TPT status
@activity: HIV.D4 Screen for TB
@description: Indicates the current status of TB preventive treatment (TPT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "TB preventive treatment TPT status (HIV)":
  exists "TB preventive treatment TPT status (HIV) Observation"
define "TB preventive treatment TPT status (HIV) Observation":
  [Observation: Concepts."TB preventive treatment TPT status"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of TB preventive treatment TPT status (HIV) */

/*
@dataElement: HIV.D.DE1035 - Not started
@activity: HIV.D4 Screen for TB
@description: The client did not start the TB preventive treatment (TPT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not started (HIV)":
  exists "Not started (HIV) Condition"
    or exists "Not started (HIV) Observation"
define "Not started (HIV) Condition":
  [Condition: Concepts."Not started"]
define "Not started (HIV) Observation":
  "TB preventive treatment TPT status (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Not started"
/* End of Not started (HIV) */

/*
@dataElement: HIV.D.DE1036 - On TPT
@activity: HIV.D4 Screen for TB
@description: The client started the TB preventive treatment (TPT) and is currently taking the medication, without treatment interruptions
*/
// TODO: Replace placeholder with relevant CQL logic
define "On TPT (HIV)":
  exists "On TPT (HIV) Condition"
    or exists "On TPT (HIV) Observation"
define "On TPT (HIV) Condition":
  [Condition: Concepts."On TPT"]
define "On TPT (HIV) Observation":
  "TB preventive treatment TPT status (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."On TPT"
/* End of On TPT (HIV) */

/*
@dataElement: HIV.D.DE1037 - On TPT with interruptions
@activity: HIV.D4 Screen for TB
@description: The client started the TB preventive treatment (TPT) and is currently taking the medication, with treatment interruptions
*/
// TODO: Replace placeholder with relevant CQL logic
define "On TPT with interruptions (HIV)":
  exists "On TPT with interruptions (HIV) Condition"
    or exists "On TPT with interruptions (HIV) Observation"
define "On TPT with interruptions (HIV) Condition":
  [Condition: Concepts."On TPT with interruptions"]
define "On TPT with interruptions (HIV) Observation":
  "TB preventive treatment TPT status (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."On TPT with interruptions"
/* End of On TPT with interruptions (HIV) */

/*
@dataElement: HIV.D.DE1038 - On hold
@activity: HIV.D4 Screen for TB
@description: The health care worker has temporarily stopped the TB preventive treatment (TPT), but TPT is expected to continue again later. May also be called 'suspended'.
*/
// TODO: Replace placeholder with relevant CQL logic
define "On hold (HIV)":
  exists "On hold (HIV) Condition"
    or exists "On hold (HIV) Observation"
define "On hold (HIV) Condition":
  [Condition: Concepts."On hold"]
define "On hold (HIV) Observation":
  "TB preventive treatment TPT status (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."On hold"
/* End of On hold (HIV) */

/*
@dataElement: HIV.D.DE1039 - Completed
@activity: HIV.D4 Screen for TB
@description: TB preventive treatment (TPT) was completed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Completed (HIV)":
  exists "Completed (HIV) Condition"
    or exists "Completed (HIV) Observation"
define "Completed (HIV) Condition":
  [Condition: Concepts."Completed"]
define "Completed (HIV) Observation":
  "TB preventive treatment TPT status (HIV) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Completed"
/* End of Completed (HIV) */

/*
@dataElement: HIV.E.DE41 - Timing of ART initiation
@activity: HIV.E1 Capture or update mother's history
@description: When the pregnant woman or mother initiated ART, for women living with HIV.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Timing of ART initiation (PMTCT)":
  exists "Timing of ART initiation (PMTCT) Observation"
define "Timing of ART initiation (PMTCT) Observation":
  [Observation: Concepts."Timing of ART initiation"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Timing of ART initiation (PMTCT) */

/*
@dataElement: HIV.E.DE42 - Already on ART at first antenatal care visit
@activity: HIV.E1 Capture or update mother's history
@description: The pregnant woman was already on antiretroviral therapy (ART) at first antenatal care visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Already on ART at first antenatal care visit (PMTCT)":
  exists "Already on ART at first antenatal care visit (PMTCT) Condition"
    or exists "Already on ART at first antenatal care visit (PMTCT) Observation"
define "Already on ART at first antenatal care visit (PMTCT) Condition":
  [Condition: Concepts."Already on ART at first antenatal care visit"]
define "Already on ART at first antenatal care visit (PMTCT) Observation":
  "Timing of ART initiation (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Already on ART at first antenatal care visit"
/* End of Already on ART at first antenatal care visit (PMTCT) */

/*
@dataElement: HIV.E.DE43 - Newly on ART during pregnancy
@activity: HIV.E1 Capture or update mother's history
@description: The pregnant woman started ART during her pregnancy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Newly on ART during pregnancy (PMTCT)":
  exists "Newly on ART during pregnancy (PMTCT) Condition"
    or exists "Newly on ART during pregnancy (PMTCT) Observation"
define "Newly on ART during pregnancy (PMTCT) Condition":
  [Condition: Concepts."Newly on ART during pregnancy"]
define "Newly on ART during pregnancy (PMTCT) Observation":
  "Timing of ART initiation (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Newly on ART during pregnancy"
/* End of Newly on ART during pregnancy (PMTCT) */

/*
@dataElement: HIV.E.DE44 - Newly on ART during labour and delivery
@activity: HIV.E1 Capture or update mother's history
@description: The woman started ART during labour and delivery
*/
// TODO: Replace placeholder with relevant CQL logic
define "Newly on ART during labour and delivery (PMTCT)":
  exists "Newly on ART during labour and delivery (PMTCT) Condition"
    or exists "Newly on ART during labour and delivery (PMTCT) Observation"
define "Newly on ART during labour and delivery (PMTCT) Condition":
  [Condition: Concepts."Newly on ART during labour and delivery"]
define "Newly on ART during labour and delivery (PMTCT) Observation":
  "Timing of ART initiation (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Newly on ART during labour and delivery"
/* End of Newly on ART during labour and delivery (PMTCT) */

/*
@dataElement: HIV.E.DE46 - Delivery date
@activity: HIV.E1 Capture or update mother's history
@description: Date on which the woman delivered
*/
// TODO: Replace placeholder with relevant CQL logic
define "Delivery date (PMTCT)":
  [Observation: Concepts."Delivery date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Delivery date (PMTCT) Value":
  "Delivery date (PMTCT)" O
  return O.value
/* End of Delivery date (PMTCT) */

/*
@dataElement: HIV.E.DE67 - Place of delivery
@activity: HIV.E1 Capture or update mother's history
@description: The type of place where the woman delivered
*/
// TODO: Replace placeholder with relevant CQL logic
define "Place of delivery (PMTCT)":
  exists "Place of delivery (PMTCT) Observation"
define "Place of delivery (PMTCT) Observation":
  [Observation: Concepts."Place of delivery"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Place of delivery (PMTCT) */

/*
@dataElement: HIV.E.DE68 - Health facility
@activity: HIV.E1 Capture or update mother's history
@description: The woman delivered at a health facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Health facility (PMTCT)":
  exists "Health facility (PMTCT) Condition"
    or exists "Health facility (PMTCT) Observation"
define "Health facility (PMTCT) Condition":
  [Condition: Concepts."Health facility"]
define "Health facility (PMTCT) Observation":
  "Place of delivery (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Health facility"
/* End of Health facility (PMTCT) */

/*
@dataElement: HIV.E.DE69 - Home
@activity: HIV.E1 Capture or update mother's history
@description: The woman delivered at home
*/
// TODO: Replace placeholder with relevant CQL logic
define "Home (PMTCT)":
  exists "Home (PMTCT) Condition"
    or exists "Home (PMTCT) Observation"
define "Home (PMTCT) Condition":
  [Condition: Concepts."Home"]
define "Home (PMTCT) Observation":
  "Place of delivery (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Home"
/* End of Home (PMTCT) */

/*
@dataElement: HIV.E.DE70 - Other
@activity: HIV.E1 Capture or update mother's history
@description: The woman delivered at another location that is not at home or at a health facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (PMTCT)":
  exists "Other (PMTCT) Condition"
    or exists "Other (PMTCT) Observation"
define "Other (PMTCT) Condition":
  [Condition: Concepts."Other - HIV.E.DE70"]
define "Other (PMTCT) Observation":
  "Place of delivery (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.E.DE70"
/* End of Other (PMTCT) */

/*
@dataElement: HIV.E.DE85 - ANC contact date
@activity: HIV.E1 Capture or update mother's history
@description: The date and time of the client's ANC contact (in the ANC DAK this is called 'Contact date')
*/
// TODO: Replace placeholder with relevant CQL logic
define "ANC contact date (PMTCT)":
  [Observation: Concepts."ANC contact date - HIV.E.DE85"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "ANC contact date (PMTCT) Value":
  "ANC contact date (PMTCT)" O
  return O.value
/* End of ANC contact date (PMTCT) */

/*
@dataElement: HIV.E.DE87 - Infant date of birth
@activity: HIV.E1 Capture or update mother's history
@description: The infant's date of birth (DOB) if known
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infant date of birth (PMTCT)":
  [Observation: Concepts."Infant date of birth"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Infant date of birth (PMTCT) Value":
  "Infant date of birth (PMTCT)" O
  return O.value
/* End of Infant date of birth (PMTCT) */

/*
@dataElement: HIV.E.DE90 - Age of infant
@activity: HIV.E1 Capture or update mother's history
@description: Infant age calculated using date of birth
*/
// TODO: Replace placeholder with relevant CQL logic
define "Age of infant (PMTCT)":
  [Observation: Concepts."Age of infant"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Age of infant (PMTCT) Value":
  "Age of infant (PMTCT)" O
  return O.value
/* End of Age of infant (PMTCT) */

/*
@dataElement: HIV.E.DE112 - HIV-exposed infant or child
@activity: HIV.F6 Check whether infant/child had HIV exposure
@description: Whether the infant or child was determined to have had HIV exposure
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-exposed infant or child (PMTCT)":
  exists "HIV-exposed infant or child (PMTCT) Observation"
define "HIV-exposed infant or child (PMTCT) Observation":
  [Observation: Concepts."HIV-exposed infant or child - HIV.E.DE112"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of HIV-exposed infant or child (PMTCT) */

/*
@dataElement: HIV.E.DE113 - Key population member*
@activity: HIV.E1 Capture or update mother's history
@description: Mother is a member of a key population which has an increased risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Key population member* (PMTCT)":
  exists "Key population member* (PMTCT) Observation"
define "Key population member* (PMTCT) Observation":
  [Observation: Concepts."Key population member* - HIV.E.DE113"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Key population member* (PMTCT) */

/*
@dataElement: HIV.E.DE114 - Key population member type*
@activity: HIV.E1 Capture or update mother's history
@description: The type of key population that the infant's mother is included in
*/
// TODO: Replace placeholder with relevant CQL logic
define "Key population member type* (PMTCT)":
  exists "Key population member type* (PMTCT) Observation"
define "Key population member type* (PMTCT) Observation":
  [Observation: Concepts."Key population member type* - HIV.E.DE114"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Key population member type* (PMTCT) */

/*
@dataElement: HIV.E.DE115 - Sex worker
@activity: HIV.E1 Capture or update mother's history
@description: Infant's mother is a sex worker
*/
// TODO: Replace placeholder with relevant CQL logic
define "Sex worker (PMTCT)":
  exists "Sex worker (PMTCT) Condition"
    or exists "Sex worker (PMTCT) Observation"
define "Sex worker (PMTCT) Condition":
  [Condition: Concepts."Sex worker - HIV.E.DE115"]
define "Sex worker (PMTCT) Observation":
  "Key population member type* (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Sex worker - HIV.E.DE115"
/* End of Sex worker (PMTCT) */

/*
@dataElement: HIV.E.DE116 - People who inject drugs
@activity: HIV.E1 Capture or update mother's history
@description: Infant's mother is a person who injects drugs
*/
// TODO: Replace placeholder with relevant CQL logic
define "People who inject drugs (PMTCT)":
  exists "People who inject drugs (PMTCT) Condition"
    or exists "People who inject drugs (PMTCT) Observation"
define "People who inject drugs (PMTCT) Condition":
  [Condition: Concepts."People who inject drugs - HIV.E.DE116"]
define "People who inject drugs (PMTCT) Observation":
  "Key population member type* (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."People who inject drugs - HIV.E.DE116"
/* End of People who inject drugs (PMTCT) */

/*
@dataElement: HIV.E.DE117 - Trans and gender-diverse people
@activity: HIV.E1 Capture or update mother's history
@description: Infant's mother identifies as trans and gender-diverse
*/
// TODO: Replace placeholder with relevant CQL logic
define "Trans and gender-diverse people (PMTCT)":
  exists "Trans and gender-diverse people (PMTCT) Condition"
    or exists "Trans and gender-diverse people (PMTCT) Observation"
define "Trans and gender-diverse people (PMTCT) Condition":
  [Condition: Concepts."Trans and gender-diverse people - HIV.E.DE117"]
define "Trans and gender-diverse people (PMTCT) Observation":
  "Key population member type* (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Trans and gender-diverse people - HIV.E.DE117"
/* End of Trans and gender-diverse people (PMTCT) */

/*
@dataElement: HIV.E.DE118 - People living in prisons and other closed setting
@activity: HIV.E1 Capture or update mother's history
@description: Infant's mother is in a prison or closed setting
*/
// TODO: Replace placeholder with relevant CQL logic
define "People living in prisons and other closed setting (PMTCT)":
  exists "People living in prisons and other closed setting (PMTCT) Condition"
    or exists "People living in prisons and other closed setting (PMTCT) Observation"
define "People living in prisons and other closed setting (PMTCT) Condition":
  [Condition: Concepts."People living in prisons and other closed setting"]
define "People living in prisons and other closed setting (PMTCT) Observation":
  "Key population member type* (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."People living in prisons and other closed setting"
/* End of People living in prisons and other closed setting (PMTCT) */

/*
@dataElement: HIV.E.DE155 - Signs of substantial risk of HIV infection
@activity: HIV.E1 Capture or update mother's history
@description: Signs the client is at a substantial risk of HIV infection
*/
// TODO: Replace placeholder with relevant CQL logic
define "Signs of substantial risk of HIV infection (PMTCT)":
  exists "Signs of substantial risk of HIV infection (PMTCT) Observation"
define "Signs of substantial risk of HIV infection (PMTCT) Observation":
  [Observation: Concepts."Signs of substantial risk of HIV infection - HIV.E.DE155"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Signs of substantial risk of HIV infection (PMTCT) */

/*
@dataElement: HIV.E.DE156 - No condom use during sex with more than one partner in the past 6 months
@activity: HIV.E1 Capture or update mother's history
@description: Recent vaginal or anal sexual intercourse without a condom with more than one partner
*/
// TODO: Replace placeholder with relevant CQL logic
define "No condom use during sex with more than one partner in the past 6 months (PMTCT)":
  exists "No condom use during sex with more than one partner in the past 6 months (PMTCT) Condition"
    or exists "No condom use during sex with more than one partner in the past 6 months (PMTCT) Observation"
define "No condom use during sex with more than one partner in the past 6 months (PMTCT) Condition":
  [Condition: Concepts."No condom use during sex with more than one partner in the past 6 months - HIV.E.DE156"]
define "No condom use during sex with more than one partner in the past 6 months (PMTCT) Observation":
  "Signs of substantial risk of HIV infection (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."No condom use during sex with more than one partner in the past 6 months - HIV.E.DE156"
/* End of No condom use during sex with more than one partner in the past 6 months (PMTCT) */

/*
@dataElement: HIV.E.DE157 - STI in the past 6 months
@activity: HIV.E1 Capture or update mother's history
@description: A recent history (in the last 6 months) of a sexually transmitted infection (STI) by laboratory testing or self-report of syndromic STI treatment
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI in the past 6 months (PMTCT)":
  exists "STI in the past 6 months (PMTCT) Condition"
    or exists "STI in the past 6 months (PMTCT) Observation"
define "STI in the past 6 months (PMTCT) Condition":
  [Condition: Concepts."STI in the past 6 months - HIV.E.DE157"]
define "STI in the past 6 months (PMTCT) Observation":
  "Signs of substantial risk of HIV infection (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."STI in the past 6 months - HIV.E.DE157"
/* End of STI in the past 6 months (PMTCT) */

/*
@dataElement: HIV.E.DE158 - A sexual partner in the past 6 months had one or more HIV risk factors
@activity: HIV.E1 Capture or update mother's history
@description: A recent sex partner of the client had HIV risk factors
*/
// TODO: Replace placeholder with relevant CQL logic
define "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT)":
  exists "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Condition"
    or exists "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Observation"
define "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Condition":
  [Condition: Concepts."A sexual partner in the past 6 months had one or more HIV risk factors - HIV.E.DE158"]
define "A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) Observation":
  "Signs of substantial risk of HIV infection (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."A sexual partner in the past 6 months had one or more HIV risk factors - HIV.E.DE158"
/* End of A sexual partner in the past 6 months had one or more HIV risk factors (PMTCT) */

/*
@dataElement: HIV.E.DE159 - PrEP requested by client
@activity: HIV.E1 Capture or update mother's history
@description: Client is requesting PrEP, reflecting a decision-making process has already taken place and suggesting of substantial risk of HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP requested by client (PMTCT)":
  exists "PrEP requested by client (PMTCT) Condition"
    or exists "PrEP requested by client (PMTCT) Observation"
define "PrEP requested by client (PMTCT) Condition":
  [Condition: Concepts."PrEP requested by client - HIV.E.DE159"]
define "PrEP requested by client (PMTCT) Observation":
  "Signs of substantial risk of HIV infection (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."PrEP requested by client - HIV.E.DE159"
/* End of PrEP requested by client (PMTCT) */

/*
@dataElement: HIV.E.DE160 - Serodiscordant partner
@activity: HIV.E1 Capture or update mother's history
@description: Mother's HIV status is different from a current partner's HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Serodiscordant partner (PMTCT)":
  exists "Serodiscordant partner (PMTCT) Observation"
define "Serodiscordant partner (PMTCT) Observation":
  [Observation: Concepts."Serodiscordant partner - HIV.E.DE160"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Serodiscordant partner (PMTCT) */

/*
@dataElement: HIV.E.DE168 - HIV test type
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: Type of HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test type (PMTCT)":
  exists "HIV test type (PMTCT) Observation"
define "HIV test type (PMTCT) Observation":
  [Observation: Concepts."HIV test type - HIV.E.DE168"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV test type (PMTCT) */

/*
@dataElement: HIV.E.DE169 - Rapid diagnostic test for HIV
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: Antibody test for HIV performed with a rapid diagnostic (RDT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Rapid diagnostic test for HIV (PMTCT)":
  exists "Rapid diagnostic test for HIV (PMTCT) Condition"
    or exists "Rapid diagnostic test for HIV (PMTCT) Observation"
define "Rapid diagnostic test for HIV (PMTCT) Condition":
  [Condition: Concepts."Rapid diagnostic test for HIV - HIV.E.DE169"]
define "Rapid diagnostic test for HIV (PMTCT) Observation":
  "HIV test type (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Rapid diagnostic test for HIV - HIV.E.DE169"
/* End of Rapid diagnostic test for HIV (PMTCT) */

/*
@dataElement: HIV.E.DE170 - Enzyme immunoassay for HIV
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: Antibody test for HIV performed with an enzyme immunoassay (EIA)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Enzyme immunoassay for HIV (PMTCT)":
  exists "Enzyme immunoassay for HIV (PMTCT) Condition"
    or exists "Enzyme immunoassay for HIV (PMTCT) Observation"
define "Enzyme immunoassay for HIV (PMTCT) Condition":
  [Condition: Concepts."Enzyme immunoassay for HIV - HIV.E.DE170"]
define "Enzyme immunoassay for HIV (PMTCT) Observation":
  "HIV test type (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Enzyme immunoassay for HIV - HIV.E.DE170"
/* End of Enzyme immunoassay for HIV (PMTCT) */

/*
@dataElement: HIV.E.DE171 - Nucleic acid test for HIV
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: Virological test, which includes testing for early infant diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Nucleic acid test for HIV (PMTCT)":
  exists "Nucleic acid test for HIV (PMTCT) Condition"
    or exists "Nucleic acid test for HIV (PMTCT) Observation"
define "Nucleic acid test for HIV (PMTCT) Condition":
  [Condition: Concepts."Nucleic acid test for HIV - HIV.E.DE171"]
define "Nucleic acid test for HIV (PMTCT) Observation":
  "HIV test type (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Nucleic acid test for HIV - HIV.E.DE171"
/* End of Nucleic acid test for HIV (PMTCT) */

/*
@dataElement: HIV.E.DE172 - Dual HIV/syphilis rapid diagnostic test
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: Antibody test for HIV and syphilis performed with a rapid diagnostic
*/
// TODO: Replace placeholder with relevant CQL logic
define "Dual HIV/syphilis rapid diagnostic test (PMTCT)":
  exists "Dual HIV/syphilis rapid diagnostic test (PMTCT) Condition"
    or exists "Dual HIV/syphilis rapid diagnostic test (PMTCT) Observation"
define "Dual HIV/syphilis rapid diagnostic test (PMTCT) Condition":
  [Condition: Concepts."Dual HIV/syphilis rapid diagnostic test - HIV.E.DE172"]
define "Dual HIV/syphilis rapid diagnostic test (PMTCT) Observation":
  "HIV test type (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Dual HIV/syphilis rapid diagnostic test - HIV.E.DE172"
/* End of Dual HIV/syphilis rapid diagnostic test (PMTCT) */

/*
@dataElement: HIV.E.DE173 - Maternal and child health service visit
@activity: HIV.E1 Capture or update mother's history
@description: Maternal and child health service visit attended by an HIV-exposed infant
*/
// TODO: Replace placeholder with relevant CQL logic
define "Maternal and child health service visit (PMTCT)":
  exists "Maternal and child health service visit (PMTCT) Observation"
define "Maternal and child health service visit (PMTCT) Observation":
  [Observation: Concepts."Maternal and child health service visit"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Maternal and child health service visit (PMTCT) */

/*
@dataElement: HIV.E.DE174 - 12-month visit
@activity: HIV.E1 Capture or update mother's history
@description: HIV-exposed infant attending MCH services for a 12-month visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "12-month visit (PMTCT)":
  exists "12-month visit (PMTCT) Condition"
    or exists "12-month visit (PMTCT) Observation"
define "12-month visit (PMTCT) Condition":
  [Condition: Concepts."12-month visit"]
define "12-month visit (PMTCT) Observation":
  "Maternal and child health service visit (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."12-month visit"
/* End of 12-month visit (PMTCT) */

/*
@dataElement: HIV.E.DE175 - 24-month visit
@activity: HIV.E1 Capture or update mother's history
@description: HIV-exposed infants attending MCH services for a 24-month visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "24-month visit (PMTCT)":
  exists "24-month visit (PMTCT) Condition"
    or exists "24-month visit (PMTCT) Observation"
define "24-month visit (PMTCT) Condition":
  [Condition: Concepts."24-month visit"]
define "24-month visit (PMTCT) Observation":
  "Maternal and child health service visit (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."24-month visit"
/* End of 24-month visit (PMTCT) */

/*
@dataElement: HIV.E.DE176 - First visit after the end of breastfeeding
@activity: HIV.E1 Capture or update mother's history
@description: HIV-exposed infant attending MCH services for a first visit after the end of breastfeeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "First visit after the end of breastfeeding (PMTCT)":
  exists "First visit after the end of breastfeeding (PMTCT) Condition"
    or exists "First visit after the end of breastfeeding (PMTCT) Observation"
define "First visit after the end of breastfeeding (PMTCT) Condition":
  [Condition: Concepts."First visit after the end of breastfeeding"]
define "First visit after the end of breastfeeding (PMTCT) Observation":
  "Maternal and child health service visit (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."First visit after the end of breastfeeding"
/* End of First visit after the end of breastfeeding (PMTCT) */

/*
@dataElement: HIV.E.DE179 - Registered in birth cohort
@activity: HIV.F3 Capture or update infant's/child's history
@description: Whether the infant has been registered in a birth cohort
*/
// TODO: Replace placeholder with relevant CQL logic
define "Registered in birth cohort (PMTCT)":
  exists "Registered in birth cohort (PMTCT) Observation"
define "Registered in birth cohort (PMTCT) Observation":
  [Observation: Concepts."Registered in birth cohort"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Registered in birth cohort (PMTCT) */

/*
@dataElement: HIV.E.DE180 - EID sample number
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis (EID) sample number
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID sample number (PMTCT)":
  exists "EID sample number (PMTCT) Observation"
define "EID sample number (PMTCT) Observation":
  [Observation: Concepts."EID sample number"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of EID sample number (PMTCT) */

/*
@dataElement: HIV.E.DE181 - EID sample 1
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: First sample used to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID sample 1 (PMTCT)":
  exists "EID sample 1 (PMTCT) Condition"
    or exists "EID sample 1 (PMTCT) Observation"
define "EID sample 1 (PMTCT) Condition":
  [Condition: Concepts."EID sample 1"]
define "EID sample 1 (PMTCT) Observation":
  "EID sample number (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."EID sample 1"
/* End of EID sample 1 (PMTCT) */

/*
@dataElement: HIV.E.DE182 - EID sample 2
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Second sample used to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID sample 2 (PMTCT)":
  exists "EID sample 2 (PMTCT) Condition"
    or exists "EID sample 2 (PMTCT) Observation"
define "EID sample 2 (PMTCT) Condition":
  [Condition: Concepts."EID sample 2"]
define "EID sample 2 (PMTCT) Observation":
  "EID sample number (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."EID sample 2"
/* End of EID sample 2 (PMTCT) */

/*
@dataElement: HIV.E.DE183 - EID test number
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis (EID) HIV test number using the same sample
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number (PMTCT)":
  exists "EID test number (PMTCT) Observation"
define "EID test number (PMTCT) Observation":
  [Observation: Concepts."EID test number"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of EID test number (PMTCT) */

/*
@dataElement: HIV.E.DE184 - EID test number 1
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: First test on a sample to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 1 (PMTCT)":
  exists "EID test number 1 (PMTCT) Condition"
    or exists "EID test number 1 (PMTCT) Observation"
define "EID test number 1 (PMTCT) Condition":
  [Condition: Concepts."EID test number 1"]
define "EID test number 1 (PMTCT) Observation":
  "EID test number (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."EID test number 1"
/* End of EID test number 1 (PMTCT) */

/*
@dataElement: HIV.E.DE185 - EID test number 2
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Second test on a sample to test an infant for HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 2 (PMTCT)":
  exists "EID test number 2 (PMTCT) Condition"
    or exists "EID test number 2 (PMTCT) Observation"
define "EID test number 2 (PMTCT) Condition":
  [Condition: Concepts."EID test number 2"]
define "EID test number 2 (PMTCT) Observation":
  "EID test number (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."EID test number 2"
/* End of EID test number 2 (PMTCT) */

/*
@dataElement: HIV.E.DE186 - EID test number 1 test result
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis test number 1 test result
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 1 test result (PMTCT)":
  exists "EID test number 1 test result (PMTCT) Observation"
define "EID test number 1 test result (PMTCT) Observation":
  [Observation: Concepts."EID test number 1 test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of EID test number 1 test result (PMTCT) */

/*
@dataElement: HIV.E.DE187 - Positive
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Positive HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (PMTCT|EDE187)":
  exists "Positive (PMTCT|EDE187) Condition"
    or exists "Positive (PMTCT|EDE187) Observation"
define "Positive (PMTCT|EDE187) Condition":
  [Condition: Concepts."Positive - HIV.E.DE187"]
define "Positive (PMTCT|EDE187) Observation":
  "EID test number 1 test result (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.E.DE187"
/* End of Positive (PMTCT|EDE187) */

/*
@dataElement: HIV.E.DE188 - Negative
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Negative HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (PMTCT|EDE188)":
  exists "Negative (PMTCT|EDE188) Condition"
    or exists "Negative (PMTCT|EDE188) Observation"
define "Negative (PMTCT|EDE188) Condition":
  [Condition: Concepts."Negative - HIV.E.DE188"]
define "Negative (PMTCT|EDE188) Observation":
  "EID test number 1 test result (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.E.DE188"
/* End of Negative (PMTCT|EDE188) */

/*
@dataElement: HIV.E.DE189 - Indeterminate
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Indeterminate HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (PMTCT|EDE189)":
  exists "Indeterminate (PMTCT|EDE189) Condition"
    or exists "Indeterminate (PMTCT|EDE189) Observation"
define "Indeterminate (PMTCT|EDE189) Condition":
  [Condition: Concepts."Indeterminate - HIV.E.DE189"]
define "Indeterminate (PMTCT|EDE189) Observation":
  "EID test number 1 test result (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Indeterminate - HIV.E.DE189"
/* End of Indeterminate (PMTCT|EDE189) */

/*
@dataElement: HIV.E.DE190 - EID test number 2 test result
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Early infant diagnosis test number 2 test result
*/
// TODO: Replace placeholder with relevant CQL logic
define "EID test number 2 test result (PMTCT)":
  exists "EID test number 2 test result (PMTCT) Observation"
define "EID test number 2 test result (PMTCT) Observation":
  [Observation: Concepts."EID test number 2 test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of EID test number 2 test result (PMTCT) */

/*
@dataElement: HIV.E.DE191 - Positive
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Positive HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (PMTCT|EDE191)":
  exists "Positive (PMTCT|EDE191) Condition"
    or exists "Positive (PMTCT|EDE191) Observation"
define "Positive (PMTCT|EDE191) Condition":
  [Condition: Concepts."Positive - HIV.E.DE191"]
define "Positive (PMTCT|EDE191) Observation":
  "EID test number 2 test result (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.E.DE191"
/* End of Positive (PMTCT|EDE191) */

/*
@dataElement: HIV.E.DE192 - Negative
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Negative HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (PMTCT|EDE192)":
  exists "Negative (PMTCT|EDE192) Condition"
    or exists "Negative (PMTCT|EDE192) Observation"
define "Negative (PMTCT|EDE192) Condition":
  [Condition: Concepts."Negative - HIV.E.DE192"]
define "Negative (PMTCT|EDE192) Observation":
  "EID test number 2 test result (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.E.DE192"
/* End of Negative (PMTCT|EDE192) */

/*
@dataElement: HIV.E.DE193 - Indeterminate
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Indeterminate HIV test result from the nucleic acid test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (PMTCT|EDE193)":
  exists "Indeterminate (PMTCT|EDE193) Condition"
    or exists "Indeterminate (PMTCT|EDE193) Observation"
define "Indeterminate (PMTCT|EDE193) Condition":
  [Condition: Concepts."Indeterminate - HIV.E.DE193"]
define "Indeterminate (PMTCT|EDE193) Observation":
  "EID test number 2 test result (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Indeterminate - HIV.E.DE193"
/* End of Indeterminate (PMTCT|EDE193) */

/*
@dataElement: HIV.E.DE194 - Assay number in testing strategy
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The number of the assay (test kit) in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay number in testing strategy (PMTCT)":
  exists "Assay number in testing strategy (PMTCT) Observation"
define "Assay number in testing strategy (PMTCT) Observation":
  [Observation: Concepts."Assay number in testing strategy - HIV.E.DE194"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Assay number in testing strategy (PMTCT) */

/*
@dataElement: HIV.E.DE195 - Assay 0
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: A community outreach test-for-triage or self-test which is not included in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 0 (PMTCT)":
  exists "Assay 0 (PMTCT) Condition"
    or exists "Assay 0 (PMTCT) Observation"
define "Assay 0 (PMTCT) Condition":
  [Condition: Concepts."Assay 0 - HIV.E.DE195"]
define "Assay 0 (PMTCT) Observation":
  "Assay number in testing strategy (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 0 - HIV.E.DE195"
/* End of Assay 0 (PMTCT) */

/*
@dataElement: HIV.E.DE196 - Assay 1
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 (PMTCT)":
  exists "Assay 1 (PMTCT) Condition"
    or exists "Assay 1 (PMTCT) Observation"
define "Assay 1 (PMTCT) Condition":
  [Condition: Concepts."Assay 1 - HIV.E.DE196"]
define "Assay 1 (PMTCT) Observation":
  "Assay number in testing strategy (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 1 - HIV.E.DE196"
/* End of Assay 1 (PMTCT) */

/*
@dataElement: HIV.E.DE197 - Assay 2
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The second test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 2 (PMTCT)":
  exists "Assay 2 (PMTCT) Condition"
    or exists "Assay 2 (PMTCT) Observation"
define "Assay 2 (PMTCT) Condition":
  [Condition: Concepts."Assay 2 - HIV.E.DE197"]
define "Assay 2 (PMTCT) Observation":
  "Assay number in testing strategy (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 2 - HIV.E.DE197"
/* End of Assay 2 (PMTCT) */

/*
@dataElement: HIV.E.DE198 - Assay 3
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The third test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 3 (PMTCT)":
  exists "Assay 3 (PMTCT) Condition"
    or exists "Assay 3 (PMTCT) Observation"
define "Assay 3 (PMTCT) Condition":
  [Condition: Concepts."Assay 3 - HIV.E.DE198"]
define "Assay 3 (PMTCT) Observation":
  "Assay number in testing strategy (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 3 - HIV.E.DE198"
/* End of Assay 3 (PMTCT) */

/*
@dataElement: HIV.E.DE199 - Assay 1 repeated
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The first test in the HIV testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Assay 1 repeated (PMTCT)":
  exists "Assay 1 repeated (PMTCT) Condition"
    or exists "Assay 1 repeated (PMTCT) Observation"
define "Assay 1 repeated (PMTCT) Condition":
  [Condition: Concepts."Assay 1 repeated - HIV.E.DE199"]
define "Assay 1 repeated (PMTCT) Observation":
  "Assay number in testing strategy (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Assay 1 repeated - HIV.E.DE199"
/* End of Assay 1 repeated (PMTCT) */

/*
@dataElement: HIV.E.DE200 - Test result of HIV assay 1
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 (PMTCT)":
  exists "Test result of HIV assay 1 (PMTCT) Observation"
define "Test result of HIV assay 1 (PMTCT) Observation":
  [Observation: Concepts."Test result of HIV assay 1 - HIV.E.DE200"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 1 (PMTCT) */

/*
@dataElement: HIV.E.DE201 - Reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE201)":
  exists "Reactive (PMTCT|EDE201) Condition"
    or exists "Reactive (PMTCT|EDE201) Observation"
define "Reactive (PMTCT|EDE201) Condition":
  [Condition: Concepts."Reactive - HIV.E.DE201"]
define "Reactive (PMTCT|EDE201) Observation":
  "Test result of HIV assay 1 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.E.DE201"
/* End of Reactive (PMTCT|EDE201) */

/*
@dataElement: HIV.E.DE202 - Non-reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE202)":
  exists "Non-reactive (PMTCT|EDE202) Condition"
    or exists "Non-reactive (PMTCT|EDE202) Observation"
define "Non-reactive (PMTCT|EDE202) Condition":
  [Condition: Concepts."Non-reactive - HIV.E.DE202"]
define "Non-reactive (PMTCT|EDE202) Observation":
  "Test result of HIV assay 1 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.E.DE202"
/* End of Non-reactive (PMTCT|EDE202) */

/*
@dataElement: HIV.E.DE203 - Invalid
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE203)":
  exists "Invalid (PMTCT|EDE203) Condition"
    or exists "Invalid (PMTCT|EDE203) Observation"
define "Invalid (PMTCT|EDE203) Condition":
  [Condition: Concepts."Invalid - HIV.E.DE203"]
define "Invalid (PMTCT|EDE203) Observation":
  "Test result of HIV assay 1 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.E.DE203"
/* End of Invalid (PMTCT|EDE203) */

/*
@dataElement: HIV.E.DE204 - Test result of HIV assay 2
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the second HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 2 (PMTCT)":
  exists "Test result of HIV assay 2 (PMTCT) Observation"
define "Test result of HIV assay 2 (PMTCT) Observation":
  [Observation: Concepts."Test result of HIV assay 2 - HIV.E.DE204"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 2 (PMTCT) */

/*
@dataElement: HIV.E.DE205 - Reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE205)":
  exists "Reactive (PMTCT|EDE205) Condition"
    or exists "Reactive (PMTCT|EDE205) Observation"
define "Reactive (PMTCT|EDE205) Condition":
  [Condition: Concepts."Reactive - HIV.E.DE205"]
define "Reactive (PMTCT|EDE205) Observation":
  "Test result of HIV assay 2 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.E.DE205"
/* End of Reactive (PMTCT|EDE205) */

/*
@dataElement: HIV.E.DE206 - Non-reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE206)":
  exists "Non-reactive (PMTCT|EDE206) Condition"
    or exists "Non-reactive (PMTCT|EDE206) Observation"
define "Non-reactive (PMTCT|EDE206) Condition":
  [Condition: Concepts."Non-reactive - HIV.E.DE206"]
define "Non-reactive (PMTCT|EDE206) Observation":
  "Test result of HIV assay 2 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.E.DE206"
/* End of Non-reactive (PMTCT|EDE206) */

/*
@dataElement: HIV.E.DE207 - Invalid
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE207)":
  exists "Invalid (PMTCT|EDE207) Condition"
    or exists "Invalid (PMTCT|EDE207) Observation"
define "Invalid (PMTCT|EDE207) Condition":
  [Condition: Concepts."Invalid - HIV.E.DE207"]
define "Invalid (PMTCT|EDE207) Observation":
  "Test result of HIV assay 2 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.E.DE207"
/* End of Invalid (PMTCT|EDE207) */

/*
@dataElement: HIV.E.DE208 - Test result of HIV assay 3
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the third HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 3 (PMTCT)":
  exists "Test result of HIV assay 3 (PMTCT) Observation"
define "Test result of HIV assay 3 (PMTCT) Observation":
  [Observation: Concepts."Test result of HIV assay 3 - HIV.E.DE208"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 3 (PMTCT) */

/*
@dataElement: HIV.E.DE209 - Reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE209)":
  exists "Reactive (PMTCT|EDE209) Condition"
    or exists "Reactive (PMTCT|EDE209) Observation"
define "Reactive (PMTCT|EDE209) Condition":
  [Condition: Concepts."Reactive - HIV.E.DE209"]
define "Reactive (PMTCT|EDE209) Observation":
  "Test result of HIV assay 3 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.E.DE209"
/* End of Reactive (PMTCT|EDE209) */

/*
@dataElement: HIV.E.DE210 - Non-reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE210)":
  exists "Non-reactive (PMTCT|EDE210) Condition"
    or exists "Non-reactive (PMTCT|EDE210) Observation"
define "Non-reactive (PMTCT|EDE210) Condition":
  [Condition: Concepts."Non-reactive - HIV.E.DE210"]
define "Non-reactive (PMTCT|EDE210) Observation":
  "Test result of HIV assay 3 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.E.DE210"
/* End of Non-reactive (PMTCT|EDE210) */

/*
@dataElement: HIV.E.DE211 - Invalid
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE211)":
  exists "Invalid (PMTCT|EDE211) Condition"
    or exists "Invalid (PMTCT|EDE211) Observation"
define "Invalid (PMTCT|EDE211) Condition":
  [Condition: Concepts."Invalid - HIV.E.DE211"]
define "Invalid (PMTCT|EDE211) Observation":
  "Test result of HIV assay 3 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.E.DE211"
/* End of Invalid (PMTCT|EDE211) */

/*
@dataElement: HIV.E.DE212 - Test result of HIV assay 1 repeated
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the repeated first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 repeated (PMTCT)":
  exists "Test result of HIV assay 1 repeated (PMTCT) Observation"
define "Test result of HIV assay 1 repeated (PMTCT) Observation":
  [Observation: Concepts."Test result of HIV assay 1 repeated - HIV.E.DE212"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 1 repeated (PMTCT) */

/*
@dataElement: HIV.E.DE213 - Reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE213)":
  exists "Reactive (PMTCT|EDE213) Condition"
    or exists "Reactive (PMTCT|EDE213) Observation"
define "Reactive (PMTCT|EDE213) Condition":
  [Condition: Concepts."Reactive - HIV.E.DE213"]
define "Reactive (PMTCT|EDE213) Observation":
  "Test result of HIV assay 1 repeated (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.E.DE213"
/* End of Reactive (PMTCT|EDE213) */

/*
@dataElement: HIV.E.DE214 - Non-reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE214)":
  exists "Non-reactive (PMTCT|EDE214) Condition"
    or exists "Non-reactive (PMTCT|EDE214) Observation"
define "Non-reactive (PMTCT|EDE214) Condition":
  [Condition: Concepts."Non-reactive - HIV.E.DE214"]
define "Non-reactive (PMTCT|EDE214) Observation":
  "Test result of HIV assay 1 repeated (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.E.DE214"
/* End of Non-reactive (PMTCT|EDE214) */

/*
@dataElement: HIV.E.DE215 - Invalid
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE215)":
  exists "Invalid (PMTCT|EDE215) Condition"
    or exists "Invalid (PMTCT|EDE215) Observation"
define "Invalid (PMTCT|EDE215) Condition":
  [Condition: Concepts."Invalid - HIV.E.DE215"]
define "Invalid (PMTCT|EDE215) Observation":
  "Test result of HIV assay 1 repeated (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.E.DE215"
/* End of Invalid (PMTCT|EDE215) */

/*
@dataElement: HIV.E.DE216 - Test result of syphilis assay 1
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of syphilis assay 1 (PMTCT)":
  exists "Test result of syphilis assay 1 (PMTCT) Observation"
define "Test result of syphilis assay 1 (PMTCT) Observation":
  [Observation: Concepts."Test result of syphilis assay 1"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of syphilis assay 1 (PMTCT) */

/*
@dataElement: HIV.E.DE217 - Reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE217)":
  exists "Reactive (PMTCT|EDE217) Condition"
    or exists "Reactive (PMTCT|EDE217) Observation"
define "Reactive (PMTCT|EDE217) Condition":
  [Condition: Concepts."Reactive - HIV.E.DE217"]
define "Reactive (PMTCT|EDE217) Observation":
  "Test result of syphilis assay 1 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.E.DE217"
/* End of Reactive (PMTCT|EDE217) */

/*
@dataElement: HIV.E.DE218 - Non-reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE218)":
  exists "Non-reactive (PMTCT|EDE218) Condition"
    or exists "Non-reactive (PMTCT|EDE218) Observation"
define "Non-reactive (PMTCT|EDE218) Condition":
  [Condition: Concepts."Non-reactive - HIV.E.DE218"]
define "Non-reactive (PMTCT|EDE218) Observation":
  "Test result of syphilis assay 1 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.E.DE218"
/* End of Non-reactive (PMTCT|EDE218) */

/*
@dataElement: HIV.E.DE219 - Invalid
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the HIV assay in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE219)":
  exists "Invalid (PMTCT|EDE219) Condition"
    or exists "Invalid (PMTCT|EDE219) Observation"
define "Invalid (PMTCT|EDE219) Condition":
  [Condition: Concepts."Invalid - HIV.E.DE219"]
define "Invalid (PMTCT|EDE219) Observation":
  "Test result of syphilis assay 1 (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.E.DE219"
/* End of Invalid (PMTCT|EDE219) */

/*
@dataElement: HIV.E.DE220 - Test result of syphilis assay 1 repeated
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of syphilis assay 1 repeated (PMTCT)":
  exists "Test result of syphilis assay 1 repeated (PMTCT) Observation"
define "Test result of syphilis assay 1 repeated (PMTCT) Observation":
  [Observation: Concepts."Test result of syphilis assay 1 repeated"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of syphilis assay 1 repeated (PMTCT) */

/*
@dataElement: HIV.E.DE221 - Reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy was reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reactive (PMTCT|EDE221)":
  exists "Reactive (PMTCT|EDE221) Condition"
    or exists "Reactive (PMTCT|EDE221) Observation"
define "Reactive (PMTCT|EDE221) Condition":
  [Condition: Concepts."Reactive - HIV.E.DE221"]
define "Reactive (PMTCT|EDE221) Observation":
  "Test result of syphilis assay 1 repeated (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Reactive - HIV.E.DE221"
/* End of Reactive (PMTCT|EDE221) */

/*
@dataElement: HIV.E.DE222 - Non-reactive
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy was non-reactive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Non-reactive (PMTCT|EDE222)":
  exists "Non-reactive (PMTCT|EDE222) Condition"
    or exists "Non-reactive (PMTCT|EDE222) Observation"
define "Non-reactive (PMTCT|EDE222) Condition":
  [Condition: Concepts."Non-reactive - HIV.E.DE222"]
define "Non-reactive (PMTCT|EDE222) Observation":
  "Test result of syphilis assay 1 repeated (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Non-reactive - HIV.E.DE222"
/* End of Non-reactive (PMTCT|EDE222) */

/*
@dataElement: HIV.E.DE223 - Invalid
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first syphilis assay repeated in the testing strategy was invalid
*/
// TODO: Replace placeholder with relevant CQL logic
define "Invalid (PMTCT|EDE223)":
  exists "Invalid (PMTCT|EDE223) Condition"
    or exists "Invalid (PMTCT|EDE223) Observation"
define "Invalid (PMTCT|EDE223) Condition":
  [Condition: Concepts."Invalid - HIV.E.DE223"]
define "Invalid (PMTCT|EDE223) Observation":
  "Test result of syphilis assay 1 repeated (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Invalid - HIV.E.DE223"
/* End of Invalid (PMTCT|EDE223) */

/*
@dataElement: HIV.E.DE224 - HIV test date
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Date of the HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test date (PMTCT)":
  [Observation: Concepts."HIV test date - HIV.E.DE224"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HIV test date (PMTCT) Value":
  "HIV test date (PMTCT)" O
  return O.value
/* End of HIV test date (PMTCT) */

/*
@dataElement: HIV.E.DE225 - Infant HIV status
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: HIV status reported after applying the HIV testing algorithm. No single HIV test can provide an HIV-positive diagnosis.
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infant HIV status (PMTCT)":
  exists "Infant HIV status (PMTCT) Observation"
define "Infant HIV status (PMTCT) Observation":
  [Observation: Concepts."Infant HIV status"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Infant HIV status (PMTCT) */

/*
@dataElement: HIV.E.DE226 - HIV-positive
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Infant is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (PMTCT|EDE226)":
  exists "HIV-positive (PMTCT|EDE226) Condition"
    or exists "HIV-positive (PMTCT|EDE226) Observation"
define "HIV-positive (PMTCT|EDE226) Condition":
  [Condition: Concepts."HIV-positive - HIV.E.DE226"]
define "HIV-positive (PMTCT|EDE226) Observation":
  "Infant HIV status (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive - HIV.E.DE226"
/* End of HIV-positive (PMTCT|EDE226) */

/*
@dataElement: HIV.E.DE227 - HIV-negative
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Infant is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative (PMTCT)":
  exists "HIV-negative (PMTCT) Condition"
    or exists "HIV-negative (PMTCT) Observation"
define "HIV-negative (PMTCT) Condition":
  [Condition: Concepts."HIV-negative - HIV.E.DE227"]
define "HIV-negative (PMTCT) Observation":
  "Infant HIV status (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-negative - HIV.E.DE227"
/* End of HIV-negative (PMTCT) */

/*
@dataElement: HIV.E.DE228 - Unknown
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Infant has unknown HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unknown (PMTCT)":
  exists "Unknown (PMTCT) Condition"
    or exists "Unknown (PMTCT) Observation"
define "Unknown (PMTCT) Condition":
  [Condition: Concepts."Unknown - HIV.E.DE228"]
define "Unknown (PMTCT) Observation":
  "Infant HIV status (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unknown - HIV.E.DE228"
/* End of Unknown (PMTCT) */

/*
@dataElement: HIV.E.DE229 - Infant ART start date
@activity: HIV.F16 Immediately start infant on ART
@description: The date on which the infant was started or restarted on antiretroviral therapy (ART)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Infant ART start date (PMTCT)":
  [Observation: Concepts."Infant ART start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Infant ART start date (PMTCT) Value":
  "Infant ART start date (PMTCT)" O
  return O.value
/* End of Infant ART start date (PMTCT) */

/*
@dataElement: HIV.E.DE230 - Final diagnosis of HIV-exposed infant
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: HIV-exposed infant final status at 18 months or 3 months after cessation of breastfeeding (whichever is later).
*/
// TODO: Replace placeholder with relevant CQL logic
define "Final diagnosis of HIV-exposed infant (PMTCT)":
  exists "Final diagnosis of HIV-exposed infant (PMTCT) Observation"
define "Final diagnosis of HIV-exposed infant (PMTCT) Observation":
  [Observation: Concepts."Final diagnosis of HIV-exposed infant - HIV.E.DE230"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Final diagnosis of HIV-exposed infant (PMTCT) */

/*
@dataElement: HIV.E.DE231 - HIV-positive
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: The infant is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (PMTCT|EDE231)":
  exists "HIV-positive (PMTCT|EDE231) Condition"
    or exists "HIV-positive (PMTCT|EDE231) Observation"
define "HIV-positive (PMTCT|EDE231) Condition":
  [Condition: Concepts."HIV-positive - HIV.E.DE231"]
define "HIV-positive (PMTCT|EDE231) Observation":
  "Final diagnosis of HIV-exposed infant (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive - HIV.E.DE231"
/* End of HIV-positive (PMTCT|EDE231) */

/*
@dataElement: HIV.E.DE232 - HIV-negative and no longer breastfeeding
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: The infant is HIV-negative and the mother has quit breastfeeding
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative and no longer breastfeeding (PMTCT)":
  exists "HIV-negative and no longer breastfeeding (PMTCT) Condition"
    or exists "HIV-negative and no longer breastfeeding (PMTCT) Observation"
define "HIV-negative and no longer breastfeeding (PMTCT) Condition":
  [Condition: Concepts."HIV-negative and no longer breastfeeding"]
define "HIV-negative and no longer breastfeeding (PMTCT) Observation":
  "Final diagnosis of HIV-exposed infant (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-negative and no longer breastfeeding"
/* End of HIV-negative and no longer breastfeeding (PMTCT) */

/*
@dataElement: HIV.E.DE233 - HIV status unknown
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: The final HIV status of the child is unknown because the infant died, was lost to follow-up or transferred out without ever having an HIV-positive diagnosis or is active in care but was not tested at 18 months
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV status unknown (PMTCT)":
  exists "HIV status unknown (PMTCT) Condition"
    or exists "HIV status unknown (PMTCT) Observation"
define "HIV status unknown (PMTCT) Condition":
  [Condition: Concepts."HIV status unknown"]
define "HIV status unknown (PMTCT) Observation":
  "Final diagnosis of HIV-exposed infant (PMTCT) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV status unknown"
/* End of HIV status unknown (PMTCT) */

/*
@dataElement: HIV.G.DE1 - CD4 count
@activity: HIV.D20 Diagnostics
@description: CD4 cell count in cells/mm^3
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count (Diagnostics)":
  [Observation: Concepts."CD4 count - HIV.G.DE1"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "CD4 count (Diagnostics) Value":
  "CD4 count (Diagnostics)" O
  return O.value
/* End of CD4 count (Diagnostics) */

/*
@dataElement: HIV.G.DE3 - Baseline CD4 count
@activity: HIV.D20 Diagnostics
@description: CD4 count performed at HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Baseline CD4 count (Diagnostics)":
  [Observation: Concepts."Baseline CD4 count - HIV.G.DE3"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Baseline CD4 count (Diagnostics) Value":
  "Baseline CD4 count (Diagnostics)" O
  return O.value
/* End of Baseline CD4 count (Diagnostics) */

/*
@dataElement: HIV.G.DE8 - Date of viral load sample collection
@activity: HIV.D20 Diagnostics
@description: Date and time when the sample was collected to test the client's HIV viral load
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of viral load sample collection (Diagnostics)":
  [Observation: Concepts."Date of viral load sample collection - HIV.G.DE8"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of viral load sample collection (Diagnostics) Value":
  "Date of viral load sample collection (Diagnostics)" O
  return O.value
/* End of Date of viral load sample collection (Diagnostics) */

/*
@dataElement: HIV.G.DE12 - Viral load test result
@activity: HIV.D20 Diagnostics
@description: Result from the viral load test in number of copies/mL
*/
// TODO: Replace placeholder with relevant CQL logic
define "Viral load test result (Diagnostics)":
  [Observation: Concepts."Viral load test result - HIV.G.DE12"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Viral load test result (Diagnostics) Value":
  "Viral load test result (Diagnostics)" O
  return O.value
/* End of Viral load test result (Diagnostics) */

/*
@dataElement: HIV.G.DE17 - HBsAg test date
@activity: HIV.D20 Diagnostics
@description: Date client was tested for hepatitis B virus (HBV)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test date (Diagnostics)":
  [Observation: Concepts."HBsAg test date - HIV.G.DE17"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HBsAg test date (Diagnostics) Value":
  "HBsAg test date (Diagnostics)" O
  return O.value
/* End of HBsAg test date (Diagnostics) */

/*
@dataElement: HIV.G.DE18 - HBsAg test result
@activity: HIV.D20 Diagnostics
@description: Hepatitis B virus test result (HBsAg)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HBsAg test result (Diagnostics)":
  exists "HBsAg test result (Diagnostics) Observation"
define "HBsAg test result (Diagnostics) Observation":
  [Observation: Concepts."HBsAg test result - HIV.G.DE18"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HBsAg test result (Diagnostics) */

/*
@dataElement: HIV.G.DE19 - Positive
@activity: HIV.D20 Diagnostics
@description: HBsAg test result was positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Diagnostics|GDE19)":
  exists "Positive (Diagnostics|GDE19) Condition"
    or exists "Positive (Diagnostics|GDE19) Observation"
define "Positive (Diagnostics|GDE19) Condition":
  [Condition: Concepts."Positive - HIV.G.DE19"]
define "Positive (Diagnostics|GDE19) Observation":
  "HBsAg test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.G.DE19"
/* End of Positive (Diagnostics|GDE19) */

/*
@dataElement: HIV.G.DE20 - Negative
@activity: HIV.D20 Diagnostics
@description: HBsAg test result was negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Diagnostics|GDE20)":
  exists "Negative (Diagnostics|GDE20) Condition"
    or exists "Negative (Diagnostics|GDE20) Observation"
define "Negative (Diagnostics|GDE20) Condition":
  [Condition: Concepts."Negative - HIV.G.DE20"]
define "Negative (Diagnostics|GDE20) Observation":
  "HBsAg test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.G.DE20"
/* End of Negative (Diagnostics|GDE20) */

/*
@dataElement: HIV.G.DE21 - Indeterminate
@activity: HIV.D20 Diagnostics
@description: HBsAg test result was indeterminate
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (Diagnostics|GDE21)":
  exists "Indeterminate (Diagnostics|GDE21) Condition"
    or exists "Indeterminate (Diagnostics|GDE21) Observation"
define "Indeterminate (Diagnostics|GDE21) Condition":
  [Condition: Concepts."Indeterminate - HIV.G.DE21"]
define "Indeterminate (Diagnostics|GDE21) Observation":
  "HBsAg test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Indeterminate - HIV.G.DE21"
/* End of Indeterminate (Diagnostics|GDE21) */

/*
@dataElement: HIV.G.DE42 - HCV test date
@activity: HIV.D20 Diagnostics
@description: Date client was tested for hepatitis C virus (HCV antibody, HCV RNA or HCV core antigen)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV test date (Diagnostics)":
  [Observation: Concepts."HCV test date - HIV.G.DE42"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HCV test date (Diagnostics) Value":
  "HCV test date (Diagnostics)" O
  return O.value
/* End of HCV test date (Diagnostics) */

/*
@dataElement: HIV.G.DE43 - HCV test result
@activity: HIV.D20 Diagnostics
@description: Hepatitis C virus test result (HCV antibody, HCV RNA or HCV core antigen)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV test result (Diagnostics)":
  exists "HCV test result (Diagnostics) Observation"
define "HCV test result (Diagnostics) Observation":
  [Observation: Concepts."HCV test result - HIV.G.DE43"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HCV test result (Diagnostics) */

/*
@dataElement: HIV.G.DE44 - Positive
@activity: HIV.D20 Diagnostics
@description: HCV test result was positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Diagnostics|GDE44)":
  exists "Positive (Diagnostics|GDE44) Condition"
    or exists "Positive (Diagnostics|GDE44) Observation"
define "Positive (Diagnostics|GDE44) Condition":
  [Condition: Concepts."Positive - HIV.G.DE44"]
define "Positive (Diagnostics|GDE44) Observation":
  "HCV test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.G.DE44"
/* End of Positive (Diagnostics|GDE44) */

/*
@dataElement: HIV.G.DE45 - Negative
@activity: HIV.D20 Diagnostics
@description: HCV test result was negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Diagnostics|GDE45)":
  exists "Negative (Diagnostics|GDE45) Condition"
    or exists "Negative (Diagnostics|GDE45) Observation"
define "Negative (Diagnostics|GDE45) Condition":
  [Condition: Concepts."Negative - HIV.G.DE45"]
define "Negative (Diagnostics|GDE45) Observation":
  "HCV test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.G.DE45"
/* End of Negative (Diagnostics|GDE45) */

/*
@dataElement: HIV.G.DE46 - Indeterminate
@activity: HIV.D20 Diagnostics
@description: HCV test result was indeterminate
*/
// TODO: Replace placeholder with relevant CQL logic
define "Indeterminate (Diagnostics|GDE46)":
  exists "Indeterminate (Diagnostics|GDE46) Condition"
    or exists "Indeterminate (Diagnostics|GDE46) Observation"
define "Indeterminate (Diagnostics|GDE46) Condition":
  [Condition: Concepts."Indeterminate - HIV.G.DE46"]
define "Indeterminate (Diagnostics|GDE46) Observation":
  "HCV test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Indeterminate - HIV.G.DE46"
/* End of Indeterminate (Diagnostics|GDE46) */

/*
@dataElement: HIV.G.DE47 - HCV viral load test date
@activity: HIV.D20 Diagnostics
@description: Hepatitis C viral load test date
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test date (Diagnostics)":
  [Observation: Concepts."HCV viral load test date - HIV.G.DE47"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HCV viral load test date (Diagnostics) Value":
  "HCV viral load test date (Diagnostics)" O
  return O.value
/* End of HCV viral load test date (Diagnostics) */

/*
@dataElement: HIV.G.DE48 - HCV viral load test result
@activity: HIV.D20 Diagnostics
@description: Hepatitis C viral load test result (qualitative)
*/
// TODO: Replace placeholder with relevant CQL logic
define "HCV viral load test result (Diagnostics)":
  exists "HCV viral load test result (Diagnostics) Observation"
define "HCV viral load test result (Diagnostics) Observation":
  [Observation: Concepts."HCV viral load test result - HIV.G.DE48"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HCV viral load test result (Diagnostics) */

/*
@dataElement: HIV.G.DE49 - Detected
@activity: HIV.D20 Diagnostics
@description: HCV was detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Detected (Diagnostics)":
  exists "Detected (Diagnostics) Condition"
    or exists "Detected (Diagnostics) Observation"
define "Detected (Diagnostics) Condition":
  [Condition: Concepts."Detected - HIV.G.DE49"]
define "Detected (Diagnostics) Observation":
  "HCV viral load test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Detected - HIV.G.DE49"
/* End of Detected (Diagnostics) */

/*
@dataElement: HIV.G.DE50 - Not detected
@activity: HIV.D20 Diagnostics
@description: HCV was not detected
*/
// TODO: Replace placeholder with relevant CQL logic
define "Not detected (Diagnostics)":
  exists "Not detected (Diagnostics) Condition"
    or exists "Not detected (Diagnostics) Observation"
define "Not detected (Diagnostics) Condition":
  [Condition: Concepts."Not detected - HIV.G.DE50"]
define "Not detected (Diagnostics) Observation":
  "HCV viral load test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Not detected - HIV.G.DE50"
/* End of Not detected (Diagnostics) */

/*
@dataElement: HIV.G.DE69 - Syphilis test date
@activity: HIV.D20 Diagnostics
@description: Date of syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test date (Diagnostics)":
  [Observation: Concepts."Syphilis test date - HIV.G.DE69"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Syphilis test date (Diagnostics) Value":
  "Syphilis test date (Diagnostics)" O
  return O.value
/* End of Syphilis test date (Diagnostics) */

/*
@dataElement: HIV.G.DE70 - Syphilis test result
@activity: HIV.D20 Diagnostics
@description: Result from syphilis test
*/
// TODO: Replace placeholder with relevant CQL logic
define "Syphilis test result (Diagnostics)":
  exists "Syphilis test result (Diagnostics) Observation"
define "Syphilis test result (Diagnostics) Observation":
  [Observation: Concepts."Syphilis test result - HIV.G.DE70"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Syphilis test result (Diagnostics) */

/*
@dataElement: HIV.G.DE71 - Positive
@activity: HIV.D20 Diagnostics
@description: Test result is positive for syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Positive (Diagnostics|GDE71)":
  exists "Positive (Diagnostics|GDE71) Condition"
    or exists "Positive (Diagnostics|GDE71) Observation"
define "Positive (Diagnostics|GDE71) Condition":
  [Condition: Concepts."Positive - HIV.G.DE71"]
define "Positive (Diagnostics|GDE71) Observation":
  "Syphilis test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Positive - HIV.G.DE71"
/* End of Positive (Diagnostics|GDE71) */

/*
@dataElement: HIV.G.DE72 - Negative
@activity: HIV.D20 Diagnostics
@description: Test result is negative for syphilis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Diagnostics|GDE72)":
  exists "Negative (Diagnostics|GDE72) Condition"
    or exists "Negative (Diagnostics|GDE72) Observation"
define "Negative (Diagnostics|GDE72) Condition":
  [Condition: Concepts."Negative - HIV.G.DE72"]
define "Negative (Diagnostics|GDE72) Observation":
  "Syphilis test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.G.DE72"
/* End of Negative (Diagnostics|GDE72) */

/*
@dataElement: HIV.G.DE73 - Inconclusive
@activity: HIV.D20 Diagnostics
@description: Test result is inconclusive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Inconclusive (Diagnostics)":
  exists "Inconclusive (Diagnostics) Condition"
    or exists "Inconclusive (Diagnostics) Observation"
define "Inconclusive (Diagnostics) Condition":
  [Condition: Concepts."Inconclusive - HIV.G.DE73"]
define "Inconclusive (Diagnostics) Observation":
  "Syphilis test result (Diagnostics) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Inconclusive - HIV.G.DE73"
/* End of Inconclusive (Diagnostics) */

/*
@dataElement: HIV.H.DE34 - HIV status of partner or contact
@activity: HIV.B6 Capture or update client history
@description: HIV status of the partner or contact given by the index case
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV status of partner or contact (Follow)":
  exists "HIV status of partner or contact (Follow) Observation"
define "HIV status of partner or contact (Follow) Observation":
  [Observation: Concepts."HIV status of partner or contact"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV status of partner or contact (Follow) */

/*
@dataElement: HIV.H.DE35 - Already knew positive
@activity: HIV.B6 Capture or update client history
@description: The partner or contact of the index case already knew they are HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Already knew positive (Follow)":
  exists "Already knew positive (Follow) Condition"
    or exists "Already knew positive (Follow) Observation"
define "Already knew positive (Follow) Condition":
  [Condition: Concepts."Already knew positive"]
define "Already knew positive (Follow) Observation":
  "HIV status of partner or contact (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Already knew positive"
/* End of Already knew positive (Follow) */

/*
@dataElement: HIV.H.DE36 - Newly diagnosed
@activity: HIV.B6 Capture or update client history
@description: The partner or contact of the index case is newly diagnosed as HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "Newly diagnosed (Follow)":
  exists "Newly diagnosed (Follow) Condition"
    or exists "Newly diagnosed (Follow) Observation"
define "Newly diagnosed (Follow) Condition":
  [Condition: Concepts."Newly diagnosed"]
define "Newly diagnosed (Follow) Observation":
  "HIV status of partner or contact (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Newly diagnosed"
/* End of Newly diagnosed (Follow) */

/*
@dataElement: HIV.H.DE37 - Negative
@activity: HIV.B6 Capture or update client history
@description: The partner or contact of the index case is newly diagnosed is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "Negative (Follow)":
  exists "Negative (Follow) Condition"
    or exists "Negative (Follow) Observation"
define "Negative (Follow) Condition":
  [Condition: Concepts."Negative - HIV.H.DE37"]
define "Negative (Follow) Observation":
  "HIV status of partner or contact (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Negative - HIV.H.DE37"
/* End of Negative (Follow) */

/*
@dataElement: HIV.H.DE41 - HIV treatment outcome
@activity: HIV.H3 Record outreach and result
@description: The outcome for the client which is used for reporting retention/attrition.
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV treatment outcome (Follow)":
  exists "HIV treatment outcome (Follow) Observation"
define "HIV treatment outcome (Follow) Observation":
  [Observation: Concepts."HIV treatment outcome"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV treatment outcome (Follow) */

/*
@dataElement: HIV.H.DE42 - Lost to follow-up
@activity: HIV.H3 Record outreach and result
@description: Twenty-eight days or more since last missed appointment 
*/
// TODO: Replace placeholder with relevant CQL logic
define "Lost to follow-up (Follow)":
  exists "Lost to follow-up (Follow) Condition"
    or exists "Lost to follow-up (Follow) Observation"
define "Lost to follow-up (Follow) Condition":
  [Condition: Concepts."Lost to follow-up"]
define "Lost to follow-up (Follow) Observation":
  "HIV treatment outcome (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Lost to follow-up"
/* End of Lost to follow-up (Follow) */

/*
@dataElement: HIV.H.DE43 - Transferred out
@activity: HIV.H3 Record outreach and result
@description: The client transferred to another facility
*/
// TODO: Replace placeholder with relevant CQL logic
define "Transferred out (Follow)":
  exists "Transferred out (Follow) Condition"
    or exists "Transferred out (Follow) Observation"
define "Transferred out (Follow) Condition":
  [Condition: Concepts."Transferred out"]
define "Transferred out (Follow) Observation":
  "HIV treatment outcome (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Transferred out"
/* End of Transferred out (Follow) */

/*
@dataElement: HIV.H.DE44 - Death documented
@activity: HIV.H3 Record outreach and result
@description: People living with HIV previously on ART who are confirmed to have died from any cause
*/
// TODO: Replace placeholder with relevant CQL logic
define "Death documented (Follow)":
  exists "Death documented (Follow) Condition"
    or exists "Death documented (Follow) Observation"
define "Death documented (Follow) Condition":
  [Condition: Concepts."Death documented"]
define "Death documented (Follow) Observation":
  "HIV treatment outcome (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Death documented"
/* End of Death documented (Follow) */

/*
@dataElement: HIV.H.DE45 - Refused stopped treatment
@activity: HIV.H3 Record outreach and result
@description: Client was contacted and confirmed to have stopped ART (reasons may include stigma and discrimination, faith healing, etc.)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Refused stopped treatment (Follow)":
  exists "Refused stopped treatment (Follow) Condition"
    or exists "Refused stopped treatment (Follow) Observation"
define "Refused stopped treatment (Follow) Condition":
  [Condition: Concepts."Refused stopped treatment"]
define "Refused stopped treatment (Follow) Observation":
  "HIV treatment outcome (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Refused stopped treatment"
/* End of Refused stopped treatment (Follow) */

/*
@dataElement: HIV.H.DE47 - On ART
@activity: HIV.H3 Record outreach and result
@description: Client is currently taking ART 
*/
// TODO: Replace placeholder with relevant CQL logic
define "On ART (Follow)":
  exists "On ART (Follow) Observation"
define "On ART (Follow) Observation":
  [Observation: Concepts."On ART - HIV.H.DE47"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of On ART (Follow) */

/*
@dataElement: HIV.H.DE73 - Date ART stopped
@activity: HIV.H3 Record outreach and result
@description: Date on which client stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date ART stopped (Follow)":
  [Observation: Concepts."Date ART stopped - HIV.H.DE73"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date ART stopped (Follow) Value":
  "Date ART stopped (Follow)" O
  return O.value
/* End of Date ART stopped (Follow) */

/*
@dataElement: HIV.H.DE74 - Reason ART stopped
@activity: HIV.H3 Record outreach and result
@description: Reason why client intentionally stopped ART
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reason ART stopped (Follow)":
  exists "Reason ART stopped (Follow) Observation"
define "Reason ART stopped (Follow) Observation":
  [Observation: Concepts."Reason ART stopped - HIV.H.DE74"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Reason ART stopped (Follow) */

/*
@dataElement: HIV.H.DE75 - Toxicity/side effects
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because of toxicity/side effects
*/
// TODO: Replace placeholder with relevant CQL logic
define "Toxicity/side effects (Follow)":
  exists "Toxicity/side effects (Follow) Condition"
    or exists "Toxicity/side effects (Follow) Observation"
define "Toxicity/side effects (Follow) Condition":
  [Condition: Concepts."Toxicity/side effects - HIV.H.DE75"]
define "Toxicity/side effects (Follow) Observation":
  "Reason ART stopped (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Toxicity/side effects - HIV.H.DE75"
/* End of Toxicity/side effects (Follow) */

/*
@dataElement: HIV.H.DE76 - Severe illness, hospitalization
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because of severe illness, hospitalization
*/
// TODO: Replace placeholder with relevant CQL logic
define "Severe illness, hospitalization (Follow)":
  exists "Severe illness, hospitalization (Follow) Condition"
    or exists "Severe illness, hospitalization (Follow) Observation"
define "Severe illness, hospitalization (Follow) Condition":
  [Condition: Concepts."Severe illness, hospitalization - HIV.H.DE76"]
define "Severe illness, hospitalization (Follow) Observation":
  "Reason ART stopped (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Severe illness, hospitalization - HIV.H.DE76"
/* End of Severe illness, hospitalization (Follow) */

/*
@dataElement: HIV.H.DE77 - Drugs out of stock 
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because of drugs being out of stock 
*/
// TODO: Replace placeholder with relevant CQL logic
define "Drugs out of stock  (Follow)":
  exists "Drugs out of stock  (Follow) Condition"
    or exists "Drugs out of stock  (Follow) Observation"
define "Drugs out of stock  (Follow) Condition":
  [Condition: Concepts."Drugs out of stock "]
define "Drugs out of stock  (Follow) Observation":
  "Reason ART stopped (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Drugs out of stock "
/* End of Drugs out of stock  (Follow) */

/*
@dataElement: HIV.H.DE78 - Client lacks finances 
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because client lacked finances 
*/
// TODO: Replace placeholder with relevant CQL logic
define "Client lacks finances  (Follow)":
  exists "Client lacks finances  (Follow) Condition"
    or exists "Client lacks finances  (Follow) Observation"
define "Client lacks finances  (Follow) Condition":
  [Condition: Concepts."Client lacks finances "]
define "Client lacks finances  (Follow) Observation":
  "Reason ART stopped (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Client lacks finances "
/* End of Client lacks finances  (Follow) */

/*
@dataElement: HIV.H.DE79 - Excluded HIV infection in infant
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART because the infant was determined to not have HIV
*/
// TODO: Replace placeholder with relevant CQL logic
define "Excluded HIV infection in infant (Follow)":
  exists "Excluded HIV infection in infant (Follow) Condition"
    or exists "Excluded HIV infection in infant (Follow) Observation"
define "Excluded HIV infection in infant (Follow) Condition":
  [Condition: Concepts."Excluded HIV infection in infant - HIV.H.DE79"]
define "Excluded HIV infection in infant (Follow) Observation":
  "Reason ART stopped (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Excluded HIV infection in infant - HIV.H.DE79"
/* End of Excluded HIV infection in infant (Follow) */

/*
@dataElement: HIV.H.DE80 - Other reason for stopping ART
@activity: HIV.H3 Record outreach and result
@description: Client stopped ART for other reason
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other reason for stopping ART (Follow)":
  exists "Other reason for stopping ART (Follow) Condition"
    or exists "Other reason for stopping ART (Follow) Observation"
define "Other reason for stopping ART (Follow) Condition":
  [Condition: Concepts."Other reason for stopping ART - HIV.H.DE80"]
define "Other reason for stopping ART (Follow) Observation":
  "Reason ART stopped (Follow) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other reason for stopping ART - HIV.H.DE80"
/* End of Other reason for stopping ART (Follow) */

/*
@dataElement: HIV.PRV.DE1 - At elevated risk for HIV acquisition
@activity: HIV.B6 Capture or update client history
@description: Client is at elevated risk for HIV acquisition, defined according to country/programme context
*/
// TODO: Replace placeholder with relevant CQL logic
define "At elevated risk for HIV acquisition (Prevention)":
  exists "At elevated risk for HIV acquisition (Prevention) Observation"
define "At elevated risk for HIV acquisition (Prevention) Observation":
  [Observation: Concepts."At elevated risk for HIV acquisition - HIV.PRV.DE1"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of At elevated risk for HIV acquisition (Prevention) */

/*
@dataElement: HIV.PRV.DE2 - HIV prevention intervention
@activity: HIV.B6 Capture or update client history
@description: HIV prevention intervention that client accessed
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV prevention intervention (Prevention)":
  exists "HIV prevention intervention (Prevention) Observation"
define "HIV prevention intervention (Prevention) Observation":
  [Observation: Concepts."HIV prevention intervention"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV prevention intervention (Prevention) */

/*
@dataElement: HIV.PRV.DE3 - PrEP service
@activity: HIV.B6 Capture or update client history
@description: Client accessed PrEP services
*/
// TODO: Replace placeholder with relevant CQL logic
define "PrEP service (Prevention)":
  exists "PrEP service (Prevention) Condition"
    or exists "PrEP service (Prevention) Observation"
define "PrEP service (Prevention) Condition":
  [Condition: Concepts."PrEP service"]
define "PrEP service (Prevention) Observation":
  "HIV prevention intervention (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."PrEP service"
/* End of PrEP service (Prevention) */

/*
@dataElement: HIV.PRV.DE4 - OAMT
@activity: HIV.B6 Capture or update client history
@description: Client accessed opioid agonist maintenance treatment (OAMT) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "OAMT (Prevention)":
  exists "OAMT (Prevention) Condition"
    or exists "OAMT (Prevention) Observation"
define "OAMT (Prevention) Condition":
  [Condition: Concepts."OAMT"]
define "OAMT (Prevention) Observation":
  "HIV prevention intervention (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."OAMT"
/* End of OAMT (Prevention) */

/*
@dataElement: HIV.PRV.DE5 - NSP
@activity: HIV.B6 Capture or update client history
@description: Client accessed needle-syringe programme (NSP) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "NSP (Prevention)":
  exists "NSP (Prevention) Condition"
    or exists "NSP (Prevention) Observation"
define "NSP (Prevention) Condition":
  [Condition: Concepts."NSP"]
define "NSP (Prevention) Observation":
  "HIV prevention intervention (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."NSP"
/* End of NSP (Prevention) */

/*
@dataElement: HIV.PRV.DE6 - STI services
@activity: HIV.B6 Capture or update client history
@description: Client accessed sexually transmitted infection (STI) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "STI services (Prevention)":
  exists "STI services (Prevention) Condition"
    or exists "STI services (Prevention) Observation"
define "STI services (Prevention) Condition":
  [Condition: Concepts."STI services"]
define "STI services (Prevention) Observation":
  "HIV prevention intervention (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."STI services"
/* End of STI services (Prevention) */

/*
@dataElement: HIV.PRV.DE7 - VMMC
@activity: HIV.B6 Capture or update client history
@description: Client accessed voluntary medical male circumcision (VMMC) services
*/
// TODO: Replace placeholder with relevant CQL logic
define "VMMC (Prevention)":
  exists "VMMC (Prevention) Condition"
    or exists "VMMC (Prevention) Observation"
define "VMMC (Prevention) Condition":
  [Condition: Concepts."VMMC"]
define "VMMC (Prevention) Observation":
  "HIV prevention intervention (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."VMMC"
/* End of VMMC (Prevention) */

/*
@dataElement: HIV.PRV.DE8 - Other
@activity: HIV.B6 Capture or update client history
@description: Client accessed other HIV prevention services
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other (Prevention)":
  exists "Other (Prevention) Condition"
    or exists "Other (Prevention) Observation"
define "Other (Prevention) Condition":
  [Condition: Concepts."Other - HIV.PRV.DE8"]
define "Other (Prevention) Observation":
  "HIV prevention intervention (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Other - HIV.PRV.DE8"
/* End of Other (Prevention) */

/*
@dataElement: HIV.PRV.DE10 - Date accessed HIV prevention intervention
@activity: HIV.B6 Capture or update client history
@description: Date the client accessed HIV prevention intervention
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date accessed HIV prevention intervention (Prevention)":
  [Observation: Concepts."Date accessed HIV prevention intervention"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date accessed HIV prevention intervention (Prevention) Value":
  "Date accessed HIV prevention intervention (Prevention)" O
  return O.value
/* End of Date accessed HIV prevention intervention (Prevention) */

/*
@dataElement: HIV.PRV.DE11 - HIV status of contact
@activity: HIV.B6 Capture or update client history
@description: The HIV status of the client's contact
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV status of contact (Prevention)":
  exists "HIV status of contact (Prevention) Observation"
define "HIV status of contact (Prevention) Observation":
  [Observation: Concepts."HIV status of contact"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV status of contact (Prevention) */

/*
@dataElement: HIV.PRV.DE12 - HIV-positive
@activity: HIV.B6 Capture or update client history
@description: Client's contact is HIV-positive
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-positive (Prevention)":
  exists "HIV-positive (Prevention) Condition"
    or exists "HIV-positive (Prevention) Observation"
define "HIV-positive (Prevention) Condition":
  [Condition: Concepts."HIV-positive - HIV.PRV.DE12"]
define "HIV-positive (Prevention) Observation":
  "HIV status of contact (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-positive - HIV.PRV.DE12"
/* End of HIV-positive (Prevention) */

/*
@dataElement: HIV.PRV.DE13 - HIV-negative
@activity: HIV.B6 Capture or update client history
@description: Client's contact is HIV-negative
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-negative (Prevention)":
  exists "HIV-negative (Prevention) Condition"
    or exists "HIV-negative (Prevention) Observation"
define "HIV-negative (Prevention) Condition":
  [Condition: Concepts."HIV-negative - HIV.PRV.DE13"]
define "HIV-negative (Prevention) Observation":
  "HIV status of contact (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."HIV-negative - HIV.PRV.DE13"
/* End of HIV-negative (Prevention) */

/*
@dataElement: HIV.PRV.DE14 - Unknown
@activity: HIV.B6 Capture or update client history
@description: Client does not know contact's HIV status
*/
// TODO: Replace placeholder with relevant CQL logic
define "Unknown (Prevention)":
  exists "Unknown (Prevention) Condition"
    or exists "Unknown (Prevention) Observation"
define "Unknown (Prevention) Condition":
  [Condition: Concepts."Unknown - HIV.PRV.DE14"]
define "Unknown (Prevention) Observation":
  "HIV status of contact (Prevention) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Unknown - HIV.PRV.DE14"
/* End of Unknown (Prevention) */

/*
@dataElement: HIV.PRV.DE15 - Date injecting equipment provided
@activity: HIV.B21 Offer prevention options
@description: Date client was provided with injecting equipment
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date injecting equipment provided (Prevention)":
  [Observation: Concepts."Date injecting equipment provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date injecting equipment provided (Prevention) Value":
  "Date injecting equipment provided (Prevention)" O
  return O.value
/* End of Date injecting equipment provided (Prevention) */

/*
@dataElement: HIV.PRV.DE17 - Date OAMT initiated
@activity: HIV.B21 Offer prevention options
@description: Date client initiated opioid agonist maintenance treatment (OAMT)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date OAMT initiated (Prevention)":
  [Observation: Concepts."Date OAMT initiated"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date OAMT initiated (Prevention) Value":
  "Date OAMT initiated (Prevention)" O
  return O.value
/* End of Date OAMT initiated (Prevention) */

/*
@dataElement: HIV.PRV.DE20 - Currently on OAMT
@activity: HIV.B6 Capture or update client history
@description: Client is currently on opioid agonist maintenance treatment (OAMT) at reporting date, defined according to country/program to account for medication dispensed and LTFU criterion
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently on OAMT (Prevention)":
  exists "Currently on OAMT (Prevention) Observation"
define "Currently on OAMT (Prevention) Observation":
  [Observation: Concepts."Currently on OAMT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Currently on OAMT (Prevention) */

/*
@dataElement: HIV.PRV.DE21 - Retained on OAMT
@activity: HIV.B6 Capture or update client history
@description: Client is retained on opioid agonist maintenance treatment (OAMT) at reporting date, defined according to country/program to account for medication dispensed and LTFU criterion
*/
// TODO: Replace placeholder with relevant CQL logic
define "Retained on OAMT (Prevention)":
  exists "Retained on OAMT (Prevention) Observation"
define "Retained on OAMT (Prevention) Observation":
  [Observation: Concepts."Retained on OAMT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Retained on OAMT (Prevention) */

/*
@dataElement: HIV.PRV.DE25 - Date of loss to follow-up or OAMT stopped
@activity: HIV.B6 Capture or update client history
@description: Date of loss to follow-up or opioid agonist maintenance treatment (OAMT) stopped
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of loss to follow-up or OAMT stopped (Prevention)":
  [Observation: Concepts."Date of loss to follow-up or OAMT stopped"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of loss to follow-up or OAMT stopped (Prevention) Value":
  "Date of loss to follow-up or OAMT stopped (Prevention)" O
  return O.value
/* End of Date of loss to follow-up or OAMT stopped (Prevention) */

/*
@dataElement: HIV.PRV.DE27 - Date medications prescribed
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Date the client was prescribed medications
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date medications prescribed (Prevention)":
  [Observation: Concepts."Date medications prescribed - HIV.PRV.DE27"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date medications prescribed (Prevention) Value":
  "Date medications prescribed (Prevention)" O
  return O.value
/* End of Date medications prescribed (Prevention) */

/*
@dataElement: HIV.PRV.DE28 - Number of days prescribed
@activity: HIV.C23 Prescribe or administer PrEP or PEP
@description: Days of medication client has been prescribed
*/
// TODO: Replace placeholder with relevant CQL logic
define "Number of days prescribed (Prevention)":
  [Observation: Concepts."Number of days prescribed - HIV.PRV.DE28"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Number of days prescribed (Prevention) Value":
  "Number of days prescribed (Prevention)" O
  return O.value
/* End of Number of days prescribed (Prevention) */

/*
@dataElement: HIV.SRV.DE1 - HIV test date
@activity: HIV.F8 Test infant/child for HIV using testing algorithm
@description: Date of the HIV test
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test date (Surveillance)":
  [Observation: Concepts."HIV test date - HIV.SRV.DE1"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "HIV test date (Surveillance) Value":
  "HIV test date (Surveillance)" O
  return O.value
/* End of HIV test date (Surveillance) */

/*
@dataElement: HIV.SRV.DE2 - HIV test result
@activity: HIV.B7 Test for HIV using testing algorithm
@description: The result from HIV testing after applying the testing algorithm
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV test result (Surveillance)":
  exists "HIV test result (Surveillance) Observation"
define "HIV test result (Surveillance) Observation":
  [Observation: Concepts."HIV test result - HIV.SRV.DE2"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV test result (Surveillance) */

/*
@dataElement: HIV.SRV.DE3 - Baseline CD4 count
@activity: HIV.D20 Diagnostics
@description: CD4 count performed at HIV diagnosis
*/
// TODO: Replace placeholder with relevant CQL logic
define "Baseline CD4 count (Surveillance)":
  [Observation: Concepts."Baseline CD4 count - HIV.SRV.DE3"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Baseline CD4 count (Surveillance) Value":
  "Baseline CD4 count (Surveillance)" O
  return O.value
/* End of Baseline CD4 count (Surveillance) */

/*
@dataElement: HIV.SRV.DE4 - Date of baseline CD4 count test
@activity: HIV.D20 Diagnostics
@description: Date and time when baseline CD4 count test was conducted
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of baseline CD4 count test (Surveillance)":
  [Observation: Concepts."Date of baseline CD4 count test - HIV.SRV.DE4"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of baseline CD4 count test (Surveillance) Value":
  "Date of baseline CD4 count test (Surveillance)" O
  return O.value
/* End of Date of baseline CD4 count test (Surveillance) */

/*
@dataElement: HIV.SRV.DE5 - HIV clinical stage
@activity: HIV.D8 Capture or update client history
@description: WHO clinical stage of client based on signs and symptoms. WHO clinical staging is a way to categorize HIV disease severity based on new or recurrent clinical events. There are 4 WHO clinical stages that range from mild symptoms (WHO clinical stage 1) to severe symptoms (WHO clinical stage 4).
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV clinical stage (Surveillance)":
  exists "HIV clinical stage (Surveillance) Observation"
define "HIV clinical stage (Surveillance) Observation":
  [Observation: Concepts."HIV clinical stage - HIV.SRV.DE5"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV clinical stage (Surveillance) */

/*
@dataElement: HIV.SRV.DE6 - ART start date
@activity: HIV.B8 Provide post-test counselling
@description: The date on which the client started or restarted antiretroviral therapy (ART)
*/
// TODO: Replace placeholder with relevant CQL logic
define "ART start date (Surveillance)":
  [Observation: Concepts."ART start date - HIV.SRV.DE6"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "ART start date (Surveillance) Value":
  "ART start date (Surveillance)" O
  return O.value
/* End of ART start date (Surveillance) */

/*
@dataElement: HIV.SRV.DE7 - Currently pregnant
@activity: HIV.B6 Capture or update client history
@description: Client is currently pregnant
*/
// TODO: Replace placeholder with relevant CQL logic
define "Currently pregnant (Surveillance)":
  exists "Currently pregnant (Surveillance) Observation"
define "Currently pregnant (Surveillance) Observation":
  [Observation: Concepts."Currently pregnant - HIV.SRV.DE7"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Currently pregnant (Surveillance) */

/*
@dataElement: HIV.SRV.DE8 - CD4 count
@activity: HIV.D20 Diagnostics
@description: CD4 cell count in cells/mm^3
*/
// TODO: Replace placeholder with relevant CQL logic
define "CD4 count (Surveillance)":
  [Observation: Concepts."CD4 count - HIV.SRV.DE8"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "CD4 count (Surveillance) Value":
  "CD4 count (Surveillance)" O
  return O.value
/* End of CD4 count (Surveillance) */

/*
@dataElement: HIV.SRV.DE12 - Date of viral load sample collection
@activity: HIV.D10 Counsel returning client
@description: Date and time when the sample was collected to test the client's HIV viral load
*/
// TODO: Replace placeholder with relevant CQL logic
define "Date of viral load sample collection (Surveillance)":
  [Observation: Concepts."Date of viral load sample collection - HIV.SRV.DE12"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Date of viral load sample collection (Surveillance) Value":
  "Date of viral load sample collection (Surveillance)" O
  return O.value
/* End of Date of viral load sample collection (Surveillance) */

/*
@dataElement: HIV.SRV.DE13 - Viral load test result
@activity: HIV.D20 Diagnostics
@description: Result from the viral load test in number of copies/mL
*/
// TODO: Replace placeholder with relevant CQL logic
define "Viral load test result (Surveillance)":
  [Observation: Concepts."Viral load test result - HIV.SRV.DE13"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Viral load test result (Surveillance) Value":
  "Viral load test result (Surveillance)" O
  return O.value
/* End of Viral load test result (Surveillance) */

/*
@dataElement: HIV.SRV.DE15 - Visit date
@activity: HIV.A2 Gather client details
@description: The date and time of the client's visit
*/
// TODO: Replace placeholder with relevant CQL logic
define "Visit date (Surveillance)":
  [Observation: Concepts."Visit date - HIV.SRV.DE15"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Visit date (Surveillance) Value":
  "Visit date (Surveillance)" O
  return O.value
/* End of Visit date (Surveillance) */

/*
@dataElement: HIV.SRV.DE18 - ANC contact date
@activity: HIV.E1 Capture or update mother's history
@description: The date and time of the client's ANC contact (in the ANC DAK this is called 'Contact date')
*/
// TODO: Replace placeholder with relevant CQL logic
define "ANC contact date (Surveillance)":
  [Observation: Concepts."ANC contact date - HIV.SRV.DE18"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "ANC contact date (Surveillance) Value":
  "ANC contact date (Surveillance)" O
  return O.value
/* End of ANC contact date (Surveillance) */

/*
@dataElement: HIV.SRV.DE20 - HIV-exposed infant or child
@activity: HIV.F6 Check whether infant/child had HIV exposure
@description: Whether the infant or child was determined to have had HIV exposure
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV-exposed infant or child (Surveillance)":
  exists "HIV-exposed infant or child (Surveillance) Observation"
define "HIV-exposed infant or child (Surveillance) Observation":
  [Observation: Concepts."HIV-exposed infant or child - HIV.SRV.DE20"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of HIV-exposed infant or child (Surveillance) */

/*
@dataElement: HIV.SRV.DE21 - Test result of HIV assay 1
@activity: HIV.E4 Test mother for HIV using testing algorithm
@description: The result of the first HIV assay in the testing strategy
*/
// TODO: Replace placeholder with relevant CQL logic
define "Test result of HIV assay 1 (Surveillance)":
  exists "Test result of HIV assay 1 (Surveillance) Observation"
define "Test result of HIV assay 1 (Surveillance) Observation":
  [Observation: Concepts."Test result of HIV assay 1 - HIV.SRV.DE21"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Test result of HIV assay 1 (Surveillance) */

/*
@dataElement: HIV.SRV.DE22 - Final diagnosis of HIV-exposed infant
@activity: HIV.F20 Record infant's/child's final HIV diagnosis
@description: HIV-exposed infant final status at 18 months or 3 months after cessation of breastfeeding (whichever is later).
*/
// TODO: Replace placeholder with relevant CQL logic
define "Final diagnosis of HIV-exposed infant (Surveillance)":
  exists "Final diagnosis of HIV-exposed infant (Surveillance) Observation"
define "Final diagnosis of HIV-exposed infant (Surveillance) Observation":
  [Observation: Concepts."Final diagnosis of HIV-exposed infant - HIV.SRV.DE22"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Final diagnosis of HIV-exposed infant (Surveillance) */

/*
@dataElement: HIV.Config.DE6 - Malaria-endemic setting
@activity: HIV.Configuration
@description: Whether the setting is a malaria-endemic setting
*/
// TODO: Replace placeholder with relevant CQL logic
define "Malaria-endemic setting (Configuration)":
  exists "Malaria-endemic setting (Configuration) Observation"
define "Malaria-endemic setting (Configuration) Observation":
  [Observation: Concepts."Malaria-endemic setting"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of Malaria-endemic setting (Configuration) */

/*
@dataElement: HIV.Config.DE12 - HIV burden of the setting
@activity: HIV.Configuration
@description: HIV burden of the setting (high or low) based on the national HIV prevalence or where the HIV prevalence and/or incidence in a geographical setting is higher than national prevalence and, therefore, needs priority in the HIV response
*/
// TODO: Replace placeholder with relevant CQL logic
define "HIV burden of the setting (Configuration)":
  exists "HIV burden of the setting (Configuration) Observation"
define "HIV burden of the setting (Configuration) Observation":
  [Observation: Concepts."HIV burden of the setting"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of HIV burden of the setting (Configuration) */

/*
@dataElement: HIV.Config.DE13 - High HIV burden setting
@activity: HIV.Configuration
@description: Settings with >5% national HIV prevalence and subpopulations and geographic settings where HIV prevalence and/or incidence is higher than nationally.
*/
// TODO: Replace placeholder with relevant CQL logic
define "High HIV burden setting (Configuration)":
  exists "High HIV burden setting (Configuration) Condition"
    or exists "High HIV burden setting (Configuration) Observation"
define "High HIV burden setting (Configuration) Condition":
  [Condition: Concepts."High HIV burden setting"]
define "High HIV burden setting (Configuration) Observation":
  "HIV burden of the setting (Configuration) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."High HIV burden setting"
/* End of High HIV burden setting (Configuration) */

/*
@dataElement: HIV.Config.DE14 - Low HIV burden setting
@activity: HIV.Configuration
@description: Settings with <5% HIV national prevalence but where certain populations (primarily key populations and their partners) and geographic settings may have higher HIV prevalence and/or incidence than nationally and, therefore, need priority in the HIV response
*/
// TODO: Replace placeholder with relevant CQL logic
define "Low HIV burden setting (Configuration)":
  exists "Low HIV burden setting (Configuration) Condition"
    or exists "Low HIV burden setting (Configuration) Observation"
define "Low HIV burden setting (Configuration) Condition":
  [Condition: Concepts."Low HIV burden setting"]
define "Low HIV burden setting (Configuration) Observation":
  "HIV burden of the setting (Configuration) Observation" O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value ~ Concepts."Low HIV burden setting"
/* End of Low HIV burden setting (Configuration) */

/*
@dataElement: HIV.Config.DE15 - HPV DNA testing operational at the health facility
@activity: HIV.Configuration
@description: Is HPV DNA testing operational at the health facility for cervical cancer screening?
*/
// TODO: Replace placeholder with relevant CQL logic
define "HPV DNA testing operational at the health facility (Configuration)":
  exists "HPV DNA testing operational at the health facility (Configuration) Observation"
define "HPV DNA testing operational at the health facility (Configuration) Observation":
  [Observation: Concepts."HPV DNA testing operational at the health facility"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and O.value is true
/* End of HPV DNA testing operational at the health facility (Configuration) */

/*
@dataElement: HIV.Config.DE19 - Other priority populations
@activity: HIV.Configuration
@description: Other populations of priority of HIV prevention and care in local context (provided during adaptation)
*/
// TODO: Replace placeholder with relevant CQL logic
define "Other priority populations (Configuration)":
  exists "Other priority populations (Configuration) Observation"
define "Other priority populations (Configuration) Observation":
  [Observation: Concepts."Other priority populations"] O
    where O.status in { 'final', 'amended', 'corrected' }
/* End of Other priority populations (Configuration) */

/*
@dataElement: HIV.Config.DE20 - Reporting period end date
@activity: HIV.Configuration
@description: End date of the reporting period
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reporting period end date (Configuration)":
  [Observation: Concepts."Reporting period end date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Reporting period end date (Configuration) Value":
  "Reporting period end date (Configuration)" O
  return O.value
/* End of Reporting period end date (Configuration) */

/*
@dataElement: HIV.Config.DE21 - Reporting period start date
@activity: HIV.Configuration
@description: Start date of the reporting period
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reporting period start date (Configuration)":
  [Observation: Concepts."Reporting period start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Reporting period start date (Configuration) Value":
  "Reporting period start date (Configuration)" O
  return O.value
/* End of Reporting period start date (Configuration) */

/*
@dataElement: HIV.Config.DE22 - Reporting date
@activity: HIV.Configuration
@description: Reporting date, for surveys performed on a specific date
*/
// TODO: Replace placeholder with relevant CQL logic
define "Reporting date (Configuration)":
  [Observation: Concepts."Reporting date"] O
    where O.status in { 'final', 'amended', 'corrected' }
define "Reporting date (Configuration) Value":
  "Reporting date (Configuration)" O
  return O.value
/* End of Reporting date (Configuration) */


/*
 * Custom elements and logic for use DT and IND CQL Libraries
 */