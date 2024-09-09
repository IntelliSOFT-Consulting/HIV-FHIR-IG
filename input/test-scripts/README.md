## Production tests (WIP)

The mapping used for these transforms is /input/maps/HIVObservationHIVCondition.map

## Set-up for testing

* Do a `git pull` on this repository to update. Stay on the `main` branch.
* Create folders under /input called `test-data` and `test-transforms`.
* Grab the latest zip of test files. These files are not in the repository. Please ask PATH, IntelliSOFT, or Palladium Kenya for the password. Unzip the contents and put the JSON files under test-data.
* `cd` into the input/test-scripts folder. 
* Open VSCode. It is suggested to use the httpyac extension (https://marketplace.visualstudio.com/items?itemName=anweber.vscode-httpyac) as it can process .http files correctly and put the response in the test-transforms folder. 
* [httpyac](https://httpyac.github.io/guide/installation_cli.html) is required for the scripts.

The StructureMap is already loaded on the matchbox server. It can be updated by running the line in the http file in the /input/maps directory manually.

To run the production transformation tests on the large dataset:
```sh
bash production.sh
```
The script only transforms the test-data and puts transforms into test-transforms. They are transaction bundles that can then be put on HAPI FHIR JPA Server for CQL processing. For now, the script does not save data on servers.

## Existing issues
* The source field (entry.fullurl) of the Provenance resource is not useful. There should be a source server (full url) to reference back to the original system for troubleshooting.
* Several codes are not used in the transforms. Further clarification is needed on how to transform these:
  * 5240: "Lost to followup"
  * 5096: "RETURN VISIT DATE"
  * 159492: "Transferred out"
  * 161555: "Reason for discontinuation of program"
  * 164384: "Treatment end date"


## Annotated code


For observations of that patient look for art program enrollment: "Method of enrollment", create a condition resource
```
resource.code.exists(coding.exists(system='https://cielterminology.org' and code='160540')) 
obsentry -> cond.code = cc("http://smart.who.int/hiv/CodeSystem/HIVConcepts", "HIV.B.DE116", "HIV-positive") "setCode";
```

For observations of that patient look for return visit date: "RETURN VISIT DATE", create a medication request resource in output with uuid
```
resource.code.exists(coding.exists(system='https://cielterminology.org' and code='5096')) 
obsentry -> ms.reasonCode = cc("http://smart.who.int/hiv/CodeSystem/HIVConcepts", "HIV.H.DE47", "On ART") "setMSReasonCode";            
// with
obsentry -> coding.code = '160119', 
            coding.display = "CURRENTLY TAKING ARV", 
            coding.system = 'https://cielterminology.org' "setMSCoding";
```

Create observation resource with the hiv test codes: "Result of HIV test". This will have to be one for HIV positive and one for negative
```
and resource.code.exists(coding.exists(system='https://cielterminology.org' and code='159427')) 
// then
obs.value : CodeableConcept as value where coding.exists(system='https://cielterminology.org' and code='664') 
-> observe.value = create("CodeableConcept") as val then {
  value -> val.coding as coding then {
    value -> coding.system = "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
      coding.code = "HIV.B.DE117",
      coding.display = "HIV-negative" "setNegativeCC";

obs.value : CodeableConcept as value where coding.exists(system='https://cielterminology.org' and code='138571') 
-> observe.value = create("CodeableConcept") as val then {
  value -> val.coding as coding then {
    value -> coding.system = "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
      coding.code = "HIV.B.DE116",
      coding.display = "HIV-positive" "setPositiveCC";

obs.value : CodeableConcept as value where coding.exists(system='https://cielterminology.org' and code='703') 
-> observe.value = create("CodeableConcept") as val then {
  value -> val.coding as coding then {
    value -> coding.system = "http://smart.who.int/hiv/CodeSystem/HIVConcepts",
      coding.code = "HIV.B.DE116",
      coding.display = "HIV-positive" "setPositiveCC";
```
