library AllContactDataElements

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon version '4.0.1' called FC

include WHOCommon called WC
include AllConcepts version '0.0.1' called Cx

context Encounter

/*
  @dataElement: HIV.A.DE1 First name
  @activity: HIV ARegistration
  @description: Client's first or given name
*/
define "First name":
  [Observation: Cx."First name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE10 National health ID
  @activity: HIV ARegistration
  @description: National health unique identifier assigned to the client, if used in the country
*/
define "National health ID":
  [Observation: Cx."National health ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE11 National programme ID
  @activity: HIV ARegistration
  @description: National programme unique identifier assigned to the client, if used in the country
*/
define "National programme ID":
  [Observation: Cx."National programme ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE12 National health insurance ID
  @activity: HIV ARegistration
  @description: National health insurance unique identifier assigned to the client, if used in the country
*/
define "National health insurance ID":
  [Observation: Cx."National health insurance ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE13 Country of birth
  @activity: HIV ARegistration
  @description: Country where the client was born
*/
define "Country of birth":
  [Observation: Cx."Country of birth"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE14 Date of birth
  @activity: HIV ARegistration
  @description: The client's date of birth (DOB) if known
*/
define "Date of birth":
  [Observation: Cx."Date of birth"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE15 Date of birth unknown
  @activity: HIV ARegistration
  @description: Is the client's DOB is unknown?
*/
define "Date of birth unknown":
  [Observation: Cx."Date of birth unknown"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE16 Estimated age
  @activity: HIV ARegistration
  @description: If DOB is unknown, enter the client's estimated age. Display client's age in number of years.
*/
define "Estimated age":
  [Observation: Cx."Estimated age"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE17 Age
  @activity: HIV ARegistration
  @description: Calculated age (number of years) of the client based on date of birth
*/
define "Age":
  [Observation: Cx."Age"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE18 Gender*
  @activity: HIV ARegistration
  @description: Gender of the client*
*/
define "Gender*":
  [Observation: Cx."Gender* Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE2 Family name
  @activity: HIV ARegistration
  @description: Client's family name or last name
*/
define "Family name":
  [Observation: Cx."Family name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE24 Other (specify)
  @activity: HIV ARegistration
  @description: Additional category (please specify)
*/
define "Other (specify)":
  [Observation: Cx."Other (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE25 Sex
  @activity: HIV ARegistration
  @description: Sex of the client assigned at birth
*/
define "Sex":
  [Observation: Cx."Sex Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE29 Address
  @activity: HIV ARegistration
  @description: Client's home address or address which the client is consenting to disclose
*/
define "Address":
  [Observation: Cx."Address"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE3 Visit date
  @activity: HIV ARegistration
  @description: The date and time of the client's visit
*/
define "Visit date":
  [Observation: Cx."Visit date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE30 Marital Status
  @activity: HIV ARegistration
  @description: Client's current marital status
*/
define "Marital Status":
  [Observation: Cx."Marital Status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE4 Referral
  @activity: HIV ARegistration
  @description: If client was referred for care
*/
define "Referral":
  [Observation: Cx."Referral"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE42 Telephone number
  @activity: HIV ARegistration
  @description: Client's telephone number (a landline or a mobile phone number)
*/
define "Telephone number":
  [Observation: Cx."Telephone number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE43 [Administrative Area]
  @activity: HIV ARegistration
  @description: This should be a context-specific list of administrative areas, such as villages, districts, etc. The purpose of this data element is to allow for grouping and flagging of client data to a particular facility's catchment area. This can be input into the system by the end user OR it can be automated in the database based on the end user's attributes.
*/
define "[Administrative Area]":
  [Observation: Cx."[Administrative Area]"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE44 Communication consent
  @activity: HIV ARegistration
  @description: Indication that client gave consent to be contacted
*/
define "Communication consent":
  [Observation: Cx."Communication consent"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE45 Reminder messages
  @activity: HIV ARegistration
  @description: Whether client wants to receive text or other messages as follow-up for HIV services
*/
define "Reminder messages":
  [Observation: Cx."Reminder messages"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE46 Communication preference(s)
  @activity: HIV ARegistration
  @description: How the client would like to receive family planning communications
*/
define "Communication preference(s)":
  [Observation: Cx."Communication preference(s) Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE49 Client's email
  @activity: HIV ARegistration
  @description: Client's primary email account where the client can be contacted
*/
define "Client's email":
  [Observation: Cx."Client's email"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE5 Referred by
  @activity: HIV ARegistration
  @description: How the client was referred
*/
define "Referred by":
  [Observation: Cx."Referred by Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE50 Alternate contact's name
  @activity: HIV ARegistration
  @description: Name of an alternate contact, which could be next of kin (e.g. partner, husband, mother, sibling, etc.). The alternate contact would be used in the case of an emergency situation.
*/
define "Alternate contact's name":
  [Observation: Cx."Alternate contact's name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE51 Alternate contact's phone number
  @activity: HIV ARegistration
  @description: Phone number of the alternate contact
*/
define "Alternate contact's phone number":
  [Observation: Cx."Alternate contact's phone number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE52 Alternate contact's address
  @activity: HIV ARegistration
  @description: Alternate contact's home address or address which the client is consenting to disclose
*/
define "Alternate contact's address":
  [Observation: Cx."Alternate contact's address"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE53 Alternate contact relationship
  @activity: HIV ARegistration
  @description: The alternate contact's relationship to the client (e.g. partner, husband, mother, sibling, etc.)
*/
define "Alternate contact relationship":
  [Observation: Cx."Alternate contact relationship"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE8 Unique identifier
  @activity: HIV ARegistration
  @description: Unique identifier generated for new clients or a universal ID, if used in the country
*/
define "Unique identifier":
  [Observation: Cx."Unique identifier"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.A.DE9 National ID
  @activity: HIV ARegistration
  @description: National unique identifier assigned to the client, if used in the country
*/
define "National ID":
  [Observation: Cx."National ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE1 Reason for visit
  @activity: HIV ARegistration
  @description: Reason for HIV testing services visit
*/
define "Reason for visit":
  [Observation: Cx."Reason for visit Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE102 Test result of HIV assay 3
  @activity: HIV ARegistration
  @description: The result of the third HIV assay in the testing strategy
*/
define "Test result of HIV assay 3":
  [Observation: Cx."Test result of HIV assay 3 Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE106 Test result of HIV assay 1 repeated
  @activity: HIV ARegistration
  @description: The result of the repeated first HIV assay in the testing strategy
*/
define "Test result of HIV assay 1 repeated":
  [Observation: Cx."Test result of HIV assay 1 repeated Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE110 HIV test date
  @activity: HIV ARegistration
  @description: Date of the HIV test
*/
define "HIV test date":
  [Observation: Cx."HIV test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE111 HIV test result
  @activity: HIV ARegistration
  @description: The result from HIV testing after applying the testing algorithm
*/
define "HIV test result":
  [Observation: Cx."HIV test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE115 HIV status
  @activity: HIV ARegistration
  @description: HIV status reported after applying the national HIV testing algorithm. No single HIV test can provide an HIV-positive diagnosis.
*/
define "HIV status":
  [Observation: Cx."HIV status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE119 Date positive HIV test confirmed
  @activity: HIV ARegistration
  @description: Date patient received positive HIV test confirmation (with written documentation)
*/
define "Date positive HIV test confirmed":
  [Observation: Cx."Date positive HIV test confirmed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE120 Site where positive HIV test confirmed
  @activity: HIV ARegistration
  @description: Name or identifier of health facility where HIV test was confirmed
*/
define "Site where positive HIV test confirmed":
  [Observation: Cx."Site where positive HIV test confirmed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE121 Probable route of transmission*
  @activity: HIV ARegistration
  @description: Probable route(s) of transmission of HIV to client
*/
define "Probable route of transmission*":
  [Observation: Cx."Probable route of transmission* Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE129 Partner HIV test conducted
  @activity: HIV ARegistration
  @description: If the client does not know the HIV status of the client's partner(s), offer to test and add results here
*/
define "Partner HIV test conducted":
  [Observation: Cx."Partner HIV test conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE13 Contact with and (suspected) exposure to HIV
  @activity: HIV ARegistration
  @description: When the client is reported to have had suspected exposure to HIV
*/
define "Contact with and (suspected) exposure to HIV":
  [Observation: Cx."Contact with and (suspected) exposure to HIV"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE130 Partner HIV test ordered
  @activity: HIV ARegistration
  @description: An HIV test for the client's partner has been ordered
*/
define "Partner HIV test ordered":
  [Observation: Cx."Partner HIV test ordered"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE131 Partner HIV test date
  @activity: HIV ARegistration
  @description: Date of client's partner's HIV test
*/
define "Partner HIV test date":
  [Observation: Cx."Partner HIV test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE132 Partner HIV test result
  @activity: HIV ARegistration
  @description: The HIV test result of the client's partner
*/
define "Partner HIV test result":
  [Observation: Cx."Partner HIV test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE136 Partner HIV status (confirmed)
  @activity: HIV ARegistration
  @description: The HIV status of a sexual or drug-injecting partner of the client, based on a confirmed test result
*/
define "Partner HIV status (confirmed)":
  [Observation: Cx."Partner HIV status (confirmed) Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE14 Date/time of suspected exposure to HIV
  @activity: HIV ARegistration
  @description: Date and time when the client had suspected exposure to HIV
*/
define "Date/time of suspected exposure to HIV":
  [Observation: Cx."Date/time of suspected exposure to HIV"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE140 Partner on ART
  @activity: HIV ARegistration
  @description: Partner of the client is on ART
*/
define "Partner on ART":
  [Observation: Cx."Partner on ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE141 Partner virally suppressed on ART
  @activity: HIV ARegistration
  @description: ART and virally suppression status of a partner of the client
*/
define "Partner virally suppressed on ART":
  [Observation: Cx."Partner virally suppressed on ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE142 Counselling provided
  @activity: HIV ARegistration
  @description: Whether counselling was provided to a client during the visit
*/
define "Counselling provided":
  [Observation: Cx."Counselling provided Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE149 Prevention services offered and referrals
  @activity: HIV ARegistration
  @description: Offer or refer to prevention services
*/
define "Prevention services offered and referrals":
  [Observation: Cx."Prevention services offered and referrals Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE15 Testing entry point
  @activity: HIV ARegistration
  @description: Whether testing is happening in the community or at a facility
*/
define "Testing entry point":
  [Observation: Cx."Testing entry point Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE158 Sexual and reproductive health integrated services
  @activity: HIV ARegistration
  @description: Offer or refer to sexual and reproductive health services
*/
define "Sexual and reproductive health integrated services":
  [Observation: Cx."Sexual and reproductive health integrated services Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE165 Offer other clinical services
  @activity: HIV ARegistration
  @description: Other clinical services offered or referrals given to the client
*/
define "Offer other clinical services":
  [Observation: Cx."Offer other clinical services Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE172 Other support services
  @activity: HIV ARegistration
  @description: Offer or refer for other support services
*/
define "Other support services":
  [Observation: Cx."Other support services Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE178 Clinical enquiry for intimate partner violence (IPV) done
  @activity: HIV ARegistration
  @description: Whether a clinical enquiry for intimate partner violence was conducted
*/
define "Clinical enquiry for intimate partner violence (IPV) done":
  [Observation: Cx."Clinical enquiry for intimate partner violence (IPV) done"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE179 Intimate partner violence enquiry results
  @activity: HIV ARegistration
  @description: Result of medical inquiry for intimate partner violence
*/
define "Intimate partner violence enquiry results":
  [Observation: Cx."Intimate partner violence enquiry results Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE18 Entry point for community-level testing
  @activity: HIV ARegistration
  @description: Specific point in the community where testing is happening
*/
define "Entry point for community-level testing":
  [Observation: Cx."Entry point for community-level testing Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE184 Other IPV result (specify)
  @activity: HIV ARegistration
  @description: Other intimate partner violence (IPV) result not described above (specify)
*/
define "Other IPV result (specify)":
  [Observation: Cx."Other IPV result (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE185 Offered voluntary partner services
  @activity: HIV ARegistration
  @description: Whether the client was offered voluntary partner services or family services
*/
define "Offered voluntary partner services":
  [Observation: Cx."Offered voluntary partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE186 Count of contacts or partners given for social network-based/partner services
  @activity: HIV ARegistration
  @description: The quantity of contacts or partners given by a client that accepts social network-based/partner services for follow-up
*/
define "Count of contacts or partners given for social network-based/partner services":
  [Observation: Cx."Count of contacts or partners given for social network-based/partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE187 Offered social network-based/partner services
  @activity: HIV ARegistration
  @description: Whether the client was offered social network-based partner services
*/
define "Offered social network-based/partner services":
  [Observation: Cx."Offered social network-based/partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE188 Accepted social network-based/partner services
  @activity: HIV ARegistration
  @description: Whether the client accepted social network-based partner services
*/
define "Accepted social network-based/partner services":
  [Observation: Cx."Accepted social network-based/partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE189 Contact first name to offer social network-based/partner services
  @activity: HIV ARegistration
  @description: First name of each contact given by the client to offer social network-based/partner services
*/
define "Contact first name to offer social network-based/partner services":
  [Observation: Cx."Contact first name to offer social network-based/partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE190 Contact last name to offer social network-based/partner services
  @activity: HIV ARegistration
  @description: Last or family name of each contact given by the client to offer social network-based/partner services
*/
define "Contact last name to offer social network-based/partner services":
  [Observation: Cx."Contact last name to offer social network-based/partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE191 Type of follow-up appointment
  @activity: HIV ARegistration
  @description: Type of follow-up appointment for testing services
*/
define "Type of follow-up appointment":
  [Observation: Cx."Type of follow-up appointment Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE194 Other reason for the follow-up appointment (specify)
  @activity: HIV ARegistration
  @description: Other reason for the follow-up appointment (specify)
*/
define "Other reason for the follow-up appointment (specify)":
  [Observation: Cx."Other reason for the follow-up appointment (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE195 Date/time of follow-up appointment
  @activity: HIV ARegistration
  @description: Date the patient is to return for monitoring, re-supply or any other reason
*/
define "Date/time of follow-up appointment":
  [Observation: Cx."Date/time of follow-up appointment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE196 Recommended follow-up date
  @activity: HIV ARegistration
  @description: Date when follow-up is recommended based on follow up requirements
*/
define "Recommended follow-up date":
  [Observation: Cx."Recommended follow-up date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE197 VMMC procedure
  @activity: HIV ARegistration
  @description: Whether a voluntary medical male circumcision procedure was performed
*/
define "VMMC procedure":
  [Observation: Cx."VMMC procedure"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE198 VMMC procedure date
  @activity: HIV ARegistration
  @description: Date on which a voluntary medical male circumcision procedure was performed
*/
define "VMMC procedure date":
  [Observation: Cx."VMMC procedure date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE199 Adverse event reported from a VMMC
  @activity: HIV ARegistration
  @description: Whether an adverse event was reported associated with a voluntary medical male circumcision (VMMC) procedure
*/
define "Adverse event reported from a VMMC":
  [Observation: Cx."Adverse event reported from a VMMC"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE200 Serious adverse event
  @activity: HIV ARegistration
  @description: Complications from voluntary medical male circumcision (VMMC) procedure resulted in death or hospitalization within 30 days of the procedure or permanent disability
*/
define "Serious adverse event":
  [Observation: Cx."Serious adverse event"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE201 Adverse event severity
  @activity: HIV ARegistration
  @description: Severity of the adverse event associated with voluntary medical male circumcision (VMMC) procedure
*/
define "Adverse event severity":
  [Observation: Cx."Adverse event severity"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE202 Moderate
  @activity: HIV ARegistration
  @description: Severity of the adverse event associated with VMMC procedure was moderate
*/
define "Moderate":
  [Observation: Cx."Moderate"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE203 Severe
  @activity: HIV ARegistration
  @description: Severity of the adverse event associated with VMMC procedure was severe
*/
define "Severe":
  [Observation: Cx."Severe"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE204 Timing of adverse event
  @activity: HIV ARegistration
  @description: When the adverse event associated with VMMC procedure occurred
*/
define "Timing of adverse event":
  [Observation: Cx."Timing of adverse event Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE207 Type of adverse VMMC event
  @activity: HIV ARegistration
  @description: Type of adverse event associated with voluntary medical male circumcision (VMMC) procedure
*/
define "Type of adverse VMMC event":
  [Observation: Cx."Type of adverse VMMC event Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE22 Entry point for facility-level testing
  @activity: HIV ARegistration
  @description: Specific point where testing is happening at a facility
*/
define "Entry point for facility-level testing":
  [Observation: Cx."Entry point for facility-level testing Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE224 HIV retest prior to starting ART conducted
  @activity: HIV ARegistration
  @description: HIV retest prior to starting ART conducted
*/
define "HIV retest prior to starting ART conducted":
  [Observation: Cx."HIV retest prior to starting ART conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE225 At elevated risk for HIV acquisition
  @activity: HIV ARegistration
  @description: Client is at elevated risk for HIV acquisition
*/
define "At elevated risk for HIV acquisition":
  [Observation: Cx."At elevated risk for HIV acquisition"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE226 Syndrome/STI diagnosed
  @activity: HIV ARegistration
  @description: Syndrome or STI for which client is diagnosed
*/
define "Syndrome/STI diagnosed":
  [Observation: Cx."Syndrome/STI diagnosed Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE235 Any STI syndrome diagnosed
  @activity: HIV ARegistration
  @description: Was the client diagnosed with any of the five STI syndromes during this visit?
*/
define "Any STI syndrome diagnosed":
  [Observation: Cx."Any STI syndrome diagnosed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE236 Date of STI test
  @activity: HIV ARegistration
  @description: Date on which the STI test was conducted
*/
define "Date of STI test":
  [Observation: Cx."Date of STI test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE237 STI tested for
  @activity: HIV ARegistration
  @description: STI for which the client was tested
*/
define "STI tested for":
  [Observation: Cx."STI tested for Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE249 Syphilis test date
  @activity: HIV ARegistration
  @description: Date of syphilis test
*/
define "Syphilis test date":
  [Observation: Cx."Syphilis test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE250 Syphilis test result
  @activity: HIV ARegistration
  @description: Result from syphilis test
*/
define "Syphilis test result":
  [Observation: Cx."Syphilis test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE254 Syphilis treatment start date
  @activity: HIV ARegistration
  @description: Date of initiation of syphilis treatment
*/
define "Syphilis treatment start date":
  [Observation: Cx."Syphilis treatment start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE255 Gonorrhoea test date
  @activity: HIV ARegistration
  @description: Date of Gonorrhoea test
*/
define "Gonorrhoea test date":
  [Observation: Cx."Gonorrhoea test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE256 Gonorrhoea test result
  @activity: HIV ARegistration
  @description: Result from Gonorrhoea test
*/
define "Gonorrhoea test result":
  [Observation: Cx."Gonorrhoea test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE260 Gonorrhoea treatment start date
  @activity: HIV ARegistration
  @description: Date of initiation of Gonorrhoea treatment
*/
define "Gonorrhoea treatment start date":
  [Observation: Cx."Gonorrhoea treatment start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE261 Type of specimen
  @activity: HIV ARegistration
  @description: Type of specimen to be collected
*/
define "Type of specimen":
  [Observation: Cx."Type of specimen Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE268 Other type of specimen (specify)
  @activity: HIV ARegistration
  @description: Other specimen type to be collected (specify)
*/
define "Other type of specimen (specify)":
  [Observation: Cx."Other type of specimen (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE269 Syphilis test type
  @activity: HIV ARegistration
  @description: Type of diagnostic test used for syphilis (treponema pallidum)
*/
define "Syphilis test type":
  [Observation: Cx."Syphilis test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE275 Other syphilis test type (specify)
  @activity: HIV ARegistration
  @description: Other test used (specify)
*/
define "Other syphilis test type (specify)":
  [Observation: Cx."Other syphilis test type (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE276 Neisseria gonorrhoeae test type
  @activity: HIV ARegistration
  @description: Type of diagnostic test used for Neisseria gonorrhoeae
*/
define "Neisseria gonorrhoeae test type":
  [Observation: Cx."Neisseria gonorrhoeae test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE283 POC Test for Neisseria gonorrhoeae (specify)
  @activity: HIV ARegistration
  @description: Point-of-care (POC) test used for Neisseria gonorrhoeae (specify)
*/
define "POC Test for Neisseria gonorrhoeae (specify)":
  [Observation: Cx."POC Test for Neisseria gonorrhoeae (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE284 Chlamydia trachomatis test type
  @activity: HIV ARegistration
  @description: Type of diagnostic test used for Chlamydia trachomatis
*/
define "Chlamydia trachomatis test type":
  [Observation: Cx."Chlamydia trachomatis test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE29 Currently pregnant
  @activity: HIV ARegistration
  @description: Client is currently pregnant
*/
define "Currently pregnant":
  [Observation: Cx."Currently pregnant"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE291 Other test for Chlamydia (specify)
  @activity: HIV ARegistration
  @description: Other type of test used for Chlaymdia (specify)
*/
define "Other test for Chlamydia (specify)":
  [Observation: Cx."Other test for Chlamydia (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE292 POC Test type for Chlamydia test (specify)
  @activity: HIV ARegistration
  @description: Point-of-care (POC) test used for Chlamydia (specify)
*/
define "POC Test type for Chlamydia test (specify)":
  [Observation: Cx."POC Test type for Chlamydia test (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE293 Trichomonas vaginalis test type
  @activity: HIV ARegistration
  @description: Type of diagnostic test used for Trichomonas vaginalis
*/
define "Trichomonas vaginalis test type":
  [Observation: Cx."Trichomonas vaginalis test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE30 Gestational age
  @activity: HIV ARegistration
  @description: Gestational age in weeks and/or days depending on the source of gestational age
*/
define "Gestational age":
  [Observation: Cx."Gestational age"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE300 POC Test type for Trichomonas vaginalis test (specify)
  @activity: HIV ARegistration
  @description: Point-of-care (POC) test used (specify)
*/
define "POC Test type for Trichomonas vaginalis test (specify)":
  [Observation: Cx."POC Test type for Trichomonas vaginalis test (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE301 Herpes simplex virus (HSV) test type
  @activity: HIV ARegistration
  @description: Type of diagnostic test used for herpes simplex virus (HSV)
*/
define "Herpes simplex virus (HSV) test type":
  [Observation: Cx."Herpes simplex virus (HSV) test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE306 Mycoplasma genitalium test type
  @activity: HIV ARegistration
  @description: Type of diagnostic test used for Mycoplasma genitalium
*/
define "Mycoplasma genitalium test type":
  [Observation: Cx."Mycoplasma genitalium test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE31 Expected date of delivery (EDD)
  @activity: HIV ARegistration
  @description: Expected date of delivery based on gestational age
*/
define "Expected date of delivery (EDD)":
  [Observation: Cx."Expected date of delivery (EDD)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE311 Test type for other STI tested for (specify)
  @activity: HIV ARegistration
  @description: Test type used for the other specified STI
*/
define "Test type for other STI tested for (specify)":
  [Observation: Cx."Test type for other STI tested for (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE312 STI test result
  @activity: HIV ARegistration
  @description: Result from STI test
*/
define "STI test result":
  [Observation: Cx."STI test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE316 Date of STI confirmatory test
  @activity: HIV ARegistration
  @description: Date of STI confirmatory test
*/
define "Date of STI confirmatory test":
  [Observation: Cx."Date of STI confirmatory test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE317 Confirmatory syphilis test type
  @activity: HIV ARegistration
  @description: Type of test ued for confirmatory syphilis test
*/
define "Confirmatory syphilis test type":
  [Observation: Cx."Confirmatory syphilis test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE32 Breastfeeding
  @activity: HIV ARegistration
  @description: Infant is being breastfed by mother
*/
define "Breastfeeding":
  [Observation: Cx."Breastfeeding"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE324 Confirmatory test type for other STI (specify)
  @activity: HIV ARegistration
  @description: Confirmatory test type for other STI
*/
define "Confirmatory test type for other STI (specify)":
  [Observation: Cx."Confirmatory test type for other STI (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE325 Confirmatory STI test result
  @activity: HIV ARegistration
  @description: Result from confirmatory STI test
*/
define "Confirmatory STI test result":
  [Observation: Cx."Confirmatory STI test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE329 Date STI treatment prescribed
  @activity: HIV ARegistration
  @description: Date STI treatment was prescribed to the client
*/
define "Date STI treatment prescribed":
  [Observation: Cx."Date STI treatment prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE33 Partner HIV status (reported)
  @activity: HIV ARegistration
  @description: The HIV status of the client's partner.
*/
define "Partner HIV status (reported)":
  [Observation: Cx."Partner HIV status (reported) Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE330 Date STI treatment dispensed
  @activity: HIV ARegistration
  @description: Date STI treatment dispensed to the client
*/
define "Date STI treatment dispensed":
  [Observation: Cx."Date STI treatment dispensed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE331 STI treatment dispensed (specify)
  @activity: HIV ARegistration
  @description: STI treatment dispensed to the client
*/
define "STI treatment dispensed (specify)":
  [Observation: Cx."STI treatment dispensed (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE37 Partner is from a key population*
  @activity: HIV ARegistration
  @description: Client's partner is a member of a key population, that has an increased risk of HIV
*/
define "Partner is from a key population*":
  [Observation: Cx."Partner is from a key population* Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE43 Has used an HIV self-test before (reported)
  @activity: HIV ARegistration
  @description: The client reported having used an HIV self-test before
*/
define "Has used an HIV self-test before (reported)":
  [Observation: Cx."Has used an HIV self-test before (reported)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE44 HIV self-test result
  @activity: HIV ARegistration
  @description: Results from the reported HIV self-test
*/
define "HIV self-test result":
  [Observation: Cx."HIV self-test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE45 Reactive
  @activity: HIV ARegistration
  @description: The HIV self-test was reactive
*/
define "Reactive":
  [Observation: Cx."Reactive"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE46 Non-reactive
  @activity: HIV ARegistration
  @description: The HIV self-test was non-reactive
*/
define "Non-reactive":
  [Observation: Cx."Non-reactive"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE47 Invalid
  @activity: HIV ARegistration
  @description: The HIV self-test was invalid
*/
define "Invalid":
  [Observation: Cx."Invalid"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE48 Date of HIV self-test
  @activity: HIV ARegistration
  @description: Date when the HIV self-test was conducted
*/
define "Date of HIV self-test":
  [Observation: Cx."Date of HIV self-test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE49 Key population member*
  @activity: HIV ARegistration
  @description: Client is a member of a key population that has an increased risk of HIV
*/
define "Key population member*":
  [Observation: Cx."Key population member*"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE5 Referred through partner services
  @activity: HIV ARegistration
  @description: Client reported coming to the facility after receiving a provider-assisted referral or patient referral from a contact or partner
*/
define "Referred through partner services":
  [Observation: Cx."Referred through partner services Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE50 Key population member type*
  @activity: HIV ARegistration
  @description: The type of key population that the client is included in
*/
define "Key population member type*":
  [Observation: Cx."Key population member type* Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE56 Adolescent girl
  @activity: HIV ARegistration
  @description: Calculated field based on age and gender, if client is 10 years or older and under 20 years old
*/
define "Adolescent girl":
  [Observation: Cx."Adolescent girl"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE57 Young woman
  @activity: HIV ARegistration
  @description: Calculated field based on age and gender, if client is 20 years or older and under 25 years old
*/
define "Young woman":
  [Observation: Cx."Young woman"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE58 Orphan or vulnerable child
  @activity: HIV ARegistration
  @description: Client considered an orphan or vulnerable child
*/
define "Orphan or vulnerable child":
  [Observation: Cx."Orphan or vulnerable child"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE59 Informed of HIV test result
  @activity: HIV ARegistration
  @description: Client has been informed of their HIV test result
*/
define "Informed of HIV test result":
  [Observation: Cx."Informed of HIV test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE60 Date HIV test results returned
  @activity: HIV ARegistration
  @description: Date HIV test result returned to client
*/
define "Date HIV test results returned":
  [Observation: Cx."Date HIV test results returned"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE61 HIV exposure type*
  @activity: HIV ARegistration
  @description: Ways in which the client was exposed to HIV
*/
define "HIV exposure type*":
  [Observation: Cx."HIV exposure type* Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE65 Date informed of HIV-positive diagnosis
  @activity: HIV ARegistration
  @description: The date on which the client was diagnosed with HIV
*/
define "Date informed of HIV-positive diagnosis":
  [Observation: Cx."Date informed of HIV-positive diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE66 HIV diagnosing facility
  @activity: HIV ARegistration
  @description: The facility where the client received an HIV-positive diagnosis
*/
define "HIV diagnosing facility":
  [Observation: Cx."HIV diagnosing facility"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE67 Date of first positive test indicative of HIV diagnosis
  @activity: HIV ARegistration
  @description: Earliest date of HIV diagnosis determined according to the national HIV testing algorithm
*/
define "Date of first positive test indicative of HIV diagnosis":
  [Observation: Cx."Date of first positive test indicative of HIV diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE68 HIV serotype
  @activity: HIV ARegistration
  @description: The client's HIV serotype
*/
define "HIV serotype":
  [Observation: Cx."HIV serotype Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE71 HIV diagnosis date
  @activity: HIV ARegistration
  @description: Date diagnosis was returned to client
*/
define "HIV diagnosis date":
  [Observation: Cx."HIV diagnosis date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE72 ART start date
  @activity: HIV ARegistration
  @description: The date on which the client started or restarted antiretroviral therapy (ART)
*/
define "ART start date":
  [Observation: Cx."ART start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE73 Age at diagnosis
  @activity: HIV ARegistration
  @description: The client's age (in years) when given an HIV diagnosis
*/
define "Age at diagnosis":
  [Observation: Cx."Age at diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE74 Type of contact elicited
  @activity: HIV ARegistration
  @description: Client's relationship to the contact identified for voluntary partner services or family services
*/
define "Type of contact elicited":
  [Observation: Cx."Type of contact elicited Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE79 HIV test ordered
  @activity: HIV ARegistration
  @description: An HIV test of the client was ordered by the provider
*/
define "HIV test ordered":
  [Observation: Cx."HIV test ordered"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE8 Type of contact or partner for partner services
  @activity: HIV ARegistration
  @description: Client's relationship to the person that referred the client for partner services or family services
*/
define "Type of contact or partner for partner services":
  [Observation: Cx."Type of contact or partner for partner services Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE80 HIV test conducted
  @activity: HIV ARegistration
  @description: An HIV test was performed on the client during the visit
*/
define "HIV test conducted":
  [Observation: Cx."HIV test conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE81 HIV test type
  @activity: HIV ARegistration
  @description: Type of HIV test
*/
define "HIV test type":
  [Observation: Cx."HIV test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE87 Date HIV test sent
  @activity: HIV ARegistration
  @description: Date HIV specimen was sent to lab
*/
define "Date HIV test sent":
  [Observation: Cx."Date HIV test sent"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE88 Assay number in testing strategy
  @activity: HIV ARegistration
  @description: The number of the assay (test kit) in the HIV testing strategy
*/
define "Assay number in testing strategy":
  [Observation: Cx."Assay number in testing strategy"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE89 Assay 0
  @activity: HIV ARegistration
  @description: A community outreach test-for-triage or self-test which is not included in the HIV testing strategy
*/
define "Assay 0":
  [Observation: Cx."Assay 0"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE90 Assay 1
  @activity: HIV ARegistration
  @description: The first test in the HIV testing strategy
*/
define "Assay 1":
  [Observation: Cx."Assay 1"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE91 Assay 2
  @activity: HIV ARegistration
  @description: The second test in the HIV testing strategy
*/
define "Assay 2":
  [Observation: Cx."Assay 2"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE92 Assay 3
  @activity: HIV ARegistration
  @description: The third test in the HIV testing strategy
*/
define "Assay 3":
  [Observation: Cx."Assay 3"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE93 Assay 1 repeated
  @activity: HIV ARegistration
  @description: The first test in the HIV testing strategy
*/
define "Assay 1 repeated":
  [Observation: Cx."Assay 1 repeated"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE94 Test result of HIV assay 1
  @activity: HIV ARegistration
  @description: The result of the first HIV assay in the testing strategy
*/
define "Test result of HIV assay 1":
  [Observation: Cx."Test result of HIV assay 1 Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.B.DE98 Test result of HIV assay 2
  @activity: HIV ARegistration
  @description: The result of the second HIV assay in the testing strategy
*/
define "Test result of HIV assay 2":
  [Observation: Cx."Test result of HIV assay 2 Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE1 Reason for PrEP visit
  @activity: HIV ARegistration
  @description: Client's reason for the prevention visit
*/
define "Reason for PrEP visit":
  [Observation: Cx."Reason for PrEP visit Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE10 Currently on PrEP
  @activity: HIV ARegistration
  @description: The client is currently taking PrEP. Oral pre-exposure prophylaxis (PrEP) of HIV is the use of ARV drugs by people who are not infected with HIV to block the acquisition of HIV.
*/
define "Currently on PrEP":
  [Observation: Cx."Currently on PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE101 Alternative third PEP drug
  @activity: HIV ARegistration
  @description: Alternative third drug for PEP
*/
define "Alternative third PEP drug":
  [Observation: Cx."Alternative third PEP drug Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE106 Estimated creatinine clearance
  @activity: HIV ARegistration
  @description: Estimated creatinine clearance of the client returned from lab in mL/min
*/
define "Estimated creatinine clearance":
  [Observation: Cx."Estimated creatinine clearance"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE107 Sex factor for estimating creatinine clearance
  @activity: HIV ARegistration
  @description: Value used for gender for calculating creatinine clearance if required. For transgender populations, the sex at birth is used in the Cockcroft-Gault equation if the person is not using hormone therapy; among transgender populations using hormone therapy for more than three months, the current gender can be used.
*/
define "Sex factor for estimating creatinine clearance":
  [Observation: Cx."Sex factor for estimating creatinine clearance Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE11 PrEP dosing type
  @activity: HIV ARegistration
  @description: Way in which pre-exposure prophylaxis (PrEP) is taken (daily or event-driven)
*/
define "PrEP dosing type":
  [Observation: Cx."PrEP dosing type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE110 Estimated creatinine clearance (Cockcroft-Gault equation)
  @activity: HIV ARegistration
  @description: If the laboratory does not have the capacity to estimate creatinine clearance, the provider can use the Cockcroft–Gault equation to calculate estimated creatinine clearance based on measured serum creatinine, the client’s sex at birth, age and estimated lean body weight.
*/
define "Estimated creatinine clearance (Cockcroft-Gault equation)":
  [Observation: Cx."Estimated creatinine clearance (Cockcroft-Gault equation)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE111 Date of sample collection
  @activity: HIV ARegistration
  @description: Date when the specimen was collected
*/
define "Date of sample collection":
  [Observation: Cx."Date of sample collection"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE112 Contraindications to PrEP usage
  @activity: HIV ARegistration
  @description: Listing of contraindications to pre-exposure prophylaxis (PrEP)
*/
define "Contraindications to PrEP usage":
  [Observation: Cx."Contraindications to PrEP usage Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE119 Other allergy or contraindication to a medicine in the PrEP regimen (specify)
  @activity: HIV ARegistration
  @description: Client has another allergy or contraindication to a medicine in the pre-exposure prophylaxis (PrEP) regimen (specify)
*/
define "Other allergy or contraindication to a medicine in the PrEP regimen (specify)":
  [Observation: Cx."Other allergy or contraindication to a medicine in the PrEP regimen (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE120 Prescribed PrEP at initial visit
  @activity: HIV ARegistration
  @description: Client was prescribed pre-exposure prophylaxis (PrEP) on a first visit
*/
define "Prescribed PrEP at initial visit":
  [Observation: Cx."Prescribed PrEP at initial visit"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE121 Number of days prescribed
  @activity: HIV ARegistration
  @description: Days of medication client has been prescribed
*/
define "Number of days prescribed":
  [Observation: Cx."Number of days prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE122 PrEP regimen prescribed
  @activity: HIV ARegistration
  @description: HIV pre-exposure prophylaxis (PrEP) regimen prescribed
*/
define "PrEP regimen prescribed":
  [Observation: Cx."PrEP regimen prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE123 Adherence counselling provided
  @activity: HIV ARegistration
  @description: Whether adherence counselling was provided
*/
define "Adherence counselling provided":
  [Observation: Cx."Adherence counselling provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE130 Linked to enrolment in care and ART initiation
  @activity: HIV ARegistration
  @description: Linkage made from HIV testing to enrolment in care following an HIV diagnosis
*/
define "Linked to enrolment in care and ART initiation":
  [Observation: Cx."Linked to enrolment in care and ART initiation"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE136 Date provided condoms
  @activity: HIV ARegistration
  @description: Date client was provided with condoms
*/
define "Date provided condoms":
  [Observation: Cx."Date provided condoms"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE137 Condoms distributed
  @activity: HIV ARegistration
  @description: Number of condoms given to the client, if any were distributed
*/
define "Condoms distributed":
  [Observation: Cx."Condoms distributed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE138 Condom type
  @activity: HIV ARegistration
  @description: Type of condom provided to client
*/
define "Condom type":
  [Observation: Cx."Condom type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE141 HIV self-test kits accepted
  @activity: HIV ARegistration
  @description: Whether any HIV self-test kits were given to the client
*/
define "HIV self-test kits accepted":
  [Observation: Cx."HIV self-test kits accepted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE142 Number of HIV self-test kits distributed
  @activity: HIV ARegistration
  @description: Number of HIV self-test kits distributed to the client
*/
define "Number of HIV self-test kits distributed":
  [Observation: Cx."Number of HIV self-test kits distributed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE143 HIV self-test distributed for use by
  @activity: HIV ARegistration
  @description: Whom the client plans to give the HIV self-test kit (self, sexual partner, social contact, etc.)
*/
define "HIV self-test distributed for use by":
  [Observation: Cx."HIV self-test distributed for use by Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE15 Other PrEP dosing type (specify)
  @activity: HIV ARegistration
  @description: Other PrEP dosing type (specify)
*/
define "Other PrEP dosing type (specify)":
  [Observation: Cx."Other PrEP dosing type (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE156 HIV testing for partners and biological children
  @activity: HIV ARegistration
  @description: Offer testing for all partners and biological children of positive cases (includes partner services and index case testing), as well as partners and social contacts of people from key populations, where appropriate
*/
define "HIV testing for partners and biological children":
  [Observation: Cx."HIV testing for partners and biological children"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE16 Used event-driven PrEP for at risk exposures over the past 3 months
  @activity: HIV ARegistration
  @description: Client reports taking ED-PrEP for at risk exposures over a 3-month period
*/
define "Used event-driven PrEP for at risk exposures over the past 3 months":
  [Observation: Cx."Used event-driven PrEP for at risk exposures over the past 3 months"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE17 Current PrEP regimen
  @activity: HIV ARegistration
  @description: HIV pre-exposure prophylaxis (PrEP) regimen
*/
define "Current PrEP regimen":
  [Observation: Cx."Current PrEP regimen Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE24 Experience with PrEP
  @activity: HIV ARegistration
  @description: The client's experience in taking PrEP
*/
define "Experience with PrEP":
  [Observation: Cx."Experience with PrEP Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE28 PrEP start date
  @activity: HIV ARegistration
  @description: The date on which the client started or restarted pre-exposure prophylaxis (PrEP)
*/
define "PrEP start date":
  [Observation: Cx."PrEP start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE29 Stopped PrEP
  @activity: HIV ARegistration
  @description: Client stopped taking pre-exposure prophylaxis (PrEP)
*/
define "Stopped PrEP":
  [Observation: Cx."Stopped PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE30 Date PrEP stopped
  @activity: HIV ARegistration
  @description: Date client stopped taking pre-exposure prophylaxis (PrEP)
*/
define "Date PrEP stopped":
  [Observation: Cx."Date PrEP stopped"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE31 PEP history
  @activity: HIV ARegistration
  @description: The client's history in taking post-exposure prophylaxis (PEP) for HIV prevention
*/
define "PEP history":
  [Observation: Cx."PEP history Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE34 Date(s) of past PEP use
  @activity: HIV ARegistration
  @description: Dates when the client previously used post-exposure prophylaxis (PEP)
*/
define "Date(s) of past PEP use":
  [Observation: Cx."Date(s) of past PEP use"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE35 Date client completes PEP course
  @activity: HIV ARegistration
  @description: Date client completes PEP course
*/
define "Date client completes PEP course":
  [Observation: Cx."Date client completes PEP course"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE36 Signs of substantial risk of HIV infection
  @activity: HIV ARegistration
  @description: Signs the client is at a substantial risk of HIV infection
*/
define "Signs of substantial risk of HIV infection":
  [Observation: Cx."Signs of substantial risk of HIV infection Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE41 Pregnancy intention in serodiscordant partnerships
  @activity: HIV ARegistration
  @description: Client's intention or desire in the next year to either become pregnant or prevent a future pregnancy (in serodiscordant partnerships)
*/
define "Pregnancy intention in serodiscordant partnerships":
  [Observation: Cx."Pregnancy intention in serodiscordant partnerships Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE46 Acute HIV infection symptoms
  @activity: HIV ARegistration
  @description: Symptoms that could suggest an acute HIV infection
*/
define "Acute HIV infection symptoms":
  [Observation: Cx."Acute HIV infection symptoms Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE55 Sex partner's HIV treatment status
  @activity: HIV ARegistration
  @description: Treatment adherence of client's sex partner for partners that are HIV-positive
*/
define "Sex partner's HIV treatment status":
  [Observation: Cx."Sex partner's HIV treatment status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE61 Suitable for PrEP
  @activity: HIV ARegistration
  @description: The client is suitable for PrEP
*/
define "Suitable for PrEP":
  [Observation: Cx."Suitable for PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE62 Offered PrEP
  @activity: HIV ARegistration
  @description: After being evaluated as suitable for PrEP, the client was offered PrEP
*/
define "Offered PrEP":
  [Observation: Cx."Offered PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE63 Screenings and diagnostics for PrEP users
  @activity: HIV ARegistration
  @description: Listing of tests for clients on or starting pre-exposure prophylaxis (PrEP) that may be recommended or should be considered
*/
define "Screenings and diagnostics for PrEP users":
  [Observation: Cx."Screenings and diagnostics for PrEP users Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE7 3-month PrEP visit
  @activity: HIV ARegistration
  @description: Client is visiting for the recommended 3-month pre-exposure prophylaxis (PrEP) visit
*/
define "3-month PrEP visit":
  [Observation: Cx."3-month PrEP visit"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE71 Serum creatinine test date
  @activity: HIV ARegistration
  @description: Test serum creatinine to identify pre-existing renal disease (estimated creatinine clearance less than 60 ml/min)
*/
define "Serum creatinine test date":
  [Observation: Cx."Serum creatinine test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE72 Serum creatinine test result
  @activity: HIV ARegistration
  @description: Test serum creatinine to identify pre-existing renal disease (estimated creatinine clearance less than 60 ml/min).
*/
define "Serum creatinine test result":
  [Observation: Cx."Serum creatinine test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE73 Date medications dispensed
  @activity: HIV ARegistration
  @description: Date the client was dispensed medications
*/
define "Date medications dispensed":
  [Observation: Cx."Date medications dispensed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE74 Date medications prescribed
  @activity: HIV ARegistration
  @description: Date the client was prescribed medications
*/
define "Date medications prescribed":
  [Observation: Cx."Date medications prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE75 Medications prescribed
  @activity: HIV ARegistration
  @description: Medications the client was prescribed
*/
define "Medications prescribed":
  [Observation: Cx."Medications prescribed Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE80 PrEP product prescribed
  @activity: HIV ARegistration
  @description: PrEP product that the client was prescribed
*/
define "PrEP product prescribed":
  [Observation: Cx."PrEP product prescribed Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE86 Date PrEP prescribed
  @activity: HIV ARegistration
  @description: Date client was prescribed PrEP, including initial prescription and repeats
*/
define "Date PrEP prescribed":
  [Observation: Cx."Date PrEP prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE87 Date PrEP dispensed
  @activity: HIV ARegistration
  @description: Date client was dispensed PrEP
*/
define "Date PrEP dispensed":
  [Observation: Cx."Date PrEP dispensed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE88 Volume of PrEP product prescribed/dispensed
  @activity: HIV ARegistration
  @description: Volume of PrEP product the client was prescribed or dispensed (for example, number of pills, number of devices)
*/
define "Volume of PrEP product prescribed/dispensed":
  [Observation: Cx."Volume of PrEP product prescribed/dispensed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE89 Date PEP prescribed
  @activity: HIV ARegistration
  @description: Date the client was prescribed PEP
*/
define "Date PEP prescribed":
  [Observation: Cx."Date PEP prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE90 Date PEP course completion
  @activity: HIV ARegistration
  @description: Date client completes PEP course
*/
define "Date PEP course completion":
  [Observation: Cx."Date PEP course completion"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE91 Preferred PEP backbone regimen
  @activity: HIV ARegistration
  @description: Preferred backbone regimen for PEP
*/
define "Preferred PEP backbone regimen":
  [Observation: Cx."Preferred PEP backbone regimen Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE95 Alternative PEP backbone regimen
  @activity: HIV ARegistration
  @description: Alternative backbone regimen for PEP
*/
define "Alternative PEP backbone regimen":
  [Observation: Cx."Alternative PEP backbone regimen Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.C.DE99 Preferred third PEP drug
  @activity: HIV ARegistration
  @description: Preferred third drug for PEP
*/
define "Preferred third PEP drug":
  [Observation: Cx."Preferred third PEP drug Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE1 Population prevalence of TB
  @activity: HIV ARegistration
  @description: The tuberculosis prevalence in the general population in number of cases per 100 000 persons or greater.
*/
define "Population prevalence of TB":
  [Observation: Cx."Population prevalence of TB"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE10 Prevalence of HIV in the catchment area
  @activity: HIV ARegistration
  @description: The proportion of the population from the health facility's catchment area that are HIV-positive (estimated)
*/
define "Prevalence of HIV in the catchment area":
  [Observation: Cx."Prevalence of HIV in the catchment area"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE11 Ultrasound available at the health facility
  @activity: HIV ARegistration
  @description: Whether an ultrasound machine is available and functional in the facility and a trained health worker is available to use it
*/
define "Ultrasound available at the health facility":
  [Observation: Cx."Ultrasound available at the health facility"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE12 HIV burden of the setting
  @activity: HIV ARegistration
  @description: HIV burden of the setting (high or low) based on the national HIV prevalence or where the HIV prevalence and/or incidence in a geographical setting is higher than national prevalence and, therefore, needs priority in the HIV response
*/
define "HIV burden of the setting":
  [Observation: Cx."HIV burden of the setting Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE15 HPV DNA testing operational at the health facility
  @activity: HIV ARegistration
  @description: Is HPV DNA testing operational at the health facility for cervical cancer screening?
*/
define "HPV DNA testing operational at the health facility":
  [Observation: Cx."HPV DNA testing operational at the health facility"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE16 Routine viral load testing is available
  @activity: HIV ARegistration
  @description: Routine viral load testing is available in the facility
*/
define "Routine viral load testing is available":
  [Observation: Cx."Routine viral load testing is available"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE17 Health facility ID
  @activity: HIV ARegistration
  @description: Unique ID of the health facility that recorded the client. This ID could represent a universal health facility ID, if used in the country. Alternatively this ID can also be generated by the national surveillance system and assigned to reporting facility.
*/
define "Health facility ID":
  [Observation: Cx."Health facility ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE18 TB treating facility ID
  @activity: HIV ARegistration
  @description: The facility where the client is receiving tuberculosis (TB) treatment
*/
define "TB treating facility ID":
  [Observation: Cx."TB treating facility ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE19 Other priority populations
  @activity: HIV ARegistration
  @description: Other populations of priority of HIV prevention and care in local context (provided during adaptation)
*/
define "Other priority populations":
  [Observation: Cx."Other priority populations"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE2 Population prevalence of soil-transmitted helminth infection
  @activity: HIV ARegistration
  @description: The percentage of individuals in the general population infected with at least one species of soil-transmitted helminths
*/
define "Population prevalence of soil-transmitted helminth infection":
  [Observation: Cx."Population prevalence of soil-transmitted helminth infection"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE20 Reporting period end date
  @activity: HIV ARegistration
  @description: End date of the reporting period
*/
define "Reporting period end date":
  [Observation: Cx."Reporting period end date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE21 Reporting period start date
  @activity: HIV ARegistration
  @description: Start date of the reporting period
*/
define "Reporting period start date":
  [Observation: Cx."Reporting period start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE22 Reporting date
  @activity: HIV ARegistration
  @description: Reporting date, for surveys performed on a specific date
*/
define "Reporting date":
  [Observation: Cx."Reporting date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE3 Population incidence of HIV in the absence of PrEP
  @activity: HIV ARegistration
  @description: HIV incidence number of cases per 100 person–years in the absence of PrEP
*/
define "Population incidence of HIV in the absence of PrEP":
  [Observation: Cx."Population incidence of HIV in the absence of PrEP"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE4 Population prevalence of HIV
  @activity: HIV ARegistration
  @description: The proportion of the population that are HIV-positive
*/
define "Population prevalence of HIV":
  [Observation: Cx."Population prevalence of HIV"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE5 Prevalence of pretreatment NNRTI drug resistance
  @activity: HIV ARegistration
  @description: Prevalence of pretreatment HIV drug resistance to NNRTIs among people initiating first-line ART
*/
define "Prevalence of pretreatment NNRTI drug resistance":
  [Observation: Cx."Prevalence of pretreatment NNRTI drug resistance"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE6 Malaria-endemic setting
  @activity: HIV ARegistration
  @description: Whether the setting is a malaria-endemic setting
*/
define "Malaria-endemic setting":
  [Observation: Cx."Malaria-endemic setting"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE7 Population prevalence of syphilis
  @activity: HIV ARegistration
  @description: The proportion of the population with syphilis
*/
define "Population prevalence of syphilis":
  [Observation: Cx."Population prevalence of syphilis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE8 Population prevalence of hepatitis B
  @activity: HIV ARegistration
  @description: The proportion of hepatitis B surface antigen (HBsAg) seroprevalence in the general population
*/
define "Population prevalence of hepatitis B":
  [Observation: Cx."Population prevalence of hepatitis B"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.Config.DE9 Population prevalence of hepatitis C
  @activity: HIV ARegistration
  @description: The proportion of hepatitis C virus (HCV) antibody seroprevalence in the general population
*/
define "Population prevalence of hepatitis C":
  [Observation: Cx."Population prevalence of hepatitis C"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE10 Respiratory rate
  @activity: HIV ARegistration
  @description: The number of breaths per minute
*/
define "Respiratory rate":
  [Observation: Cx."Respiratory rate"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1000 TB treatment started
  @activity: HIV ARegistration
  @description: Indicates if TB treatment was started
*/
define "TB treatment started":
  [Observation: Cx."TB treatment started"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1001 TB treatment start date
  @activity: HIV ARegistration
  @description: The date on which the client start or restarted tuberculosis (TB) treatment
*/
define "TB treatment start date":
  [Observation: Cx."TB treatment start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1002 TB treatment outcome
  @activity: HIV ARegistration
  @description: Indicates patient's TB treatment outcome
*/
define "TB treatment outcome":
  [Observation: Cx."TB treatment outcome Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1009 TB treatment completion date
  @activity: HIV ARegistration
  @description: Date client completes TB treatment
*/
define "TB treatment completion date":
  [Observation: Cx."TB treatment completion date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1010 TB treatment regimen composition
  @activity: HIV ARegistration
  @description: TB drugs currently being taken by the client
*/
define "TB treatment regimen composition":
  [Observation: Cx."TB treatment regimen composition Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1017 Eligible for TB preventive treatment
  @activity: HIV ARegistration
  @description: Client is eligible for tuberculosis preventive treatment (TPT)
*/
define "Eligible for TB preventive treatment":
  [Observation: Cx."Eligible for TB preventive treatment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1018 Date when eligibility for TB preventive treatment (TPT) was determined
  @activity: HIV ARegistration
  @description: Date when a determination of the client's eligibility for TPT was made
*/
define "Date when eligibility for TB preventive treatment (TPT) was determined":
  [Observation: Cx."Date when eligibility for TB preventive treatment (TPT) was determined"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1019 TB status at ART start
  @activity: HIV ARegistration
  @description: Client's tuberculosis (TB) status when antiretroviral therapy (ART) is started
*/
define "TB status at ART start":
  [Observation: Cx."TB status at ART start Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1023 TB prevention services accepted
  @activity: HIV ARegistration
  @description: Indicates if the client accepts to be evaluated for TB infection and to take the treatment in case he/she is eligible
*/
define "TB prevention services accepted":
  [Observation: Cx."TB prevention services accepted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1024 TB meningitis
  @activity: HIV ARegistration
  @description: Type of extrapulmonary TB identified for the client is TB meningitis
*/
define "TB meningitis":
  [Observation: Cx."TB meningitis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1025 C reactive protein test date
  @activity: HIV ARegistration
  @description: The date on which the client has a test for C reactive protein
*/
define "C reactive protein test date":
  [Observation: Cx."C reactive protein test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1026 C reactive protein test result
  @activity: HIV ARegistration
  @description: Test result of the client's C reactive protein test result in mg/L
*/
define "C reactive protein test result":
  [Observation: Cx."C reactive protein test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1027 C reactive protein test result date
  @activity: HIV ARegistration
  @description: The date when the client's test result for C reactive protein is available
*/
define "C reactive protein test result date":
  [Observation: Cx."C reactive protein test result date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1028 TPT regimen type
  @activity: HIV ARegistration
  @description: Type of TPT regimen the client is currently on
*/
define "TPT regimen type":
  [Observation: Cx."TPT regimen type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE1034 TB preventive treatment (TPT) status
  @activity: HIV ARegistration
  @description: Indicates the current status of TB preventive treatment (TPT)
*/
define "TB preventive treatment (TPT) status":
  [Observation: Cx."TB preventive treatment (TPT) status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE11 Heart rate
  @activity: HIV ARegistration
  @description: The number of heartbeats per minute
*/
define "Heart rate":
  [Observation: Cx."Heart rate"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE12 Body height
  @activity: HIV ARegistration
  @description: The client's height in centimetres
*/
define "Body height":
  [Observation: Cx."Body height"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE128 ART regimen composition
  @activity: HIV ARegistration
  @description: Drug composition of client's current ART regimen
*/
define "ART regimen composition":
  [Observation: Cx."ART regimen composition Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE13 Body weight
  @activity: HIV ARegistration
  @description: The client's current weight in kilograms
*/
define "Body weight":
  [Observation: Cx."Body weight"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE14 Systolic blood pressure
  @activity: HIV ARegistration
  @description: Systolic blood pressure (SBP) in mmHg
*/
define "Systolic blood pressure":
  [Observation: Cx."Systolic blood pressure"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE146 ART regimen drug class
  @activity: HIV ARegistration
  @description: Drug class of current ART regimen
*/
define "ART regimen drug class":
  [Observation: Cx."ART regimen drug class Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE15 Diastolic blood pressure
  @activity: HIV ARegistration
  @description: Diastolic blood pressure (DBP) in mmHg
*/
define "Diastolic blood pressure":
  [Observation: Cx."Diastolic blood pressure"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE16 Blood pressure cannot be taken
  @activity: HIV ARegistration
  @description: If the client's blood pressure cannot be taken, this should be indicated here. Otherwise, blood pressure should be measured.
*/
define "Blood pressure cannot be taken":
  [Observation: Cx."Blood pressure cannot be taken"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE161 HBsAg test date
  @activity: HIV ARegistration
  @description: Date client was tested for hepatitis B virus (HBV)
*/
define "HBsAg test date":
  [Observation: Cx."HBsAg test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE162 HBsAg test result
  @activity: HIV ARegistration
  @description: Hepatitis B virus test result (HBsAg)
*/
define "HBsAg test result":
  [Observation: Cx."HBsAg test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE166 Date HBV test result returned to client
  @activity: HIV ARegistration
  @description: Date HBV test result (HBsAG) was returned to client
*/
define "Date HBV test result returned to client":
  [Observation: Cx."Date HBV test result returned to client"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE167 HBV treatment (TDF) start date
  @activity: HIV ARegistration
  @description: Date when client started treatment (TDF) for hepatitis B virus (HBV)
*/
define "HBV treatment (TDF) start date":
  [Observation: Cx."HBV treatment (TDF) start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE168 HBV treatment regimen prescribed
  @activity: HIV ARegistration
  @description: Hepatitis B virus treatment regimen prescribed
*/
define "HBV treatment regimen prescribed":
  [Observation: Cx."HBV treatment regimen prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE169 HCV test date
  @activity: HIV ARegistration
  @description: Date client was tested for hepatitis C virus (HCV antibody, HCV RNA or HCV core antigen)
*/
define "HCV test date":
  [Observation: Cx."HCV test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE17 Signs of serious illness
  @activity: HIV ARegistration
  @description: Signs that may indicate the client has a serious illness and needs triage or an emergency referral
*/
define "Signs of serious illness":
  [Observation: Cx."Signs of serious illness Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE170 HCV test result
  @activity: HIV ARegistration
  @description: Hepatitis C virus test result (HCV antibody, HCV RNA or HCV core antigen)
*/
define "HCV test result":
  [Observation: Cx."HCV test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE174 Date HCV test result returned to client
  @activity: HIV ARegistration
  @description: Date HCV test result was returned to client
*/
define "Date HCV test result returned to client":
  [Observation: Cx."Date HCV test result returned to client"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE175 HCV treatment start date
  @activity: HIV ARegistration
  @description: Date when client started treatment for hepatitis C virus (HCV)
*/
define "HCV treatment start date":
  [Observation: Cx."HCV treatment start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE176 HCV treatment completion date
  @activity: HIV ARegistration
  @description: Date when client completed treatment for hepatitis C virus (HCV)
*/
define "HCV treatment completion date":
  [Observation: Cx."HCV treatment completion date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE177 HCV treatment regimen prescribed
  @activity: HIV ARegistration
  @description: Hepatitis C virus treatment regimen prescribed
*/
define "HCV treatment regimen prescribed":
  [Observation: Cx."HCV treatment regimen prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE178 HCV viral load test date
  @activity: HIV ARegistration
  @description: Hepatitis C viral load test date
*/
define "HCV viral load test date":
  [Observation: Cx."HCV viral load test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE179 HCV viral load test result
  @activity: HIV ARegistration
  @description: Hepatitis C viral load test result (qualitative)
*/
define "HCV viral load test result":
  [Observation: Cx."HCV viral load test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE182 HCV medicine type
  @activity: HIV ARegistration
  @description: Type of medicine client is prescribed
*/
define "HCV medicine type":
  [Observation: Cx."HCV medicine type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE185 Currently on TDF-based ART
  @activity: HIV ARegistration
  @description: Client is currently on TDF-based ART regimen
*/
define "Currently on TDF-based ART":
  [Observation: Cx."Currently on TDF-based ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE186 HIV clinical stage
  @activity: HIV ARegistration
  @description: WHO clinical stage of client based on signs and symptoms. WHO clinical staging is a way to categorize HIV disease severity based on new or recurrent clinical events. There are 4 WHO clinical stages that range from mild symptoms (WHO clinical stage 1) to severe symptoms (WHO clinical stage 4).
*/
define "HIV clinical stage":
  [Observation: Cx."HIV clinical stage Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE191 Number of missed doses
  @activity: HIV ARegistration
  @description: Number of doses of antiretroviral therapy (ART) the client missed since the last visit, used for monitoring adherence
*/
define "Number of missed doses":
  [Observation: Cx."Number of missed doses"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE192 Received viral load test result
  @activity: HIV ARegistration
  @description: Client received results from viral load test
*/
define "Received viral load test result":
  [Observation: Cx."Received viral load test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE193 Date viral load test results received by client
  @activity: HIV ARegistration
  @description: The date on which the client received results from viral load test
*/
define "Date viral load test results received by client":
  [Observation: Cx."Date viral load test results received by client"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE194 Date of viral load sample collection
  @activity: HIV ARegistration
  @description: Date and time when the sample was collected to test the client's HIV viral load
*/
define "Date of viral load sample collection":
  [Observation: Cx."Date of viral load sample collection"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE195 Date of scheduled review of viral load test results
  @activity: HIV ARegistration
  @description: Expected date when client's viral load test results will be returned and reviewed
*/
define "Date of scheduled review of viral load test results":
  [Observation: Cx."Date of scheduled review of viral load test results"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE196 Date of ART interruption
  @activity: HIV ARegistration
  @description: Date of client's ART interruption (ART stop or missed drug pick-up)
*/
define "Date of ART interruption":
  [Observation: Cx."Date of ART interruption"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE197 Reason(s) for adherence problem
  @activity: HIV ARegistration
  @description: Reason why client was not adherent
*/
define "Reason(s) for adherence problem":
  [Observation: Cx."Reason(s) for adherence problem Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE216 Other reason for nonadherence (specify)
  @activity: HIV ARegistration
  @description: Client reported not being adherent because of other reason for nonadherence (specify)
*/
define "Other reason for nonadherence (specify)":
  [Observation: Cx."Other reason for nonadherence (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE217 Reason ART stopped
  @activity: HIV ARegistration
  @description: Reason client intentionally stopped ART
*/
define "Reason ART stopped":
  [Observation: Cx."Reason ART stopped Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE224 Other reason for stopping ART (specify)
  @activity: HIV ARegistration
  @description: Client stopped ART because of other reason (specify)
*/
define "Other reason for stopping ART (specify)":
  [Observation: Cx."Other reason for stopping ART (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE225 Treatment failure
  @activity: HIV ARegistration
  @description: ART treatment failure
*/
define "Treatment failure":
  [Observation: Cx."Treatment failure Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE229 General care activities recommended
  @activity: HIV ARegistration
  @description: General care activities to be performed during the care visit
*/
define "General care activities recommended":
  [Observation: Cx."General care activities recommended Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE247 Preventing and treating coinfections
  @activity: HIV ARegistration
  @description: Coinfection prevention and treatment activities performed during the care visit
*/
define "Preventing and treating coinfections":
  [Observation: Cx."Preventing and treating coinfections Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE259 Risk factors, comorbidities and coinfections signs and symptoms
  @activity: HIV ARegistration
  @description: Signs and symptoms of opportunistic infections or other comorbidities experienced by client
*/
define "Risk factors, comorbidities and coinfections signs and symptoms":
  [Observation: Cx."Risk factors, comorbidities and coinfections signs and symptoms Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE289 WHO HIV clinical stage condition or symptom
  @activity: HIV ARegistration
  @description: New or recurrent clinical events used to categorize HIV disease severity based at baseline and follow up
*/
define "WHO HIV clinical stage condition or symptom":
  [Observation: Cx."WHO HIV clinical stage condition or symptom Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE30 Other sign of serious illness (specify)
  @activity: HIV ARegistration
  @description: Client is exhibiting another sign of a serious illness (specify)
*/
define "Other sign of serious illness (specify)":
  [Observation: Cx."Other sign of serious illness (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE33 Number of pregnancies (gravida)
  @activity: HIV ARegistration
  @description: Total number of times the woman has been pregnant (gravida)
*/
define "Number of pregnancies (gravida)":
  [Observation: Cx."Number of pregnancies (gravida)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE34 Number of miscarriages and/or abortions
  @activity: HIV ARegistration
  @description: Total number of pregnancies lost/ended due to miscarriages and/or abortions before 22 weeks/5 months
*/
define "Number of miscarriages and/or abortions":
  [Observation: Cx."Number of miscarriages and/or abortions"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE35 Number of live births
  @activity: HIV ARegistration
  @description: Total number of live births after 22 weeks
*/
define "Number of live births":
  [Observation: Cx."Number of live births"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE358 Clinical stage at start of ART
  @activity: HIV ARegistration
  @description: WHO clinical stage of client based on signs and symptoms at start of ART
*/
define "Clinical stage at start of ART":
  [Observation: Cx."Clinical stage at start of ART Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE36 Parity
  @activity: HIV ARegistration
  @description: Calculated parity is the total number of live and stillbirths
*/
define "Parity":
  [Observation: Cx."Parity"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE363 Date of clinical status change
  @activity: HIV ARegistration
  @description: Date on which the client's WHO HIV clinical stage changed, including the date when the client's stage is first determined
*/
define "Date of clinical status change":
  [Observation: Cx."Date of clinical status change"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE364 CD4 count
  @activity: HIV ARegistration
  @description: CD4 cell count in cells/mm^3
*/
define "CD4 count":
  [Observation: Cx."CD4 count"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE365 CD4 cell percentage
  @activity: HIV ARegistration
  @description: CD4 cell percentage
*/
define "CD4 cell percentage":
  [Observation: Cx."CD4 cell percentage"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE366 Date of CD4 count test
  @activity: HIV ARegistration
  @description: Date and time when CD4 count test was conducted
*/
define "Date of CD4 count test":
  [Observation: Cx."Date of CD4 count test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE367 Baseline CD4 count
  @activity: HIV ARegistration
  @description: CD4 count performed at HIV diagnosis
*/
define "Baseline CD4 count":
  [Observation: Cx."Baseline CD4 count"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE368 Date of baseline CD4 count test
  @activity: HIV ARegistration
  @description: Date and time when baseline CD4 count test was conducted
*/
define "Date of baseline CD4 count test":
  [Observation: Cx."Date of baseline CD4 count test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE369 Late ART initiation
  @activity: HIV ARegistration
  @description: Client had late ART initiation. That is, the client's first CD4 count from baseline CD4 test performed (such as at HIV diagnosis) was a count of <200 cells/mm3
*/
define "Late ART initiation":
  [Observation: Cx."Late ART initiation"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE37 Serodiscordant partner
  @activity: HIV ARegistration
  @description: Client's HIV status is different from a current partner's HIV status
*/
define "Serodiscordant partner":
  [Observation: Cx."Serodiscordant partner"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE370 Reasons for delayed ART initiation
  @activity: HIV ARegistration
  @description: Reason why ART was not initiated at diagnosis or within 7 days of diagnosis
*/
define "Reasons for delayed ART initiation":
  [Observation: Cx."Reasons for delayed ART initiation Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE38 On ART
  @activity: HIV ARegistration
  @description: Client is currently taking ART
*/
define "On ART":
  [Observation: Cx."On ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE382 ART initiated within 7 days of diagnosis
  @activity: HIV ARegistration
  @description: Client initiated ART within 7 days of diagnosis
*/
define "ART initiated within 7 days of diagnosis":
  [Observation: Cx."ART initiated within 7 days of diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE383 Time to start ART
  @activity: HIV ARegistration
  @description: Time from HIV diagnosis to when client started ART
*/
define "Time to start ART":
  [Observation: Cx."Time to start ART Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE387 Viral load test result
  @activity: HIV ARegistration
  @description: Result from the viral load test in number of copies/mL
*/
define "Viral load test result":
  [Observation: Cx."Viral load test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE388 Virally suppressed
  @activity: HIV ARegistration
  @description: The client is virally suppressed for HIV, based on the client's most recent viral load test result being less than 1000 copies/mL
*/
define "Virally suppressed":
  [Observation: Cx."Virally suppressed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE389 Date viral load test results received
  @activity: HIV ARegistration
  @description: Date the viral load test result was received from the lab or completed in the facility
*/
define "Date viral load test results received":
  [Observation: Cx."Date viral load test results received"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE390 Viral load suppression date
  @activity: HIV ARegistration
  @description: Date on which the client tested as becoming virally suppressed, as indicated by a viral load test result under 1000 copies/mL
*/
define "Viral load suppression date":
  [Observation: Cx."Viral load suppression date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE391 Reason for HIV viral load test
  @activity: HIV ARegistration
  @description: Whether the viral load is being tested for routine monitoring on a set schedule or for targeted monitoring for suspected treatment failure
*/
define "Reason for HIV viral load test":
  [Observation: Cx."Reason for HIV viral load test Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE396 Hepatitis B test required
  @activity: HIV ARegistration
  @description: Hepatitis B test is required
*/
define "Hepatitis B test required":
  [Observation: Cx."Hepatitis B test required"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE397 Hepatitis C test recommended
  @activity: HIV ARegistration
  @description: Hepatitis C test is recommended or should be considered
*/
define "Hepatitis C test recommended":
  [Observation: Cx."Hepatitis C test recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE398 Syphilis test required
  @activity: HIV ARegistration
  @description: Syphilis test is required
*/
define "Syphilis test required":
  [Observation: Cx."Syphilis test required"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE399 Monitoring examinations
  @activity: HIV ARegistration
  @description: Name of examinations, test and results for any relevant investigations carried out for client
*/
define "Monitoring examinations":
  [Observation: Cx."Monitoring examinations Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE40 Stopped ART
  @activity: HIV ARegistration
  @description: Client stopped taking ART
*/
define "Stopped ART":
  [Observation: Cx."Stopped ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE41 Date ART stopped
  @activity: HIV ARegistration
  @description: Date on which client stopped ART
*/
define "Date ART stopped":
  [Observation: Cx."Date ART stopped"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE413 Date of scheduled monitoring examination
  @activity: HIV ARegistration
  @description: Date of scheduled monitoring examination
*/
define "Date of scheduled monitoring examination":
  [Observation: Cx."Date of scheduled monitoring examination"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE414 Hepatitis C test ordered
  @activity: HIV ARegistration
  @description: Hepatitis C test has been ordered
*/
define "Hepatitis C test ordered":
  [Observation: Cx."Hepatitis C test ordered"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE415 Syphilis test ordered
  @activity: HIV ARegistration
  @description: Syphilis test has been ordered
*/
define "Syphilis test ordered":
  [Observation: Cx."Syphilis test ordered"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE416 Received viral load test results
  @activity: HIV ARegistration
  @description: Client received results from viral load test
*/
define "Received viral load test results":
  [Observation: Cx."Received viral load test results"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE418 Reason for ARV drug regimen substitution
  @activity: HIV ARegistration
  @description: Reason why a substitution was made to the antiretroviral (ARV) drug regimen
*/
define "Reason for ARV drug regimen substitution":
  [Observation: Cx."Reason for ARV drug regimen substitution Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE42 Established on ART
  @activity: HIV ARegistration
  @description: Is the client successfully established on ART?
*/
define "Established on ART":
  [Observation: Cx."Established on ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE426 Other reason for regimen substitution (specify)
  @activity: HIV ARegistration
  @description: A substitution was made for another reason (specify)
*/
define "Other reason for regimen substitution (specify)":
  [Observation: Cx."Other reason for regimen substitution (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE427 Switch to second-line ART regimen recommended
  @activity: HIV ARegistration
  @description: A switch to second-line ART regimen is recommended
*/
define "Switch to second-line ART regimen recommended":
  [Observation: Cx."Switch to second-line ART regimen recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE428 Switch to third-line ART regimen recommended
  @activity: HIV ARegistration
  @description: A switch to third-line ART regimen is recommended
*/
define "Switch to third-line ART regimen recommended":
  [Observation: Cx."Switch to third-line ART regimen recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE429 Regimen switch made
  @activity: HIV ARegistration
  @description: Provider has made a regimen switch
*/
define "Regimen switch made":
  [Observation: Cx."Regimen switch made"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE43 ART start type
  @activity: HIV ARegistration
  @description: Whether the client is ART naive or is restarting ART
*/
define "ART start type":
  [Observation: Cx."ART start type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE430 Reason for regimen switch
  @activity: HIV ARegistration
  @description: Reason why a switch to a second- or third-line regimen was made
*/
define "Reason for regimen switch":
  [Observation: Cx."Reason for regimen switch Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE436 Regimen substitution recommended
  @activity: HIV ARegistration
  @description: A drug substitution is recommended
*/
define "Regimen substitution recommended":
  [Observation: Cx."Regimen substitution recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE437 Dose adjustment recommended
  @activity: HIV ARegistration
  @description: A dosage change is recommended
*/
define "Dose adjustment recommended":
  [Observation: Cx."Dose adjustment recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE438 Regimen substitution made
  @activity: HIV ARegistration
  @description: Provider has made a regimen substitution
*/
define "Regimen substitution made":
  [Observation: Cx."Regimen substitution made"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE439 Co-trimoxazole prophylaxis start date
  @activity: HIV ARegistration
  @description: Date co-trimoxazole prophylaxis prescribed to client
*/
define "Co-trimoxazole prophylaxis start date":
  [Observation: Cx."Co-trimoxazole prophylaxis start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE440 Co-trimoxazole prophylaxis completion date
  @activity: HIV ARegistration
  @description: Completion date of co-trimoxazole prophylaxis prescribed to client
*/
define "Co-trimoxazole prophylaxis completion date":
  [Observation: Cx."Co-trimoxazole prophylaxis completion date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE441 Co-trimoxazole prophylaxis dosage
  @activity: HIV ARegistration
  @description: Dose of co-trimoxazole prophylaxis prescribed to client
*/
define "Co-trimoxazole prophylaxis dosage":
  [Observation: Cx."Co-trimoxazole prophylaxis dosage"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE442 Co-trimoxazole prophylaxis number of days prescribed
  @activity: HIV ARegistration
  @description: Number of days of co-trimoxazole prophylaxis prescribed to client
*/
define "Co-trimoxazole prophylaxis number of days prescribed":
  [Observation: Cx."Co-trimoxazole prophylaxis number of days prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE443 Suspicion of treatment failure or interruption
  @activity: HIV ARegistration
  @description: Client has been on ART, but has stopped taking it or a treatment failure is suspected
*/
define "Suspicion of treatment failure or interruption":
  [Observation: Cx."Suspicion of treatment failure or interruption"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE444 ART regimen prescribed
  @activity: HIV ARegistration
  @description: INCLUDE VALUE SETS OF REGIMENS
*/
define "ART regimen prescribed":
  [Observation: Cx."ART regimen prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE445 Antiretroviral toxicity
  @activity: HIV ARegistration
  @description: Client is experiencing antiretroviral drug (ARV) toxicity
*/
define "Antiretroviral toxicity":
  [Observation: Cx."Antiretroviral toxicity"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE446 Coinfection status at ART start
  @activity: HIV ARegistration
  @description: Clients status of coinfections at the time when ART was initiated
*/
define "Coinfection status at ART start":
  [Observation: Cx."Coinfection status at ART start Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE449 Pregnant and breastfeeding status at ART start
  @activity: HIV ARegistration
  @description: ART status of women to prevent mother-to-child transmission
*/
define "Pregnant and breastfeeding status at ART start":
  [Observation: Cx."Pregnant and breastfeeding status at ART start Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE454 Delivery date of infant
  @activity: HIV ARegistration
  @description: Date of delivery/birth of infant if breastfeeding at ART start
*/
define "Delivery date of infant":
  [Observation: Cx."Delivery date of infant"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE455 Serodiscordant partner at ART start
  @activity: HIV ARegistration
  @description: Client living with HIV was in an ongoing sexual relationship with an HIV-negative partner when ART was started
*/
define "Serodiscordant partner at ART start":
  [Observation: Cx."Serodiscordant partner at ART start"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE456 Regimen start date
  @activity: HIV ARegistration
  @description: The date on which the client started taking the current ART regimen
*/
define "Regimen start date":
  [Observation: Cx."Regimen start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE459 Dose of medications prescribed
  @activity: HIV ARegistration
  @description: Number of doses (quantity taken at a single point in time) of drugs prescribed/dispensed
*/
define "Dose of medications prescribed":
  [Observation: Cx."Dose of medications prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE46 Date of initiation on ART
  @activity: HIV ARegistration
  @description: The date on which the client was first initiated on ART
*/
define "Date of initiation on ART":
  [Observation: Cx."Date of initiation on ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE460 Number of days medications prescribed
  @activity: HIV ARegistration
  @description: Number of days supply of each medication or regimen prescribed during the visit
*/
define "Number of days medications prescribed":
  [Observation: Cx."Number of days medications prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE461 Medications dispensed
  @activity: HIV ARegistration
  @description: Any other medications that were dispensed to client, including preventive treatment
*/
define "Medications dispensed":
  [Observation: Cx."Medications dispensed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE462 Number of days of medications dispensed
  @activity: HIV ARegistration
  @description: Number of days supply of each medication or regimen dispensed during the visit
*/
define "Number of days of medications dispensed":
  [Observation: Cx."Number of days of medications dispensed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE463 Dosage
  @activity: HIV ARegistration
  @description: Prescribed dosage of the medication
*/
define "Dosage":
  [Observation: Cx."Dosage"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE464 Frequency
  @activity: HIV ARegistration
  @description: Prescribed frequency for taking the medication
*/
define "Frequency":
  [Observation: Cx."Frequency"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE466 Type of treatment-limiting toxicity
  @activity: HIV ARegistration
  @description: Type of treatment-limiting toxicity experienced by client. Treatment-limiting toxicity is defined as a serious adverse drug reaction that results in drug discontinuation or substitution. In addition, any reaction that leads to treatment interruption or requires changing the drug or regimen because of an adverse drug reaction is also considered a serious adverse drug reaction.
*/
define "Type of treatment-limiting toxicity":
  [Observation: Cx."Type of treatment-limiting toxicity Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE47 Time on ART
  @activity: HIV ARegistration
  @description: Time the client has been on ART since starting or restarting it in years and months
*/
define "Time on ART":
  [Observation: Cx."Time on ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE48 Date(s) ART restarted
  @activity: HIV ARegistration
  @description: Date(s) client restarted ART after stopping (intentionally interrupting) for any number of reasons (see "Reason ART stopped")
*/
define "Date(s) ART restarted":
  [Observation: Cx."Date(s) ART restarted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE480 Unexpected adverse drug reaction (specify)
  @activity: HIV ARegistration
  @description: Specify the type of unexpected adverse drug reaction the client experienced
*/
define "Unexpected adverse drug reaction (specify)":
  [Observation: Cx."Unexpected adverse drug reaction (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE481 Date(s) of substitution within first-line regimen
  @activity: HIV ARegistration
  @description: Date on which ARV drug regimen (one or more drugs) for client was changed within the first-line regimen (substitution)
*/
define "Date(s) of substitution within first-line regimen":
  [Observation: Cx."Date(s) of substitution within first-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE482 Reason(s) for substitution within first-line regimen
  @activity: HIV ARegistration
  @description: Reason(s) why one ore more drugs in client's first-line ARV drug regimen was changed (substituted)
*/
define "Reason(s) for substitution within first-line regimen":
  [Observation: Cx."Reason(s) for substitution within first-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE483 New antiretroviral regimen after substitution within first-line regimen
  @activity: HIV ARegistration
  @description: New antiretroviral (ARV) drugs after client changed regimen within the first-line regimen
*/
define "New antiretroviral regimen after substitution within first-line regimen":
  [Observation: Cx."New antiretroviral regimen after substitution within first-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE484 Date of switch to second-line regimen
  @activity: HIV ARegistration
  @description: Date client was changed from a first-line to second-line ARV drug regimen (switch)
*/
define "Date of switch to second-line regimen":
  [Observation: Cx."Date of switch to second-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE485 New regimen after switch to second-line regimen
  @activity: HIV ARegistration
  @description: New ART regimen after switch to second-line ART regimen
*/
define "New regimen after switch to second-line regimen":
  [Observation: Cx."New regimen after switch to second-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE486 Reason for switch to second-line regimen
  @activity: HIV ARegistration
  @description: Reason why client was switched from first- to second-line ARV drug regimen (see "Reason for regimen switch" for levels)
*/
define "Reason for switch to second-line regimen":
  [Observation: Cx."Reason for switch to second-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE487 Date(s) of substitution within second-line regimen
  @activity: HIV ARegistration
  @description: Date on which ARV drug regimen for client was changed within the second-line regimen (substitution)
*/
define "Date(s) of substitution within second-line regimen":
  [Observation: Cx."Date(s) of substitution within second-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE488 Reason(s) for substitution within second-line regimen
  @activity: HIV ARegistration
  @description: Reason(s) why client changed drug regimen (within the second-line)
*/
define "Reason(s) for substitution within second-line regimen":
  [Observation: Cx."Reason(s) for substitution within second-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE489 New regimen(s) after substitution within second-line regimen
  @activity: HIV ARegistration
  @description: New ARV drugs after client changed regimen within the second- line regimen
*/
define "New regimen(s) after substitution within second-line regimen":
  [Observation: Cx."New regimen(s) after substitution within second-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE49 ART cohort
  @activity: HIV ARegistration
  @description: Month and year client originally started ART (documented) at a health facility in the system. The cohort is a group of patients who started ART in the same month (or quarter) and year, whose status is followed over time, using the ART register.
*/
define "ART cohort":
  [Observation: Cx."ART cohort"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE490 Date of switch to third-line regimen
  @activity: HIV ARegistration
  @description: Date client was changed from a second- to third-line ARV drug regimen (switch)
*/
define "Date of switch to third-line regimen":
  [Observation: Cx."Date of switch to third-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE491 New regimen after switch to third-line regimen
  @activity: HIV ARegistration
  @description: New ART regimen after switch to third-line ART regimen
*/
define "New regimen after switch to third-line regimen":
  [Observation: Cx."New regimen after switch to third-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE492 Reason for switch to third-line regimen
  @activity: HIV ARegistration
  @description: Reason why client was switched from second- to third-line ARV drug regimen (see "Reason for regimen switch" for levels)
*/
define "Reason for switch to third-line regimen":
  [Observation: Cx."Reason for switch to third-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE493 Date(s) of substitution within third-line regimen
  @activity: HIV ARegistration
  @description: Date on which ARV drug regimen for client was changed within the third-line (substitution)
*/
define "Date(s) of substitution within third-line regimen":
  [Observation: Cx."Date(s) of substitution within third-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE494 Reason(s) for substitution within third-line regimen
  @activity: HIV ARegistration
  @description: Reason(s) why client changed drug regimen (within the third-line)
*/
define "Reason(s) for substitution within third-line regimen":
  [Observation: Cx."Reason(s) for substitution within third-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE495 New regimen(s) after substitution within third-line regimen
  @activity: HIV ARegistration
  @description: New ARV drugs after client changed regimen within the third-line regimen
*/
define "New regimen(s) after substitution within third-line regimen":
  [Observation: Cx."New regimen(s) after substitution within third-line regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE496 Enhanced adherence counselling provided
  @activity: HIV ARegistration
  @description: Enhanced adherence counselling was provided to the client during the visit
*/
define "Enhanced adherence counselling provided":
  [Observation: Cx."Enhanced adherence counselling provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE497 First enhanced adherence counselling session completed
  @activity: HIV ARegistration
  @description: A first enhanced adherence counselling was provided to the client during the visit
*/
define "First enhanced adherence counselling session completed":
  [Observation: Cx."First enhanced adherence counselling session completed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE498 Date of first enhanced adherence counselling session completed
  @activity: HIV ARegistration
  @description: The date on which the first enhanced adherence counselling was provided to the client
*/
define "Date of first enhanced adherence counselling session completed":
  [Observation: Cx."Date of first enhanced adherence counselling session completed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE499 Second enhanced adherence counselling session completed
  @activity: HIV ARegistration
  @description: A second enhanced adherence counselling was provided to the client during the visit
*/
define "Second enhanced adherence counselling session completed":
  [Observation: Cx."Second enhanced adherence counselling session completed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE50 Transfer in for HIV care
  @activity: HIV ARegistration
  @description: Client is transferring in with records or known ART drugs and ART start date
*/
define "Transfer in for HIV care":
  [Observation: Cx."Transfer in for HIV care"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE500 Date of second enhanced adherence counselling session completed
  @activity: HIV ARegistration
  @description: The date on which the second enhanced adherence counselling was provided to the client
*/
define "Date of second enhanced adherence counselling session completed":
  [Observation: Cx."Date of second enhanced adherence counselling session completed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE501 Third enhanced adherence counselling session completed
  @activity: HIV ARegistration
  @description: A third enhanced adherence counselling was provided to the client during the visit
*/
define "Third enhanced adherence counselling session completed":
  [Observation: Cx."Third enhanced adherence counselling session completed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE502 Date of third enhanced adherence counselling session completed
  @activity: HIV ARegistration
  @description: The date on which the third enhanced adherence counselling was provided to the client
*/
define "Date of third enhanced adherence counselling session completed":
  [Observation: Cx."Date of third enhanced adherence counselling session completed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE503 Name of treatment supporter
  @activity: HIV ARegistration
  @description: Full name of person providing support to client for adherence, care, treatment and other needs (e.g. ARV pick-up if ill)
*/
define "Name of treatment supporter":
  [Observation: Cx."Name of treatment supporter"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE504 Address of treatment supporter
  @activity: HIV ARegistration
  @description: Full address or description of home of treatment supporter
*/
define "Address of treatment supporter":
  [Observation: Cx."Address of treatment supporter"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE505 Telephone number of treatment supporter
  @activity: HIV ARegistration
  @description: Telephone number if available, or else telephone number of neighbour/friend
*/
define "Telephone number of treatment supporter":
  [Observation: Cx."Telephone number of treatment supporter"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE506 Home-based care provider
  @activity: HIV ARegistration
  @description: Name of individual or organization that provides home-based care to client
*/
define "Home-based care provider":
  [Observation: Cx."Home-based care provider"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE507 Counselling provided on diagnoses
  @activity: HIV ARegistration
  @description: Counselling provided on diagnoses
*/
define "Counselling provided on diagnoses":
  [Observation: Cx."Counselling provided on diagnoses"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE508 Hepatitis B positive counselling conducted
  @activity: HIV ARegistration
  @description: Whether counselling was provided to a client who has been diagnosed with hepatitis B
*/
define "Hepatitis B positive counselling conducted":
  [Observation: Cx."Hepatitis B positive counselling conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE509 Hepatitis C positive counselling conducted
  @activity: HIV ARegistration
  @description: Whether counselling was provided to a client who has been diagnosed with hepatitis C
*/
define "Hepatitis C positive counselling conducted":
  [Observation: Cx."Hepatitis C positive counselling conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE51 Date of transfer in
  @activity: HIV ARegistration
  @description: Date client presented at facility (with transfer/referral slip) from another facility (and on ART) within the system
*/
define "Date of transfer in":
  [Observation: Cx."Date of transfer in"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE510 Syphilis counselling and treatment
  @activity: HIV ARegistration
  @description: Whether counselling and treatment was provided to a client who has been diagnosed with syphilis
*/
define "Syphilis counselling and treatment":
  [Observation: Cx."Syphilis counselling and treatment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE511 Syphilis counselling, treatment and further testing
  @activity: HIV ARegistration
  @description: Whether counselling and treatment was provided to a client who has been diagnosed with syphilis. Additional testing (RPR test) recommended.
*/
define "Syphilis counselling, treatment and further testing":
  [Observation: Cx."Syphilis counselling, treatment and further testing"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE512 Accepted partner services
  @activity: HIV ARegistration
  @description: Client accepted offer for partner services
*/
define "Accepted partner services":
  [Observation: Cx."Accepted partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE514 HIV status of family member
  @activity: HIV ARegistration
  @description: HIV status of each family member at time of patient's enrolment, including partner (for mothers)
*/
define "HIV status of family member":
  [Observation: Cx."HIV status of family member"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE515 Unique ID of family member
  @activity: HIV ARegistration
  @description: Unique ID number of each family member if enrolled in HIV care according to national guidelines (see unique ID number)
*/
define "Unique ID of family member":
  [Observation: Cx."Unique ID of family member"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE516 Date of death of family member
  @activity: HIV ARegistration
  @description: Date of death for each family member as appropriate
*/
define "Date of death of family member":
  [Observation: Cx."Date of death of family member"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE518 Provided support for disclosure and partner services
  @activity: HIV ARegistration
  @description: Offer or refer for support for disclosure and partner services
*/
define "Provided support for disclosure and partner services":
  [Observation: Cx."Provided support for disclosure and partner services"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE52 Facility transferred from
  @activity: HIV ARegistration
  @description: Name of health facility client was transferred from
*/
define "Facility transferred from":
  [Observation: Cx."Facility transferred from"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE53 Date enrolled in HIV care
  @activity: HIV ARegistration
  @description: Date client first enrols in HIV care at the facility. Begins when a person with a confirmed HIV diagnosis presents to a facility where HIV care is provided and a medical record, patient card, file or chart is opened for the first time. This could be at an HIV care/ART, MNCH or TB clinic.
*/
define "Date enrolled in HIV care":
  [Observation: Cx."Date enrolled in HIV care"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE531 Follow-up test recommended date
  @activity: HIV ARegistration
  @description: A test or screening recommended for the client's care plan at a future date
*/
define "Follow-up test recommended date":
  [Observation: Cx."Follow-up test recommended date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE532 Reason blood pressure reading not done
  @activity: HIV ARegistration
  @description: Reason why test was not performed
*/
define "Reason blood pressure reading not done":
  [Observation: Cx."Reason blood pressure reading not done Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE535 Other
  @activity: HIV ARegistration
  @description: Other reason blood pressure can not be taken
*/
define "Other":
  [Observation: Cx."Other"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE537 Current medications
  @activity: HIV ARegistration
  @description: List of all of the medications the client is currently taking
*/
define "Current medications":
  [Observation: Cx."Current medications Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE54 Age at enrolment
  @activity: HIV ARegistration
  @description: Client's age when the client was enrolled in ART care
*/
define "Age at enrolment":
  [Observation: Cx."Age at enrolment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE55 Facility where client first enrolled in HIV care
  @activity: HIV ARegistration
  @description: Facility where the client first enrolled in HIV care
*/
define "Facility where client first enrolled in HIV care":
  [Observation: Cx."Facility where client first enrolled in HIV care"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE559 Other medications (specify)
  @activity: HIV ARegistration
  @description: Other medications or supplements that are not listed above (specify)
*/
define "Other medications (specify)":
  [Observation: Cx."Other medications (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE56 Antiretroviral (ARV) drugs received prior to enrolment
  @activity: HIV ARegistration
  @description: Whether or not the client received ARV drugs prior to enrolling into HIV care
*/
define "Antiretroviral (ARV) drugs received prior to enrolment":
  [Observation: Cx."Antiretroviral (ARV) drugs received prior to enrolment Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE560 Allergies
  @activity: HIV ARegistration
  @description: Does the client have any allergies?
*/
define "Allergies":
  [Observation: Cx."Allergies Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE568 Other allergies (specify)
  @activity: HIV ARegistration
  @description: Client has other allergies not listed here (specify)
*/
define "Other allergies (specify)":
  [Observation: Cx."Other allergies (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE569 Family planning method used
  @activity: HIV ARegistration
  @description: Method the client reports currently using at intake
*/
define "Family planning method used":
  [Observation: Cx."Family planning method used Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE593 Medication status
  @activity: HIV ARegistration
  @description: Current state of the client's taking of the medication
*/
define "Medication status":
  [Observation: Cx."Medication status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE602 Hepatitis B negative counselling conducted
  @activity: HIV ARegistration
  @description: Hepatitis B negative counselling conducted
*/
define "Hepatitis B negative counselling conducted":
  [Observation: Cx."Hepatitis B negative counselling conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE603 Vaccine brand
  @activity: HIV ARegistration
  @description: The brand or trade name used to refer to the vaccine received
*/
define "Vaccine brand":
  [Observation: Cx."Vaccine brand"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE604 Vaccine type
  @activity: HIV ARegistration
  @description: Type of vaccine received (such as IPV, OPV)
*/
define "Vaccine type":
  [Observation: Cx."Vaccine type"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE605 Date and time of vaccination
  @activity: HIV ARegistration
  @description: Represents the visit/encounter date, which is the date and time when the vaccine was administered to the client
*/
define "Date and time of vaccination":
  [Observation: Cx."Date and time of vaccination"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE606 Vaccination location
  @activity: HIV ARegistration
  @description: The service delivery location where the vaccine adminstration occurred
*/
define "Vaccination location":
  [Observation: Cx."Vaccination location"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE607 Dose number
  @activity: HIV ARegistration
  @description: Vaccine dose number within series
*/
define "Dose number":
  [Observation: Cx."Dose number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE608 Dose quantity
  @activity: HIV ARegistration
  @description: The quantity of vaccine product that was administered
*/
define "Dose quantity":
  [Observation: Cx."Dose quantity"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE609 Total doses in series
  @activity: HIV ARegistration
  @description: The recommended number of vaccine doses for immunity according to national protocol
*/
define "Total doses in series":
  [Observation: Cx."Total doses in series"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE610 Disease targeted
  @activity: HIV ARegistration
  @description: Vaccine preventable disease being targeted by vaccine administered
*/
define "Disease targeted":
  [Observation: Cx."Disease targeted Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE62 Date ARV drugs received prior to enrolment
  @activity: HIV ARegistration
  @description: Date ARV drugs were started prior to enrolment into HIV care/ART
*/
define "Date ARV drugs received prior to enrolment":
  [Observation: Cx."Date ARV drugs received prior to enrolment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE63 Location ARV drugs received prior to enrolment
  @activity: HIV ARegistration
  @description: Health facility (or other location) where ARV drugs were received prior to enrolment into HIV care/ART
*/
define "Location ARV drugs received prior to enrolment":
  [Observation: Cx."Location ARV drugs received prior to enrolment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE636 Reason immunization was not provided
  @activity: HIV ARegistration
  @description: Reason the vaccine dose was not given
*/
define "Reason immunization was not provided":
  [Observation: Cx."Reason immunization was not provided Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE64 ARV drug regimen received prior to enrolment
  @activity: HIV ARegistration
  @description: ARV drug regimen received prior to enrolment into HIV care/ART
*/
define "ARV drug regimen received prior to enrolment":
  [Observation: Cx."ARV drug regimen received prior to enrolment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE642 Other reason immunization not provided (specify)
  @activity: HIV ARegistration
  @description: Other reason why the immunization was not provided (specify)
*/
define "Other reason immunization not provided (specify)":
  [Observation: Cx."Other reason immunization not provided (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE643 Malaria prophylaxis
  @activity: HIV ARegistration
  @description: Whether malaria prophylaxis was given
*/
define "Malaria prophylaxis":
  [Observation: Cx."Malaria prophylaxis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE644 IPTp-SP dose number provided
  @activity: HIV ARegistration
  @description: IPTp-SP dose number that was provided
*/
define "IPTp-SP dose number provided":
  [Observation: Cx."IPTp-SP dose number provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE645 Date IPTp-SP dose provided
  @activity: HIV ARegistration
  @description: Date on which the IPTp-SP dose was provided
*/
define "Date IPTp-SP dose provided":
  [Observation: Cx."Date IPTp-SP dose provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE646 Reason malaria prophylaxis not provided
  @activity: HIV ARegistration
  @description: Reason why the treatment was not given
*/
define "Reason malaria prophylaxis not provided":
  [Observation: Cx."Reason malaria prophylaxis not provided Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE65 Existing chronic health conditions
  @activity: HIV ARegistration
  @description: Does the client have any current chronic health conditions or problems?
*/
define "Existing chronic health conditions":
  [Observation: Cx."Existing chronic health conditions Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE651 Other reason not provided (specify)
  @activity: HIV ARegistration
  @description: Other reason why the prophylaxis was not provided
*/
define "Other reason not provided (specify)":
  [Observation: Cx."Other reason not provided (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE652 >28 days since last missed appointment
  @activity: HIV ARegistration
  @description: More than 28 days have passed since client's last missed appointment
*/
define ">28 days since last missed appointment":
  [Observation: Cx.">28 days since last missed appointment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE653 AIDS-related death
  @activity: HIV ARegistration
  @description: Death of client was AIDS-related
*/
define "AIDS-related death":
  [Observation: Cx."AIDS-related death"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE654 Date of first AIDS diagnosis
  @activity: HIV ARegistration
  @description: Date of client's first AIDS diagnosis
*/
define "Date of first AIDS diagnosis":
  [Observation: Cx."Date of first AIDS diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE655 Age at final HPV vaccination dose received
  @activity: HIV ARegistration
  @description: Client's age at date received final HPV vaccination dose
*/
define "Age at final HPV vaccination dose received":
  [Observation: Cx."Age at final HPV vaccination dose received"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE656 Date of cervical cancer screening test
  @activity: HIV ARegistration
  @description: Date of cervical cancer screening test
*/
define "Date of cervical cancer screening test":
  [Observation: Cx."Date of cervical cancer screening test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE657 Lifetime screening test number
  @activity: HIV ARegistration
  @description: Client's lifetime number of screenings for cervical cancer
*/
define "Lifetime screening test number":
  [Observation: Cx."Lifetime screening test number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE658 Cervical cancer primary screening test type
  @activity: HIV ARegistration
  @description: Type of cervical cancer screening test used in primary screening
*/
define "Cervical cancer primary screening test type":
  [Observation: Cx."Cervical cancer primary screening test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE664 HPV-DNA cervical cancer screening test result
  @activity: HIV ARegistration
  @description: HPV-DNA cervical cancer screening test result
*/
define "HPV-DNA cervical cancer screening test result":
  [Observation: Cx."HPV-DNA cervical cancer screening test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE668 VIA cervical cancer screening test result
  @activity: HIV ARegistration
  @description: Screening test result for VIA
*/
define "VIA cervical cancer screening test result":
  [Observation: Cx."VIA cervical cancer screening test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE673 Cervical cytology screening test result
  @activity: HIV ARegistration
  @description: Screening result for cervical cytology
*/
define "Cervical cytology screening test result":
  [Observation: Cx."Cervical cytology screening test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE680 Cervical cancer triage test date
  @activity: HIV ARegistration
  @description: Date of triage test for cervical cancer
*/
define "Cervical cancer triage test date":
  [Observation: Cx."Cervical cancer triage test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE681 Cervical cancer triage test type
  @activity: HIV ARegistration
  @description: Type of triage test for cervical cancer
*/
define "Cervical cancer triage test type":
  [Observation: Cx."Cervical cancer triage test type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE688 HPV16/18 test result
  @activity: HIV ARegistration
  @description: Test result from HPV16/18 test
*/
define "HPV16/18 test result":
  [Observation: Cx."HPV16/18 test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE691 Cervical cancer colposcopy result
  @activity: HIV ARegistration
  @description: Result of cervical cancer colposcopy
*/
define "Cervical cancer colposcopy result":
  [Observation: Cx."Cervical cancer colposcopy result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE697 Cervical cancer histopathology result
  @activity: HIV ARegistration
  @description: Result of cervical cancer histopathology
*/
define "Cervical cancer histopathology result":
  [Observation: Cx."Cervical cancer histopathology result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE702 Date of additional cervical cancer triage test
  @activity: HIV ARegistration
  @description: Date of tertiary cervical cancer screening test
*/
define "Date of additional cervical cancer triage test":
  [Observation: Cx."Date of additional cervical cancer triage test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE703 Additional cervical cancer triage test type (specify)
  @activity: HIV ARegistration
  @description: Additional cervical cancer triage test type (specify)
*/
define "Additional cervical cancer triage test type (specify)":
  [Observation: Cx."Additional cervical cancer triage test type (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE704 Additional cervical cancer triage test result (specify)
  @activity: HIV ARegistration
  @description: Additional cervical cancer triage test result (specify)
*/
define "Additional cervical cancer triage test result (specify)":
  [Observation: Cx."Additional cervical cancer triage test result (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE705 Date of diagnosis of cervical precancer lesions or invasive cervical cancer
  @activity: HIV ARegistration
  @description: Date of diagnosis of cervical precancer lesions or invasive cervical cancer
*/
define "Date of diagnosis of cervical precancer lesions or invasive cervical cancer":
  [Observation: Cx."Date of diagnosis of cervical precancer lesions or invasive cervical cancer"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE706 Cervical cancer screening outcome
  @activity: HIV ARegistration
  @description: Client's screening outcome for cervical cancer
*/
define "Cervical cancer screening outcome":
  [Observation: Cx."Cervical cancer screening outcome Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE709 Cervical cancer diagnosis
  @activity: HIV ARegistration
  @description: Type of cervical cancer diagnosis
*/
define "Cervical cancer diagnosis":
  [Observation: Cx."Cervical cancer diagnosis Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE712 Cervical cancer stage at diagnosis
  @activity: HIV ARegistration
  @description: Cervical cancer stage at diagnosis of cervical cancer
*/
define "Cervical cancer stage at diagnosis":
  [Observation: Cx."Cervical cancer stage at diagnosis Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE718 Date of treatment for cervical precancer lesions
  @activity: HIV ARegistration
  @description: Date of treatment for cervical precancer lesions
*/
define "Date of treatment for cervical precancer lesions":
  [Observation: Cx."Date of treatment for cervical precancer lesions"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE719 Treatment method for cervical precancer lesions
  @activity: HIV ARegistration
  @description: Treatment method for cervical precancer lesions
*/
define "Treatment method for cervical precancer lesions":
  [Observation: Cx."Treatment method for cervical precancer lesions Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE728 Date of follow-up for treatment for cervical precancer lesions
  @activity: HIV ARegistration
  @description: Date of follow-up for treatment for cervical precancer lesions
*/
define "Date of follow-up for treatment for cervical precancer lesions":
  [Observation: Cx."Date of follow-up for treatment for cervical precancer lesions"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE729 Date of start of invasive cancer treatment
  @activity: HIV ARegistration
  @description: Date of start of invasive cancer treatment
*/
define "Date of start of invasive cancer treatment":
  [Observation: Cx."Date of start of invasive cancer treatment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE730 Invasive cervical cancer treatment episode
  @activity: HIV ARegistration
  @description: Client's lifetime number of treatments for invasive cervical cancer
*/
define "Invasive cervical cancer treatment episode":
  [Observation: Cx."Invasive cervical cancer treatment episode"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE731 Invasive cervical cancer treatment method
  @activity: HIV ARegistration
  @description: Invasive cervical cancer treatment method
*/
define "Invasive cervical cancer treatment method":
  [Observation: Cx."Invasive cervical cancer treatment method Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE74 Original first-line ART regimen
  @activity: HIV ARegistration
  @description: Original full, first-line ARV drug regimen patient started on at this facility
*/
define "Original first-line ART regimen":
  [Observation: Cx."Original first-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE741 Treatment outcome
  @activity: HIV ARegistration
  @description: Treatment outcome from cervical pre-cancerous lesion treatment or invasive cancer treatment (specify)
*/
define "Treatment outcome":
  [Observation: Cx."Treatment outcome"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE742 Secondary/other cancers diagnosed
  @activity: HIV ARegistration
  @description: Secondary and other cancers that client is diagnosed with (specify)
*/
define "Secondary/other cancers diagnosed":
  [Observation: Cx."Secondary/other cancers diagnosed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE743 Cancers at other sites (HPV- and non-HPV related)
  @activity: HIV ARegistration
  @description: Cancers at other sites that client has (specify)
*/
define "Cancers at other sites (HPV- and non-HPV related)":
  [Observation: Cx."Cancers at other sites (HPV- and non-HPV related)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE744 Date of death
  @activity: HIV ARegistration
  @description: If deceased, the date that the client died
*/
define "Date of death":
  [Observation: Cx."Date of death"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE745 Cervical cancer screening interval amongst WLHIV
  @activity: HIV ARegistration
  @description: Country-specific interval between cancer screenings amongst women living with HIV (typically 3 or 5 years)
*/
define "Cervical cancer screening interval amongst WLHIV":
  [Observation: Cx."Cervical cancer screening interval amongst WLHIV"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE75 Current ART regimen
  @activity: HIV ARegistration
  @description: The current ART regimen the client is taking
*/
define "Current ART regimen":
  [Observation: Cx."Current ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE76 Current ART regimen start date
  @activity: HIV ARegistration
  @description: The date on which the client started taking the current ART regimen
*/
define "Current ART regimen start date":
  [Observation: Cx."Current ART regimen start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE760 Eligible for DSD ART
  @activity: HIV ARegistration
  @description: Client is eligible for differentiated service delivery (DSD) for ART
*/
define "Eligible for DSD ART":
  [Observation: Cx."Eligible for DSD ART"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE761 Date DSD ART eligibility assessed
  @activity: HIV ARegistration
  @description: Date client was assessed for eligibility for differentiated service delivery (DSD) for ART
*/
define "Date DSD ART eligibility assessed":
  [Observation: Cx."Date DSD ART eligibility assessed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE762 Currently enrolled in DSD ART model
  @activity: HIV ARegistration
  @description: Client currently enrolled in differentiated service delivery (DSD) ART model
*/
define "Currently enrolled in DSD ART model":
  [Observation: Cx."Currently enrolled in DSD ART model"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE763 DSD ART start date
  @activity: HIV ARegistration
  @description: Date client started on differentiated service delivery (DSD) for ART
*/
define "DSD ART start date":
  [Observation: Cx."DSD ART start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE764 DSD ART model(s)
  @activity: HIV ARegistration
  @description: Type of DSD ART model client is enrolled in (country-specific)
*/
define "DSD ART model(s)":
  [Observation: Cx."DSD ART model(s) Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE77 Preferred first-line ART regimen
  @activity: HIV ARegistration
  @description: The preferred first-line ART regimen for the client according to WHO (or national) guidelines
*/
define "Preferred first-line ART regimen":
  [Observation: Cx."Preferred first-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE771 Other DSD ART model (specify)
  @activity: HIV ARegistration
  @description: Client is enrolled in another DSD ART model (specify)
*/
define "Other DSD ART model (specify)":
  [Observation: Cx."Other DSD ART model (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE772 Partner testing offered
  @activity: HIV ARegistration
  @description: Whether client was offered partner testing
*/
define "Partner testing offered":
  [Observation: Cx."Partner testing offered"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE773 Partner testing accepted
  @activity: HIV ARegistration
  @description: Whether partner testing was accepted
*/
define "Partner testing accepted":
  [Observation: Cx."Partner testing accepted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE774 Date partner contacted for index testing
  @activity: HIV ARegistration
  @description: Date on which client's partner was contacted for index testing
*/
define "Date partner contacted for index testing":
  [Observation: Cx."Date partner contacted for index testing"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE775 Date partner tested for HIV
  @activity: HIV ARegistration
  @description: Date on which client's partner was tested for HIV
*/
define "Date partner tested for HIV":
  [Observation: Cx."Date partner tested for HIV"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE776 Date of next scheduled follow-up appointment
  @activity: HIV ARegistration
  @description: Date of client's next scheduled follow-up appointment
*/
define "Date of next scheduled follow-up appointment":
  [Observation: Cx."Date of next scheduled follow-up appointment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE777 Type of next follow-up appointment
  @activity: HIV ARegistration
  @description: Type of client's next follow-up appointment (specify)
*/
define "Type of next follow-up appointment":
  [Observation: Cx."Type of next follow-up appointment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE78 Alternative first-line ART regimen
  @activity: HIV ARegistration
  @description: The alternative first-line ART regimen for the client according to WHO (or national) guidelines
*/
define "Alternative first-line ART regimen":
  [Observation: Cx."Alternative first-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE79 First-line ART regimen under special circumstances
  @activity: HIV ARegistration
  @description: The first-line ART regimen for the client under special circumstances according to WHO (or national) guidelines
*/
define "First-line ART regimen under special circumstances":
  [Observation: Cx."First-line ART regimen under special circumstances"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE8 Scheduled visit
  @activity: HIV ARegistration
  @description: Is this is a scheduled visit?
*/
define "Scheduled visit":
  [Observation: Cx."Scheduled visit"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE80 Preferred second-line ART regimen
  @activity: HIV ARegistration
  @description: The preferred second-line ART regimen for the client according to WHO (or national) guidelines
*/
define "Preferred second-line ART regimen":
  [Observation: Cx."Preferred second-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE81 Alternative second-line ART regimen
  @activity: HIV ARegistration
  @description: The alternative second-line ART regimen for the client according to WHO (or national) guidelines
*/
define "Alternative second-line ART regimen":
  [Observation: Cx."Alternative second-line ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE82 Optimal regimen for transition
  @activity: HIV ARegistration
  @description: The optimal regimen for transition to DTG-based regimens for children established on ART
*/
define "Optimal regimen for transition":
  [Observation: Cx."Optimal regimen for transition"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE83 Current ART regimen (first-, second-, or third-line)
  @activity: HIV ARegistration
  @description: ART regimen for treating clients living with HIV, based on national guidance
*/
define "Current ART regimen (first-, second-, or third-line)":
  [Observation: Cx."Current ART regimen (first-, second-, or third-line) Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE884 Mid-upper arm circumference (MUAC)
  @activity: HIV ARegistration
  @description: Client's mid-upper arm circumference (MUAC)
*/
define "Mid-upper arm circumference (MUAC)":
  [Observation: Cx."Mid-upper arm circumference (MUAC)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE885 Date of start of fluconazole prophylaxis
  @activity: HIV ARegistration
  @description: Date of client's start of fluconazole prophylaxis
*/
define "Date of start of fluconazole prophylaxis":
  [Observation: Cx."Date of start of fluconazole prophylaxis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE886 Fluconazole prophylaxis
  @activity: HIV ARegistration
  @description: Client provided with fluconazole prophylaxis
*/
define "Fluconazole prophylaxis":
  [Observation: Cx."Fluconazole prophylaxis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE887 Date started cryptococcal meningitis treatment induction regimen
  @activity: HIV ARegistration
  @description: Date client started cryptococcal meningitis treatment induction regimen
*/
define "Date started cryptococcal meningitis treatment induction regimen":
  [Observation: Cx."Date started cryptococcal meningitis treatment induction regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE888 Date completed cryptococcal meningitis treatment induction regimen
  @activity: HIV ARegistration
  @description: Date client completed cryptococcal meningitis treatment induction regimen
*/
define "Date completed cryptococcal meningitis treatment induction regimen":
  [Observation: Cx."Date completed cryptococcal meningitis treatment induction regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE889 Date started cryptococcal meningitis treatment maintenance regimen
  @activity: HIV ARegistration
  @description: Date client started cryptococcal meningitis treatment maintenance regimen
*/
define "Date started cryptococcal meningitis treatment maintenance regimen":
  [Observation: Cx."Date started cryptococcal meningitis treatment maintenance regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE890 Date completed cryptococcal meningitis treatment maintenance regimen
  @activity: HIV ARegistration
  @description: Date client completed cryptococcal meningitis treatment maintenance regimen
*/
define "Date completed cryptococcal meningitis treatment maintenance regimen":
  [Observation: Cx."Date completed cryptococcal meningitis treatment maintenance regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE891 Date started cryptococcal meningitis treatment consolidation regimen
  @activity: HIV ARegistration
  @description: Date client started cryptococcal meningitis treatment consolidation regimen
*/
define "Date started cryptococcal meningitis treatment consolidation regimen":
  [Observation: Cx."Date started cryptococcal meningitis treatment consolidation regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE892 Date completed cryptococcal meningitis treatment consolidation regimen
  @activity: HIV ARegistration
  @description: Date client completed cryptococcal meningitis treatment consolidation regimen
*/
define "Date completed cryptococcal meningitis treatment consolidation regimen":
  [Observation: Cx."Date completed cryptococcal meningitis treatment consolidation regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE893 Staging of liver disease
  @activity: HIV ARegistration
  @description: Staging of liver disease in client
*/
define "Staging of liver disease":
  [Observation: Cx."Staging of liver disease Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE896 Advanced HIV disease
  @activity: HIV ARegistration
  @description: Client has Advanced HIV disease (AHD)
*/
define "Advanced HIV disease":
  [Observation: Cx."Advanced HIV disease"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE897 WHO functional status
  @activity: HIV ARegistration
  @description: Functional status of people with advanced HIV disease
*/
define "WHO functional status":
  [Observation: Cx."WHO functional status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE9 Body temperature
  @activity: HIV ARegistration
  @description: Temperature of the client in Celsius
*/
define "Body temperature":
  [Observation: Cx."Body temperature"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE90 ART regimen
  @activity: HIV ARegistration
  @description: List of ART regimens
*/
define "ART regimen":
  [Observation: Cx."ART regimen Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE901 Tailored adherence counselling for advanced HIV disease
  @activity: HIV ARegistration
  @description: Client provided with tailored adherence counselling for advanced HIV disease
*/
define "Tailored adherence counselling for advanced HIV disease":
  [Observation: Cx."Tailored adherence counselling for advanced HIV disease"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE902 Date(s) of tracing interventions
  @activity: HIV ARegistration
  @description: Date tracing interventions to support reengagement into HIV care conducted
*/
define "Date(s) of tracing interventions":
  [Observation: Cx."Date(s) of tracing interventions"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE903 Medication/drug
  @activity: HIV ARegistration
  @description: Current or considered medication/drug, for the purpose of determining drug interactions
*/
define "Medication/drug":
  [Observation: Cx."Medication/drug Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE933 Medication change recommended
  @activity: HIV ARegistration
  @description: A medication change is recommended for the client based upon current or considered medications
*/
define "Medication change recommended":
  [Observation: Cx."Medication change recommended"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE938 TB disease
  @activity: HIV ARegistration
  @description: Whether the client has tuberculosis (TB) disease. Sometimes known as active TB
*/
define "TB disease":
  [Observation: Cx."TB disease"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE939 TB diagnosis result
  @activity: HIV ARegistration
  @description: Final result of the TB investigation (bacteriological and/or clinical)
*/
define "TB diagnosis result":
  [Observation: Cx."TB diagnosis result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE942 Method of TB diagnosis
  @activity: HIV ARegistration
  @description: Method used to set the TB diagnosis
*/
define "Method of TB diagnosis":
  [Observation: Cx."Method of TB diagnosis Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE945 Presumptive TB
  @activity: HIV ARegistration
  @description: Client has signs or symptoms of tuberculosis (TB) without laboratory confirmation
*/
define "Presumptive TB":
  [Observation: Cx."Presumptive TB"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE946 Presumptive TB registration date
  @activity: HIV ARegistration
  @description: Date client is registered as having signs or symptoms of tuberculosis (TB) without laboratory confirmation
*/
define "Presumptive TB registration date":
  [Observation: Cx."Presumptive TB registration date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE947 TB treatment history
  @activity: HIV ARegistration
  @description: History of previous TB treatment
*/
define "TB treatment history":
  [Observation: Cx."TB treatment history Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE952 Date of TB diagnosis
  @activity: HIV ARegistration
  @description: The date when the diagnosis was established
*/
define "Date of TB diagnosis":
  [Observation: Cx."Date of TB diagnosis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE953 Currently on TB preventive treatment (TPT)
  @activity: HIV ARegistration
  @description: Client is currently taking TPT
*/
define "Currently on TB preventive treatment (TPT)":
  [Observation: Cx."Currently on TB preventive treatment (TPT)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE954 TB preventive treatment (TPT) start date
  @activity: HIV ARegistration
  @description: The date on which the client began taking TPT
*/
define "TB preventive treatment (TPT) start date":
  [Observation: Cx."TB preventive treatment (TPT) start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE955 TB preventive treatment (TPT) completion date
  @activity: HIV ARegistration
  @description: The date on which the client completed TPT
*/
define "TB preventive treatment (TPT) completion date":
  [Observation: Cx."TB preventive treatment (TPT) completion date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE956 TB screening algorithm
  @activity: HIV ARegistration
  @description: Screening algorithm selected for screening activities
*/
define "TB screening algorithm":
  [Observation: Cx."TB screening algorithm Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE971 Other TB screening algorithm (specify)
  @activity: HIV ARegistration
  @description: Client screened for tuberculosis (TB) with a different screening method not listed (specify)
*/
define "Other TB screening algorithm (specify)":
  [Observation: Cx."Other TB screening algorithm (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE972 TB screening conducted
  @activity: HIV ARegistration
  @description: A screening for tuberculosis (TB) was performed
*/
define "TB screening conducted":
  [Observation: Cx."TB screening conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE973 Symptoms of TB
  @activity: HIV ARegistration
  @description: Symptoms that may indicate TB disease in clients living with HIV, based on a clinical algorithm
*/
define "Symptoms of TB":
  [Observation: Cx."Symptoms of TB Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE985 History of contact with a person with TB
  @activity: HIV ARegistration
  @description: Client had a history of a contact with a person with TB
*/
define "History of contact with a person with TB":
  [Observation: Cx."History of contact with a person with TB"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE986 TB screening result
  @activity: HIV ARegistration
  @description: Record the result of the tuberculosis (TB) screening
*/
define "TB screening result":
  [Observation: Cx."TB screening result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE990 TB screening date
  @activity: HIV ARegistration
  @description: Date the TB screening was conducted
*/
define "TB screening date":
  [Observation: Cx."TB screening date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE991 TB screening result date
  @activity: HIV ARegistration
  @description: The date when the result of TB screening is available
*/
define "TB screening result date":
  [Observation: Cx."TB screening result date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE992 TB diagnostic test category
  @activity: HIV ARegistration
  @description: The type of diagnostic test performed to detect tuberculosis (TB) disease
*/
define "TB diagnostic test category":
  [Observation: Cx."TB diagnostic test category Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE997 TB diagnostic test date
  @activity: HIV ARegistration
  @description: The date when TB diagnostic test was performed
*/
define "TB diagnostic test date":
  [Observation: Cx."TB diagnostic test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE998 Test sample collection date
  @activity: HIV ARegistration
  @description: The date when the test sample was collected from the client
*/
define "Test sample collection date":
  [Observation: Cx."Test sample collection date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.D.DE999 TB diagnostic test result date
  @activity: HIV ARegistration
  @description: The date when the result of the TB diagnostic test is available
*/
define "TB diagnostic test result date":
  [Observation: Cx."TB diagnostic test result date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE1 Pregnant woman's first name
  @activity: HIV ARegistration
  @description: Pregnant woman's first or given name
*/
define "Pregnant woman's first name":
  [Observation: Cx."Pregnant woman's first name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE100 Head circumference
  @activity: HIV ARegistration
  @description: Head circumference of infant at birth in cm
*/
define "Head circumference":
  [Observation: Cx."Head circumference"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE101 Mother HIV test conducted
  @activity: HIV ARegistration
  @description: Whether an HIV test of the mother was conducted
*/
define "Mother HIV test conducted":
  [Observation: Cx."Mother HIV test conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE102 Mother HIV test ordered
  @activity: HIV ARegistration
  @description: Whether an HIV test of the mother was ordered
*/
define "Mother HIV test ordered":
  [Observation: Cx."Mother HIV test ordered"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE103 Mother HIV test date
  @activity: HIV ARegistration
  @description: Date when a mother's HIV test was conducted
*/
define "Mother HIV test date":
  [Observation: Cx."Mother HIV test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE104 Maternal HIV test result
  @activity: HIV ARegistration
  @description: Test result for mother after applying the testing strategy
*/
define "Maternal HIV test result":
  [Observation: Cx."Maternal HIV test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE108 Infant or child exposure to HIV
  @activity: HIV ARegistration
  @description: Whether the infant or child was determined to have had HIV exposure through mother
*/
define "Infant or child exposure to HIV":
  [Observation: Cx."Infant or child exposure to HIV Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE112 HIV-exposed infant or child
  @activity: HIV ARegistration
  @description: Whether the infant or child was determined to have had HIV exposure
*/
define "HIV-exposed infant or child":
  [Observation: Cx."HIV-exposed infant or child"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE119 Postpartum family planning counselling conducted
  @activity: HIV ARegistration
  @description: Provide family planning and contraception counselling
*/
define "Postpartum family planning counselling conducted":
  [Observation: Cx."Postpartum family planning counselling conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE12 Number of previous pregnancies
  @activity: HIV ARegistration
  @description: This calculates the total number of all previous pregnancies (i.e. not including this current pregnancy). This is done for easier obstetric history calculations.
*/
define "Number of previous pregnancies":
  [Observation: Cx."Number of previous pregnancies"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE120 Age of infant on HIV test date
  @activity: HIV ARegistration
  @description: Infant's age when an HIV test is performed in months and years (calculated from date of birth)
*/
define "Age of infant on HIV test date":
  [Observation: Cx."Age of infant on HIV test date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE121 ARV adherence counselling
  @activity: HIV ARegistration
  @description: Counselling was carried out during visit
*/
define "ARV adherence counselling":
  [Observation: Cx."ARV adherence counselling"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE122 Infant feeding counselling provided
  @activity: HIV ARegistration
  @description: Support on infant and child feeding to mother or caregiver provided
*/
define "Infant feeding counselling provided":
  [Observation: Cx."Infant feeding counselling provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE123 Date infant feeding counselling provided
  @activity: HIV ARegistration
  @description: Date support on infant and child feeding to mother or caregiver provided
*/
define "Date infant feeding counselling provided":
  [Observation: Cx."Date infant feeding counselling provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE124 Malaria prevention counselling conducted
  @activity: HIV ARegistration
  @description: Counselling provided on how to prevent malaria
*/
define "Malaria prevention counselling conducted":
  [Observation: Cx."Malaria prevention counselling conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE125 Insecticide treated bednet (ITN) provided or referred
  @activity: HIV ARegistration
  @description: An insecticide treated bednet (ITN) was provided or the client was referred
*/
define "Insecticide treated bednet (ITN) provided or referred":
  [Observation: Cx."Insecticide treated bednet (ITN) provided or referred"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE126 Maternal syphilis treatment
  @activity: HIV ARegistration
  @description: Whether or not mother was treated for syphilis
*/
define "Maternal syphilis treatment":
  [Observation: Cx."Maternal syphilis treatment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE127 Infant feeding practice
  @activity: HIV ARegistration
  @description: Infant feeding practice
*/
define "Infant feeding practice":
  [Observation: Cx."Infant feeding practice Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE131 Infant feeding practice recorded date
  @activity: HIV ARegistration
  @description: Date on which infant feeding practice was recorded
*/
define "Infant feeding practice recorded date":
  [Observation: Cx."Infant feeding practice recorded date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE132 Stopped breastfeeding
  @activity: HIV ARegistration
  @description: The mother has fully stopped breastfeeding the infant or child
*/
define "Stopped breastfeeding":
  [Observation: Cx."Stopped breastfeeding"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE133 Date stopped breastfeeding
  @activity: HIV ARegistration
  @description: The date on which the mother stopped breastfeeding the infant
*/
define "Date stopped breastfeeding":
  [Observation: Cx."Date stopped breastfeeding"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE134 Taking iron and folic acid (IFA) tablets
  @activity: HIV ARegistration
  @description: Is client taking her iron and folic acid (IFA) tablets? Select whether the woman is continuing to take IFA supplements
*/
define "Taking iron and folic acid (IFA) tablets":
  [Observation: Cx."Taking iron and folic acid (IFA) tablets"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE135 Amount of iron prescribed
  @activity: HIV ARegistration
  @description: Amount of iron supplements prescribed in milligrams for intake
*/
define "Amount of iron prescribed":
  [Observation: Cx."Amount of iron prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE136 Type of iron supplement dosage provided
  @activity: HIV ARegistration
  @description: Whether the amount of iron prescribed is for daily or weekly intake
*/
define "Type of iron supplement dosage provided":
  [Observation: Cx."Type of iron supplement dosage provided Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE139 Amount of daily dose of folic acid prescribed
  @activity: HIV ARegistration
  @description: Amount of folic acid supplements prescribed in milligrams for daily intake
*/
define "Amount of daily dose of folic acid prescribed":
  [Observation: Cx."Amount of daily dose of folic acid prescribed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE140 Date infant ARV prophylaxis dispensed (or started)
  @activity: HIV ARegistration
  @description: Date HIV-exposed infant received ARV prophylaxis (for the first time)
*/
define "Date infant ARV prophylaxis dispensed (or started)":
  [Observation: Cx."Date infant ARV prophylaxis dispensed (or started)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE141 Maternal HIV status
  @activity: HIV ARegistration
  @description: The HIV status of the infant's mother
*/
define "Maternal HIV status":
  [Observation: Cx."Maternal HIV status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE145 Maternal HIV status at first ANC visit
  @activity: HIV ARegistration
  @description: The HIV status of the infant's mother at first ANC visit
*/
define "Maternal HIV status at first ANC visit":
  [Observation: Cx."Maternal HIV status at first ANC visit Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE149 Maternal syphilis test result
  @activity: HIV ARegistration
  @description: Result from maternal syphilis test
*/
define "Maternal syphilis test result":
  [Observation: Cx."Maternal syphilis test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE15 Number of caesarian sections
  @activity: HIV ARegistration
  @description: Total number of caesarean sections
*/
define "Number of caesarian sections":
  [Observation: Cx."Number of caesarian sections"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE153 Hypertension
  @activity: HIV ARegistration
  @description: Whether the client has developed hypertension associated with pregnancy
*/
define "Hypertension":
  [Observation: Cx."Hypertension"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE154 Pre-eclampsia
  @activity: HIV ARegistration
  @description: Whether the client has pre-eclampsia
*/
define "Pre-eclampsia":
  [Observation: Cx."Pre-eclampsia"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE16 Number of stillbirths
  @activity: HIV ARegistration
  @description: Total number of stillbirths after 22 weeks
*/
define "Number of stillbirths":
  [Observation: Cx."Number of stillbirths"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE161 Date woman received counselling for CPT
  @activity: HIV ARegistration
  @description: Date woman received counselling for co-trimoxazole preventive therapy (CPT)
*/
define "Date woman received counselling for CPT":
  [Observation: Cx."Date woman received counselling for CPT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE162 Date woman received counselling for TPT
  @activity: HIV ARegistration
  @description: Date woman received counselling for TB preventive therapy
*/
define "Date woman received counselling for TPT":
  [Observation: Cx."Date woman received counselling for TPT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE163 Infant's co-trimoxazole prophylaxis start date
  @activity: HIV ARegistration
  @description: Start date of co-trimoxazole prophylaxis
*/
define "Infant's co-trimoxazole prophylaxis start date":
  [Observation: Cx."Infant's co-trimoxazole prophylaxis start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE164 Infant's age when co-trimoxazole prophylaxis was started
  @activity: HIV ARegistration
  @description: The number of weeks or months infant was when started on co-trimoxazole (CTX) prophylaxis preventive therapy
*/
define "Infant's age when co-trimoxazole prophylaxis was started":
  [Observation: Cx."Infant's age when co-trimoxazole prophylaxis was started"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE165 Presumptive clinical diagnosis of severe HIV infection in infants
  @activity: HIV ARegistration
  @description: Presumptive clinical diagnosis of severe HIV infection in infants
*/
define "Presumptive clinical diagnosis of severe HIV infection in infants":
  [Observation: Cx."Presumptive clinical diagnosis of severe HIV infection in infants"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE166 Infant ARV prophylaxis
  @activity: HIV ARegistration
  @description: Infant is taking an antiretroviral prophylaxis to prevent infection from HIV exposure
*/
define "Infant ARV prophylaxis":
  [Observation: Cx."Infant ARV prophylaxis"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE167 Infant ARV prophylaxis start date
  @activity: HIV ARegistration
  @description: The date on which the infant was started on an antiretroviral prophylaxis
*/
define "Infant ARV prophylaxis start date":
  [Observation: Cx."Infant ARV prophylaxis start date Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE17 Past pregnancy complications
  @activity: HIV ARegistration
  @description: Whether the woman has had any complications or problems in any previous pregnancy
*/
define "Past pregnancy complications":
  [Observation: Cx."Past pregnancy complications Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE173 Maternal and child health service visit
  @activity: HIV ARegistration
  @description: Maternal and child health service visit attended by an HIV-exposed infant
*/
define "Maternal and child health service visit":
  [Observation: Cx."Maternal and child health service visit Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE177 Weeks postpartum
  @activity: HIV ARegistration
  @description: Number of weeks postpartum on this visit date
*/
define "Weeks postpartum":
  [Observation: Cx."Weeks postpartum"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE178 Birth cohort
  @activity: HIV ARegistration
  @description: Month and year of infant's birth, which the infant is registered into. The cohort is a group of infants born in the same month, whose status is followed over time.
*/
define "Birth cohort":
  [Observation: Cx."Birth cohort"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE179 Registered in birth cohort
  @activity: HIV ARegistration
  @description: Whether the infant has been registered in a birth cohort
*/
define "Registered in birth cohort":
  [Observation: Cx."Registered in birth cohort"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE180 EID sample number
  @activity: HIV ARegistration
  @description: Early infant diagnosis (EID) sample number
*/
define "EID sample number":
  [Observation: Cx."EID sample number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE181 EID sample 1
  @activity: HIV ARegistration
  @description: First sample used to test an infant for HIV
*/
define "EID sample 1":
  [Observation: Cx."EID sample 1"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE182 EID sample 2
  @activity: HIV ARegistration
  @description: Second sample used to test an infant for HIV
*/
define "EID sample 2":
  [Observation: Cx."EID sample 2"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE183 EID test number
  @activity: HIV ARegistration
  @description: Early infant diagnosis (EID) HIV test number using the same sample
*/
define "EID test number":
  [Observation: Cx."EID test number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE184 EID test number 1
  @activity: HIV ARegistration
  @description: First test on a sample to test an infant for HIV
*/
define "EID test number 1":
  [Observation: Cx."EID test number 1"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE185 EID test number 2
  @activity: HIV ARegistration
  @description: Second test on a sample to test an infant for HIV
*/
define "EID test number 2":
  [Observation: Cx."EID test number 2"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE186 EID test number 1 test result
  @activity: HIV ARegistration
  @description: Early infant diagnosis test number 1 test result
*/
define "EID test number 1 test result":
  [Observation: Cx."EID test number 1 test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE190 EID test number 2 test result
  @activity: HIV ARegistration
  @description: Early infant diagnosis test number 2 test result
*/
define "EID test number 2 test result":
  [Observation: Cx."EID test number 2 test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE2 Pregnant woman's surname
  @activity: HIV ARegistration
  @description: Pregnant woman's family name or last name
*/
define "Pregnant woman's surname":
  [Observation: Cx."Pregnant woman's surname"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE216 Test result of syphilis assay 1
  @activity: HIV ARegistration
  @description: The result of the first syphilis assay in the testing strategy
*/
define "Test result of syphilis assay 1":
  [Observation: Cx."Test result of syphilis assay 1 Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE220 Test result of syphilis assay 1 repeated
  @activity: HIV ARegistration
  @description: The result of the first syphilis assay repeated in the testing strategy
*/
define "Test result of syphilis assay 1 repeated":
  [Observation: Cx."Test result of syphilis assay 1 repeated Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE225 Infant HIV status
  @activity: HIV ARegistration
  @description: HIV status reported after applying the HIV testing algorithm. No single HIV test can provide an HIV-positive diagnosis.
*/
define "Infant HIV status":
  [Observation: Cx."Infant HIV status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE229 Infant ART start date
  @activity: HIV ARegistration
  @description: The date on which the infant was started or restarted on antiretroviral therapy (ART)
*/
define "Infant ART start date":
  [Observation: Cx."Infant ART start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE230 Final diagnosis of HIV-exposed infant
  @activity: HIV ARegistration
  @description: HIV-exposed infant final status at 18 months or 3 months after cessation of breastfeeding (whichever is later).
*/
define "Final diagnosis of HIV-exposed infant":
  [Observation: Cx."Final diagnosis of HIV-exposed infant Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE234 HIV-exposed infant reason for unknown final status
  @activity: HIV ARegistration
  @description: The outcome for the infant does not have a final outcome, which may because of death, stopped treatment or lost to follow-up.
*/
define "HIV-exposed infant reason for unknown final status":
  [Observation: Cx."HIV-exposed infant reason for unknown final status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE239 Date of death of infant
  @activity: HIV ARegistration
  @description: Date that the infant died
*/
define "Date of death of infant":
  [Observation: Cx."Date of death of infant"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE240 Cause of death of infant
  @activity: HIV ARegistration
  @description: The infant's cause of death
*/
define "Cause of death of infant":
  [Observation: Cx."Cause of death of infant"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE241 Infant died within 24 hours of childbirth
  @activity: HIV ARegistration
  @description: The infant died within 24 hours of childbirth
*/
define "Infant died within 24 hours of childbirth":
  [Observation: Cx."Infant died within 24 hours of childbirth"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE242 Action(s) needed during infant follow-up visit
  @activity: HIV ARegistration
  @description: Any actions needed during infant follow-up visit
*/
define "Action(s) needed during infant follow-up visit":
  [Observation: Cx."Action(s) needed during infant follow-up visit"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE243 Timing of additional infant HIV test
  @activity: HIV ARegistration
  @description: Age in months when additional infant HIV test is performed
*/
define "Timing of additional infant HIV test":
  [Observation: Cx."Timing of additional infant HIV test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE244 Date of sample collection of additional infant HIV test
  @activity: HIV ARegistration
  @description: Date of sample collection of additional infant HIV test
*/
define "Date of sample collection of additional infant HIV test":
  [Observation: Cx."Date of sample collection of additional infant HIV test"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE245 Haemoglobin (Hb) result
  @activity: HIV ARegistration
  @description: Result of woman's haemoglobin test during ANC, labour or delivery. Full blood count testing is recommended, and if not available, use of  haemoglobinometer over haemoglobin colour scale.
*/
define "Haemoglobin (Hb) result":
  [Observation: Cx."Haemoglobin (Hb) result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE246 Blood group and Rh factor
  @activity: HIV ARegistration
  @description: Mother's blood type and blood Rh factor
*/
define "Blood group and Rh factor":
  [Observation: Cx."Blood group and Rh factor Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE255 Asymptomatic bacteriuria (ASB) test result
  @activity: HIV ARegistration
  @description: Result of urine culture (or urine Gram-staining if not available over dipstick tests) for diagnosing asymptomatic bacteriuria
*/
define "Asymptomatic bacteriuria (ASB) test result":
  [Observation: Cx."Asymptomatic bacteriuria (ASB) test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE259 Urine protein test result
  @activity: HIV ARegistration
  @description: Results of urine protein test of mother during ANC visit
*/
define "Urine protein test result":
  [Observation: Cx."Urine protein test result Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE264 Type of hypertensive disorder
  @activity: HIV ARegistration
  @description: Type of hypertensive disorder of the mother
*/
define "Type of hypertensive disorder":
  [Observation: Cx."Type of hypertensive disorder Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE3 Pregnant woman's unique ID
  @activity: HIV ARegistration
  @description: Unique identifier generated for new clients or a universal ID, if used in the country
*/
define "Pregnant woman's unique ID":
  [Observation: Cx."Pregnant woman's unique ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE35 Other past pregnancy problems (specify)
  @activity: HIV ARegistration
  @description: Woman experienced other past pregnancy problems not described above (specify)
*/
define "Other past pregnancy problems (specify)":
  [Observation: Cx."Other past pregnancy problems (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE37 Pregnancy in HIV-infected woman
  @activity: HIV ARegistration
  @description: Any HIV diagnosis in a pregnant woman as determined by the national HIV testing algorithm, or a pregnancy in a woman previously diagnosed with HIV
*/
define "Pregnancy in HIV-infected woman":
  [Observation: Cx."Pregnancy in HIV-infected woman"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE38 Date new pregnancy of HIV-positive woman identified
  @activity: HIV ARegistration
  @description: Earliest date when a new pregnancy of an HIV-positive woman is recorded
*/
define "Date new pregnancy of HIV-positive woman identified":
  [Observation: Cx."Date new pregnancy of HIV-positive woman identified"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE39 ANC contact during pregnancy
  @activity: HIV ARegistration
  @description: Whether the mother had at least one ANC contact (visit)
*/
define "ANC contact during pregnancy":
  [Observation: Cx."ANC contact during pregnancy"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE4 Antenatal care number
  @activity: HIV ARegistration
  @description: Identification number assigned to woman at first visit to the ANC based on national system
*/
define "Antenatal care number":
  [Observation: Cx."Antenatal care number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE40 Date of first ANC visit
  @activity: HIV ARegistration
  @description: Date of the pregnant woman's first ANC visit
*/
define "Date of first ANC visit":
  [Observation: Cx."Date of first ANC visit"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE41 Timing of ART initiation
  @activity: HIV ARegistration
  @description: When the pregnant woman or mother initiated ART, for women living with HIV.
*/
define "Timing of ART initiation":
  [Observation: Cx."Timing of ART initiation Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE45 Maternal use of recommended ART regimen
  @activity: HIV ARegistration
  @description: Whether the mother is taking a recommended ART regimen
*/
define "Maternal use of recommended ART regimen":
  [Observation: Cx."Maternal use of recommended ART regimen"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE46 Delivery date
  @activity: HIV ARegistration
  @description: Date on which the woman delivered
*/
define "Delivery date":
  [Observation: Cx."Delivery date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE47 Pregnancy outcome
  @activity: HIV ARegistration
  @description: Outcome of current pregnancy
*/
define "Pregnancy outcome":
  [Observation: Cx."Pregnancy outcome Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE52 Delivery mode
  @activity: HIV ARegistration
  @description: Mode of delivery for current pregnancy
*/
define "Delivery mode":
  [Observation: Cx."Delivery mode Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE56 Indications for caesarian section (C/S)
  @activity: HIV ARegistration
  @description: Indications for caesarian section
*/
define "Indications for caesarian section (C/S)":
  [Observation: Cx."Indications for caesarian section (C/S)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE57 Obstetric complications
  @activity: HIV ARegistration
  @description: Serious or life-threatening obstetric complications during pregnancy, delivery or postpartum experienced by mother or her newborn
*/
define "Obstetric complications":
  [Observation: Cx."Obstetric complications"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE58 Live birth
  @activity: HIV ARegistration
  @description: The woman had a live birth
*/
define "Live birth":
  [Observation: Cx."Live birth"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE59 Live birth to an HIV-positive woman
  @activity: HIV ARegistration
  @description: A woman living with HIV had a live birth
*/
define "Live birth to an HIV-positive woman":
  [Observation: Cx."Live birth to an HIV-positive woman"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE6 Source of gestational age
  @activity: HIV ARegistration
  @description: Gestational age can be calculated multiple ways. This data element describes where the gestational age above has been calculated from.
*/
define "Source of gestational age":
  [Observation: Cx."Source of gestational age Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE60 Gestational age at birth
  @activity: HIV ARegistration
  @description: Best estimate of gestational age in completed weeks when infant was born (an indication of prematurity, preterm and extreme preterm)
*/
define "Gestational age at birth":
  [Observation: Cx."Gestational age at birth"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE61 Small for gestational age (SGA)
  @activity: HIV ARegistration
  @description: Whether the infant was small for gestational age (SGA) at birth (<10th percentile)
*/
define "Small for gestational age (SGA)":
  [Observation: Cx."Small for gestational age (SGA)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE62 Preterm birth status
  @activity: HIV ARegistration
  @description: The woman gave birth when the gestational age is less than 37 weeks
*/
define "Preterm birth status":
  [Observation: Cx."Preterm birth status Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE66 Maternal ART start date
  @activity: HIV ARegistration
  @description: The date on which the infant was started or restarted on ART
*/
define "Maternal ART start date":
  [Observation: Cx."Maternal ART start date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE67 Place of delivery
  @activity: HIV ARegistration
  @description: The type of place where the woman delivered
*/
define "Place of delivery":
  [Observation: Cx."Place of delivery Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE72 Delivery facility
  @activity: HIV ARegistration
  @description: Facility where the infant or child was born
*/
define "Delivery facility":
  [Observation: Cx."Delivery facility"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE73 Date of miscarriage or abortion
  @activity: HIV ARegistration
  @description: Date of the miscarriage/abortion
*/
define "Date of miscarriage or abortion":
  [Observation: Cx."Date of miscarriage or abortion"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE74 Date of death of mother
  @activity: HIV ARegistration
  @description: Date that the woman died
*/
define "Date of death of mother":
  [Observation: Cx."Date of death of mother"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE75 Cause of death of mother
  @activity: HIV ARegistration
  @description: The woman's cause of death
*/
define "Cause of death of mother":
  [Observation: Cx."Cause of death of mother"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE76 Infant's first name
  @activity: HIV ARegistration
  @description: Infant's first or given name
*/
define "Infant's first name":
  [Observation: Cx."Infant's first name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE77 Infant's surname
  @activity: HIV ARegistration
  @description: Infant's family name or last name
*/
define "Infant's surname":
  [Observation: Cx."Infant's surname"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE78 Infant's unique ID
  @activity: HIV ARegistration
  @description: Unique identifier generated for new clients or a universal ID, if used in the country
*/
define "Infant's unique ID":
  [Observation: Cx."Infant's unique ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE79 Mother's first name
  @activity: HIV ARegistration
  @description: Biological mother's first or given name
*/
define "Mother's first name":
  [Observation: Cx."Mother's first name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE80 Mother's surname
  @activity: HIV ARegistration
  @description: Biological mother's family name or last name
*/
define "Mother's surname":
  [Observation: Cx."Mother's surname"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE81 Mother's unique ID
  @activity: HIV ARegistration
  @description: Unique identifier generated for new clients or a universal ID, if used in the country
*/
define "Mother's unique ID":
  [Observation: Cx."Mother's unique ID"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE82 Caregiver's first name
  @activity: HIV ARegistration
  @description: Caregiver's first or given name
*/
define "Caregiver's first name":
  [Observation: Cx."Caregiver's first name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE83 Caregiver's surname
  @activity: HIV ARegistration
  @description: Caregiver's family name or last name
*/
define "Caregiver's surname":
  [Observation: Cx."Caregiver's surname"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE84 Caregiver's unique identifier
  @activity: HIV ARegistration
  @description: Unique identifier generated for new clients or a universal ID, if used in the country
*/
define "Caregiver's unique identifier":
  [Observation: Cx."Caregiver's unique identifier"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE85 ANC contact date
  @activity: HIV ARegistration
  @description: The date and time of the client's ANC contact (in the ANC DAK this is called 'Contact date')
*/
define "ANC contact date":
  [Observation: Cx."ANC contact date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE87 Infant date of birth
  @activity: HIV ARegistration
  @description: The infant's date of birth (DOB) if known
*/
define "Infant date of birth":
  [Observation: Cx."Infant date of birth"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE88 Date of birth of infant unknown
  @activity: HIV ARegistration
  @description: Is the client's DOB unknown?
*/
define "Date of birth of infant unknown":
  [Observation: Cx."Date of birth of infant unknown"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE89 Estimated age of infant
  @activity: HIV ARegistration
  @description: If DOB is unknown, enter the client's estimated age. Display client's age in number of years
*/
define "Estimated age of infant":
  [Observation: Cx."Estimated age of infant"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE90 Age of infant
  @activity: HIV ARegistration
  @description: Infant age calculated using date of birth
*/
define "Age of infant":
  [Observation: Cx."Age of infant"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE91 Gender of infant
  @activity: HIV ARegistration
  @description: Gender of the infant
*/
define "Gender of infant":
  [Observation: Cx."Gender of infant Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE95 Infant height
  @activity: HIV ARegistration
  @description: The infant's height in centimetres
*/
define "Infant height":
  [Observation: Cx."Infant height"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE96 Infant weight
  @activity: HIV ARegistration
  @description: The infant's current weight in kilograms
*/
define "Infant weight":
  [Observation: Cx."Infant weight"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE97 Birth weight
  @activity: HIV ARegistration
  @description: Birth weight in kg of the baby
*/
define "Birth weight":
  [Observation: Cx."Birth weight"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE98 Low birth weight
  @activity: HIV ARegistration
  @description: Note if infant </¬¨‚â•2500 g at birth
*/
define "Low birth weight":
  [Observation: Cx."Low birth weight"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.E.DE99 Length of infant
  @activity: HIV ARegistration
  @description: Length of infant at birth in cm
*/
define "Length of infant":
  [Observation: Cx."Length of infant"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE10 Date viral load sample sent
  @activity: HIV ARegistration
  @description: Date viral load sample sent to the lab
*/
define "Date viral load sample sent":
  [Observation: Cx."Date viral load sample sent"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE11 First viral load test result
  @activity: HIV ARegistration
  @description: Result from the initial viral load test in number of copies/mL
*/
define "First viral load test result":
  [Observation: Cx."First viral load test result"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE13 HIV viral load specimen type
  @activity: HIV ARegistration
  @description: The type of specimen to be used to test viral load
*/
define "HIV viral load specimen type":
  [Observation: Cx."HIV viral load specimen type Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE22 Reason Hepatitis B test not conducted
  @activity: HIV ARegistration
  @description: Reason why a hepatitis B test was not done
*/
define "Reason Hepatitis B test not conducted":
  [Observation: Cx."Reason Hepatitis B test not conducted Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE29 Hepatitis B diagnosis
  @activity: HIV ARegistration
  @description: Client's hepatitis B diagnosis
*/
define "Hepatitis B diagnosis":
  [Observation: Cx."Hepatitis B diagnosis Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE32 Hepatitis C screening date
  @activity: HIV ARegistration
  @description: Date when client was screened for HCV
*/
define "Hepatitis C screening date":
  [Observation: Cx."Hepatitis C screening date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE34 Hepatitis C test conducted
  @activity: HIV ARegistration
  @description: Whether a hepatitis C test was conducted
*/
define "Hepatitis C test conducted":
  [Observation: Cx."Hepatitis C test conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE35 Reason Hepatitis C test not done
  @activity: HIV ARegistration
  @description: Reason why a hepatitis C test was not done
*/
define "Reason Hepatitis C test not done":
  [Observation: Cx."Reason Hepatitis C test not done Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE4 Date of baseline CD4 count sample collection
  @activity: HIV ARegistration
  @description: Date and time when baseline CD4 count test sample was collected
*/
define "Date of baseline CD4 count sample collection":
  [Observation: Cx."Date of baseline CD4 count sample collection"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE51 Hepatitis C diagnosis
  @activity: HIV ARegistration
  @description: Client's hepatitis C diagnosis
*/
define "Hepatitis C diagnosis":
  [Observation: Cx."Hepatitis C diagnosis Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE6 Date of CD4 sample collection
  @activity: HIV ARegistration
  @description: Date sample to be used for CD4 count was collected
*/
define "Date of CD4 sample collection":
  [Observation: Cx."Date of CD4 sample collection"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE62 Reason syphilis test not done
  @activity: HIV ARegistration
  @description: Reason why a syphilis test was not done
*/
define "Reason syphilis test not done":
  [Observation: Cx."Reason syphilis test not done Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE7 Viral load test conducted
  @activity: HIV ARegistration
  @description: A viral load test was performed
*/
define "Viral load test conducted":
  [Observation: Cx."Viral load test conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE74 Syphilis diagnosis
  @activity: HIV ARegistration
  @description: Client's syphilis diagnosis
*/
define "Syphilis diagnosis":
  [Observation: Cx."Syphilis diagnosis Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE77 Other tests conducted
  @activity: HIV ARegistration
  @description: If the health worker performed other tests on the woman that are not explicitly listed in the application, select "yes" here and fill in the details below.
*/
define "Other tests conducted":
  [Observation: Cx."Other tests conducted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE78 Other test(s) name
  @activity: HIV ARegistration
  @description: Input the name of other test(s) that were done.
*/
define "Other test(s) name":
  [Observation: Cx."Other test(s) name"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE79 Other test(s) date
  @activity: HIV ARegistration
  @description: Input the date of other test(s) that were done.
*/
define "Other test(s) date":
  [Observation: Cx."Other test(s) date"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE80 Other test(s) result(s)
  @activity: HIV ARegistration
  @description: Input the result from the test(s).
*/
define "Other test(s) result(s)":
  [Observation: Cx."Other test(s) result(s)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.G.DE9 Date of first viral load sample collection
  @activity: HIV ARegistration
  @description: Date and time when the sample was collected to test the client's HIV viral load for the first time
*/
define "Date of first viral load sample collection":
  [Observation: Cx."Date of first viral load sample collection"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE1 Reason for follow-up
  @activity: HIV ARegistration
  @description: The reason why the client is being followed up
*/
define "Reason for follow-up":
  [Observation: Cx."Reason for follow-up Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE10 Client contact attempted
  @activity: HIV ARegistration
  @description: An attempt to locate the client was made
*/
define "Client contact attempted":
  [Observation: Cx."Client contact attempted"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE11 Date of contact attempt
  @activity: HIV ARegistration
  @description: Date of attempt to contact client
*/
define "Date of contact attempt":
  [Observation: Cx."Date of contact attempt"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE12 Contact attempted by
  @activity: HIV ARegistration
  @description: Who attempted to reach out to the client
*/
define "Contact attempted by":
  [Observation: Cx."Contact attempted by"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE13 Contact method
  @activity: HIV ARegistration
  @description: Method used to try to reach out to the client
*/
define "Contact method":
  [Observation: Cx."Contact method Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE17 Source of information
  @activity: HIV ARegistration
  @description: Source of information about the client
*/
define "Source of information":
  [Observation: Cx."Source of information Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE22 Other source of information (specify)
  @activity: HIV ARegistration
  @description: Information about the client's status was provided by someone else (specify)
*/
define "Other source of information (specify)":
  [Observation: Cx."Other source of information (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE23 Outcome from outreach attempt
  @activity: HIV ARegistration
  @description: Detailed outcome from the attempt to locate the client
*/
define "Outcome from outreach attempt":
  [Observation: Cx."Outcome from outreach attempt Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE30 Moved from catchment area
  @activity: HIV ARegistration
  @description: The client moved from the catchment area (may be reported from the community level)
*/
define "Moved from catchment area":
  [Observation: Cx."Moved from catchment area"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE31 Date client moved from catchment area
  @activity: HIV ARegistration
  @description: The date on which the client moved from the catchment area, if known
*/
define "Date client moved from catchment area":
  [Observation: Cx."Date client moved from catchment area"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE32 New catchment area
  @activity: HIV ARegistration
  @description: New catchment area where the client resides
*/
define "New catchment area":
  [Observation: Cx."New catchment area"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE33 Partner or contact of index case
  @activity: HIV ARegistration
  @description: The client was identified by an index case as a partner or contact
*/
define "Partner or contact of index case":
  [Observation: Cx."Partner or contact of index case"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE34 HIV status of partner or contact
  @activity: HIV ARegistration
  @description: HIV status of the partner or contact given by the index case
*/
define "HIV status of partner or contact":
  [Observation: Cx."HIV status of partner or contact Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE39 Cause of death
  @activity: HIV ARegistration
  @description: Cause of death, if known
*/
define "Cause of death":
  [Observation: Cx."Cause of death"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE40 Place of death
  @activity: HIV ARegistration
  @description: Where the client died, if known
*/
define "Place of death":
  [Observation: Cx."Place of death"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE41 HIV treatment outcome
  @activity: HIV ARegistration
  @description: The outcome for the client which is used for reporting retention/attrition.
*/
define "HIV treatment outcome":
  [Observation: Cx."HIV treatment outcome Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE46 Date patient lost to follow-up
  @activity: HIV ARegistration
  @description: Date patient was lost to follow-up (LTFU)
*/
define "Date patient lost to follow-up":
  [Observation: Cx."Date patient lost to follow-up"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE48 Date HIV treatment outcome changed
  @activity: HIV ARegistration
  @description: The date on which the client's outcome (lost to follow-up, transferred out, death (documented), or refused (stopped) treatment) changed
*/
define "Date HIV treatment outcome changed":
  [Observation: Cx."Date HIV treatment outcome changed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE49 Transfer confirmed
  @activity: HIV ARegistration
  @description: Select if transfer to another facility is confirmed
*/
define "Transfer confirmed":
  [Observation: Cx."Transfer confirmed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE50 Transfer to facility
  @activity: HIV ARegistration
  @description: Name of health facility client was transferred to
*/
define "Transfer to facility":
  [Observation: Cx."Transfer to facility"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE51 Date of transfer out
  @activity: HIV ARegistration
  @description: The date the client transferred out of the facility to be provided with care at another facility
*/
define "Date of transfer out":
  [Observation: Cx."Date of transfer out"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE52 Adherence assessment
  @activity: HIV ARegistration
  @description: Whether client is adherent or not to ART regimen per national guidelines (immunological or virological monitoring)
*/
define "Adherence assessment":
  [Observation: Cx."Adherence assessment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.H.DE9 Other follow-up reason (specify)
  @activity: HIV ARegistration
  @description: Client was followed up for another reason (specify)
*/
define "Other follow-up reason (specify)":
  [Observation: Cx."Other follow-up reason (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE1 Emergency referral
  @activity: HIV ARegistration
  @description: Referral for urgent care
*/
define "Emergency referral":
  [Observation: Cx."Emergency referral"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE10 Date of scheduled referral appointment
  @activity: HIV ARegistration
  @description: When the referral is scheduled
*/
define "Date of scheduled referral appointment":
  [Observation: Cx."Date of scheduled referral appointment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE11 Location of scheduled referral appointment
  @activity: HIV ARegistration
  @description: Where the client is being referred to
*/
define "Location of scheduled referral appointment":
  [Observation: Cx."Location of scheduled referral appointment"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE12 Date referral was made
  @activity: HIV ARegistration
  @description: The date the referral was made
*/
define "Date referral was made":
  [Observation: Cx."Date referral was made"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE13 Provider who made referral
  @activity: HIV ARegistration
  @description: The name of the provider who made the referral
*/
define "Provider who made referral":
  [Observation: Cx."Provider who made referral"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE14 Provider's facility
  @activity: HIV ARegistration
  @description: Facility client is being referred from
*/
define "Provider's facility":
  [Observation: Cx."Provider's facility"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE15 Provider's telephone number
  @activity: HIV ARegistration
  @description: The contact details of the provider making the referral
*/
define "Provider's telephone number":
  [Observation: Cx."Provider's telephone number"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE16 Referral notes
  @activity: HIV ARegistration
  @description: Any additional relevant details of clinical significance for the referral facility to provide quality care
*/
define "Referral notes":
  [Observation: Cx."Referral notes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE17 Client history summary
  @activity: HIV ARegistration
  @description: With interoperable systems, the provider receiving the referral should be able to access the client's health record digitally. However, in the absence of this, the referral provider should receive a summary of the client's health records that includes the client's history, medications, medications prescribed or dispensed, reported issues and concerns, and any other relevant clinical information the health care provider had already obtained.
*/
define "Client history summary":
  [Observation: Cx."Client history summary"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE2 Reason for referral
  @activity: HIV ARegistration
  @description: Reason why the client is being referred. If diagnosed, this may include the reason for the diagnosis.
*/
define "Reason for referral":
  [Observation: Cx."Reason for referral Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE8 Referral for other general services (specify)
  @activity: HIV ARegistration
  @description: If none of the reasons above apply, specify the reason(s)
*/
define "Referral for other general services (specify)":
  [Observation: Cx."Referral for other general services (specify)"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.I.DE9 Any treatment given before referral
  @activity: HIV ARegistration
  @description: If client was referred, was any treatment provided before referral?
*/
define "Any treatment given before referral":
  [Observation: Cx."Any treatment given before referral"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE10 Date accessed HIV prevention intervention
  @activity: HIV ARegistration
  @description: Date the client accessed HIV prevention intervention
*/
define "Date accessed HIV prevention intervention":
  [Observation: Cx."Date accessed HIV prevention intervention"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE11 HIV status of contact
  @activity: HIV ARegistration
  @description: The HIV status of the client's contact
*/
define "HIV status of contact":
  [Observation: Cx."HIV status of contact Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE15 Date injecting equipment provided
  @activity: HIV ARegistration
  @description: Date client was provided with injecting equipment
*/
define "Date injecting equipment provided":
  [Observation: Cx."Date injecting equipment provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE16 Number of needles-syringes provided
  @activity: HIV ARegistration
  @description: Number of needles-syringes provided to client
*/
define "Number of needles-syringes provided":
  [Observation: Cx."Number of needles-syringes provided"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE17 Date OAMT initiated
  @activity: HIV ARegistration
  @description: Date client initiated opioid agonist maintenance treatment (OAMT)
*/
define "Date OAMT initiated":
  [Observation: Cx."Date OAMT initiated"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE18 Date OAMT dose received
  @activity: HIV ARegistration
  @description: Date client received opioid agonist maintenance treatment (OAMT) dose
*/
define "Date OAMT dose received":
  [Observation: Cx."Date OAMT dose received"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE19 Date OAMT take-away dose(s) dispensed
  @activity: HIV ARegistration
  @description: Date the client was dispensed opioid agonist maintenance treatment (OAMT) take-away dose(s)
*/
define "Date OAMT take-away dose(s) dispensed":
  [Observation: Cx."Date OAMT take-away dose(s) dispensed"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE2 HIV prevention intervention
  @activity: HIV ARegistration
  @description: HIV prevention intervention that client accessed
*/
define "HIV prevention intervention":
  [Observation: Cx."HIV prevention intervention Codes"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE20 Currently on OAMT
  @activity: HIV ARegistration
  @description: Client is currently on opioid agonist maintenance treatment (OAMT) at reporting date, defined according to country/program to account for medication dispensed and LTFU criterion
*/
define "Currently on OAMT":
  [Observation: Cx."Currently on OAMT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE21 Retained on OAMT
  @activity: HIV ARegistration
  @description: Client is retained on opioid agonist maintenance treatment (OAMT) at reporting date, defined according to country/program to account for medication dispensed and LTFU criterion
*/
define "Retained on OAMT":
  [Observation: Cx."Retained on OAMT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE22 Client being inducted on OAMT
  @activity: HIV ARegistration
  @description: Client is currently being inducted on opioid agonist maintenance treatment (OAMT), defined according to country/program
*/
define "Client being inducted on OAMT":
  [Observation: Cx."Client being inducted on OAMT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE23 Client on reducing doses of OAMT
  @activity: HIV ARegistration
  @description: Client is current on reducing doses of opioid agonist maintenance treatment (OAMT), defined according to country/program
*/
define "Client on reducing doses of OAMT":
  [Observation: Cx."Client on reducing doses of OAMT"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE24 Date first maintenance dose received
  @activity: HIV ARegistration
  @description: First date on which client received maintenance dose
*/
define "Date first maintenance dose received":
  [Observation: Cx."Date first maintenance dose received"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


/*
  @dataElement: HIV.PRV.DE25 Date of loss to follow-up or OAMT stopped
  @activity: HIV ARegistration
  @description: Date of loss to follow-up or opioid agonist maintenance treatment (OAMT) stopped
*/
define "Date of loss to follow-up or OAMT stopped":
  [Observation: Cx."Date of loss to follow-up or OAMT stopped"] O
    where O.status in { 'final', 'amended', 'corrected' }
      and Last(Split(O.encounter.reference, '/')) = Encounter.id


