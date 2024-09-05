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
