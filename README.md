# Kenya SMART Guidelines for HIV

This repository contains a prototype adaptation of the WHO SMART Guidelines for HIV for Kenya. It is a work-in-progress.

Four population health indicators for HIV are prototyped for adaptation (PEPFAR/MER name --> WHO name):
* TX_CURR --> IND27: Number of adults and children currently receiving antiretroviral therapy (ART)
* TX_NEW --> IND30:Number of adults and children newly enrolled on antiretroviral therapy (ART)
* TX_ML --> IND28: Number of ART patients (who were on ART at the beginning of the quarterly reporting period or initiated treatment during the reporting period) and then had no clinical contact since their last expected contact	
* HTS_TST --> IND18: Number of individuals who were identified and tested using Index testing services and received their results.


## How to Use this IG

These examples use *nix systems, but Windows users should use .bat files.

* Clone the repository or `git pull` to update an existing clone.
```
git clone https://github.com/IntelliSOFT-Consulting/HIV-FHIR-IG.git
```

* Install or update the CQF refresh tooling
```
bash _updateCQFTooling.sh
```

* Install or update the IG publisher.
```
bash _updatePublisher.sh
```

* Run the refresh tooling to process and populate the CQL, Library and Measure resources.
```
bash _refresh.sh
```

* Run the IG publisher.
```
bash _genonce.sh
```

* Load the IG resources built earlier using the _runload.js file.
```
npm install fhir.js tar-stream
node _runload.js output/package.tgz
```

* Transformations are accomplished with a StructureMap created from FHIR Mapping Language in [input/maps](input/maps). Use `.http` file is included to process the FML into a StructureMap in that folder. Change the matchbox server as necessary. The StructureMap can be made publicly available.

* Production runs of transforms are executed in [input/test-scripts/README.md](input/test-scripts/README.md). Source data is not provided in this public repository. One transformations are completed they are placed in input/test-transforms. 
```
bash _runload.sh
```

* With data loaded, run the measures
```
bash _runmeasures.sh
```





