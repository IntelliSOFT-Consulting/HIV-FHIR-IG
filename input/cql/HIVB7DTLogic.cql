/**
Library: HIV.B7.DT Logic

@DecisionID: HIV.B7.DT
@BusinessRule:
@Trigger: 
@Description: 

Test Using Algorithm

WHO standard testing strategy for HIV-1 diagnosis (among people ≥18 months of age)
HIV.B7 Test for HIV using testing algorithm, HIV.C4 Test for HIV using testing algorithm, HIV.D.11 Retest using HIV strategy
*/

library HIVB7DTLogic

using FHIR version '4.0.1'

//codesystem "Custom_Codes": 'http://fhir.org/guides/who/hiv-dak/CodeSystem/HIV-DAKConcepts'
codesystem "HIV_DAK_Codes": 'http://fhir.org/guides/who/hiv-dak/CodeSystem/HIV-DAKConcepts'
//valueset "TestresultofHIVassay1Codes": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de95'
valueset "Assay 1 reactive": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de95'
valueset "Assay 1": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de90'
valueset "Assay 2": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de91'
valueset "Assay 2 reactive": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-e-de205'
valueset "Assay 2 non-reactive": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-e-de206'
valueset "Assay 3": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de92'
valueset "Assay 1 repeated": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de93'
valueset "HIVtesttypeCodes": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de82'
valueset "Reactive": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de103'
valueset "Non-reactive": 'http://fhir.org/guides/who/hiv-dak/ValueSet/hiv-b-de104'

include FHIRHelpers version '4.0.1'
include WHOCommon called WCom
include FHIRCommon called FC

//code "Assay 1 Reactive": 'HIV.B.DE95' from "TestresultofHIVassay1Codes" display 'Assay 1 reactive'
//code "Reactive": 'HIV.B.DE103' from "HIV_DAK_Codes" display 'Reactive'
//code "Non-reactive": 'HIV.B.DE104' from "HIV_DAK_Codes" display 'Non-reactive'
code "Rapid diagnostic test for HIV": 'HIV.B.DE82' from "HIV_DAK_Codes" display 'Rapid diagnostic test for HIV'
code "Enzyme immunoassay for HIV": 'HIV.B.DE83' from "HIV_DAK_Codes" display 'Enzyme immunoassay for HIV'
//code "Assay 1": 'HIV.B.DE90' from "HIV_DAK_Codes" display 'Assay 1'
//code "Assay 2": 'HIV.B.DE91' from "HIV_DAK_Codes" display 'Assay 2'
//code "Assay 3": 'HIV.B.DE92' from "HIV_DAK_Codes" display 'Assay 3'
//code "Assay 1 repeated": 'HIV.B.DE93' from "HIV_DAK_Codes" display 'Assay 1 repeated'
//code "Assay 2 reactive": 'HIV.E.DE205' from "HIV_DAK_Codes" display 'Assay 2 reactive'
//code "Assay 2 non-reactive": 'HIV.E.DE206' from "HIV_DAK_Codes" display 'Assay 2 non-reactive'
//code "Assay 1 reactive": 'HIV.B.DE95' from "HIV_DAK_Codes" display 'Assay 2 non-reactive'

 /*valueset "Assay 2 reactive": 'HIV.E.DE205'*/
  
context Patient

define "Age_greater_than_18_months":
  AgeInMonthsAt(Today()) >= 18


define "Report as HIV-negative":
  [Observation] O
  //@triggeredBy order for Assay 1
  with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.code in "Assay 1"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes"
  and O.value in "Non-reactive"
  and "Age_greater_than_18_months")

/* Output observation as HIV negative */
/*@triggeredBy Assay 1 */

define "Should Continue with Performing HIV Assay 2":
  [Observation] O
  //@triggeredBy  ~ order for Assay 1
 with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.code in "Assay 1"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes"
  and O.value in  "Reactive" 
  and "Age_greater_than_18_months")

/* Output Service Request for Assay 2 */

define "Should Continue with Performing HIV Assay 1 repeated":
  [Observation] O
  //@triggeredBy  ~ "Continue with performing HIV 'Assay 2'"
  with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.reasonCode in "Assay 1 reactive" and SR.code in "Assay 2"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes"
  and O.value in "Non-reactive"
  and "Age_greater_than_18_months")

/* Output Service Request for Continue with performing HIV 'Assay 1 repeated' */

  define "Should Continue with Performing HIV Assay 3":
  [Observation] O
  //@triggeredBy  ~ "Continue with performing HIV 'Assay 2'"
  with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.reasonCode in "Assay 1 reactive" and SR.code in "Assay 2"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes" 
  and O.value in "Reactive"
  and "Age_greater_than_18_months")

  /* Output Service Request for Continue with performing Assay 3 */

define "Report as HIV-negative after assay 1 repeated":
  [Observation] O
  //@triggeredBy  ~ "Continue with performing HIV 'Assay 1 repeated'"
    with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.reasonCode in "Assay 2 non-reactive" and SR.code in "Assay 1 repeated"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes" 
  and O.value in "Non-reactive"
  and "Age_greater_than_18_months")

/* Output observation as HIV negative */

define "Report as HIV-inconclusive after assay 1 repeated":
  [Observation] O
  //@triggeredBy  ~ "Continue with performing HIV 'Assay 1 repeated'"
    with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.reasonCode in "Assay 2 non-reactive" and SR.code in "Assay 1 repeated"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes"
  and O.value in "Reactive"
  and "Age_greater_than_18_months")

/* Output observation as 'HIV-inconclusive' */
/* Output PlanDefinition as Schedule retest date on "Visit date" + 14 days */

define "Report as HIV-inconclusive after assay 3":
  [Observation] O
  //@triggeredBy  ~ "Continue with performing HIV 'Assay 3'"
      with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.reasonCode in "Assay 2 reactive" and SR.code in "Assay 3"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes"
  and O.value in "Non-reactive"
  and "Age_greater_than_18_months")

/* Output observation as 'HIV-inconclusive' */
/* Output PlanDefinition as Schedule retest date on "Visit date" + 14 days */

define "Report as HIV-positive":
  [Observation] O
  //@triggeredBy  ~ "Continue with performing HIV 'Assay 3'"
        with [ServiceRequest] SR
      such that O.basedOn.references(SR) and SR.reasonCode in "Assay 2 reactive" and SR.code in "Assay 3"
  where (O.status in { 'final', 'amended' }
  and O.code in "HIVtesttypeCodes"
  and O.value in "Reactive"
  and "Age_greater_than_18_months")
  

/* Output observation as 'HIV-positive' */

/*
[Observation] needs to have the following codes and elements
    where O.status ~ {'final', 'amended'}
    and O.value ~ HIC."HIV-positive"
    */