/**
Library: HIV.B2.DT Logic

@DecisionID: HIV.B2.DT
@BusinessRule:
@Trigger: 
@Description: 

Check for signs of serious illness
Consolidated guidelines on HIV prevention, testing, treatment, service delivery and monitoring: recommendations for a public health approach (2021) Chapter 5: Advanced HIV Disease. Figure 5.1: Algorithm for providing a package of care for people with advanced HIV disease.  
Should this just be for anyone with HIV? 
Wouldn't other  disease domains also code for general exam?
*/

library HIVB2DTLogic

 using FHIR version '4.0.1'
 

 include HIVCommon version '0.0.1' called HIC
 include FHIRHelpers version '4.0.1'
 include WHOCommon called WCom
 include FHIRCommon called FC

 valueset "Tachycardia": ''
 valueset "Tachypnea": ''
 valueset "Unable to walk unaided": ''
 valueset "Body temperature = ≥ 39 °C": '' 
 valueset "Other sign of serious illness (specify)": ''
 valueset "Lethargy": ''
 valueset "Unconsciousness": ''
 valueset "Convulsions": ''
 valueset "Unable to breastfeed": ''
 valueset "Unable to drink": ''
 valueset "Repeated vomiting": ''

 context Patient

 /*
  * Age = ≥ 10 years
  */

define "Age_10_or_more":
  AgeInYearsAt(Today()) >= 10

 /*
  * Age < 10 years
  */

define "Age_less_than_10":
  AgeInYearsAt(Today()) < 10

define "Take action or refer client showing signs of a serious illness":
  exists(([Observation: "Tachycardia"]
  union [Observation: "Tachypnea"]
  union [Observation: "Unable to walk unaided"]) O
  where Age_10_or_more
  and O.status in { 'final', 'amended' })
  or exists(([Observation: "Lethargy"]
  union [Observation: "Unconsciousness"]
  union [Observation: "Convulsions"]
  union [Observation: "Unable to breastfeed"]
  union [Observation: "Unable to drink"]
  union [Observation: "Unconsciousness"]
  union [Observation: "Repeated vomiting"]) O
  where Age_less_than_10
  and O.status in { 'final', 'amended' }
  )

//plan definition Immediately take action or refer for care if a client is having this issue.

define "Use clinical judgement and consider local epidemiology to determine if symptoms suggest client is seriously ill":
  exists (([Observation: "Body temperature = ≥ 39 °C"]
  union [Observation: "Other sign of serious illness (specify)"]) O
  where Age_10_or_more
  and O.status in { 'final', 'amended' })
  // Please this condition needs to be fixed
  // or exists((([Observation: "Body temperature = ≥ 39 °C"]
  // intersect [Observation: "Tachycardia"])
  // or ([Observation: "Body temperature = ≥ 39 °C"]
  // intersect [Observation: "Tachypnea"])
  // or [Observation: "Other sign of serious illness (specify)"]) O
  // where Age_less_than_10
  // and O.status in { 'final', 'amended' })
  // )


//plan definition  Use clinical judgement and consider local epidemiology to determine if symptoms suggest client is seriously ill. 
