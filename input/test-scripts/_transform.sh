#!/usr/bin/env bash



export FHIR="https://smarthapi.intellisoftkenya.com/matchbox/fhir"


curl --request POST --url "${FHIR}/StructureMap/$transform?source=https://path-global-health.github.io/MERindicators/StructureMap/HIVObservationHIVCondition" --header 'accept: application/fhir+json;fhirVersion=4.0' --header 'content-type: application/fhir+json;fhirVersion=4.0' --data-binary @../test-data/0a2f4c9b-0963-4ea6-8d8c-da9b461460d1/0a2f4c9b-0963-4ea6-8d8c-da9b461460d1.json



# export HEADER="Content-Type: application/fhir+json"
# export output="../../output"
# export OUTPUT="@../../output"
# export SCRIPTS="../test/scripts"

# curl -X PUT -H "$HEADER" --data @Library-FHIR-ModelInfo.json $FHIR/Library/FHIR-ModelInfo | jq .



# # Use the find command to locate all files in the specified directory and its subdirectories
# find "../test-data" -type f -print0 | while read -r -d '' file; do
#     # Process each file here
#     echo "Processing file: $file"
#     curl -q 
# done





# curl --request POST --url '${FHIR}/StructureMap/' --header 'accept: application/fhir+json;fhirVersion=4.0' --header 'content-type: application/fhir+json;fhirVersion=4.0' --data '../test_data/3e990510-1d51-4a25-abd4-3885cf9e8be9.json'



# curl --request POST --url '${FHIR}/StructureMap/$transform?source=https://path-global-health.github.io/MERindicators/StructureMap/HIVObservationHIVCondition' --header 'accept: application/fhir+json;fhirVersion=4.0' --header 'content-type: application/fhir+json;fhirVersion=4.0' --data '../test_data/445beebb-e886-11ea-87c2-00155d017200.json'


# for FILE in output/Location*.json ; \
# do theid=$(cat ${FILE} | jq -r .id) ; printf "${FILE}" ; printf "${theid}"
# curl -X PUT -H "$HEADER" --data @${FILE} $FHIR/Location/${theid} | jq . ; done






# PUT {{host}}/StructureMap/Debug HTTP/1.1
# Content-Type: text/fhir-mapping
# Accept: application/fhir+json

# < ./Debug.map


# ### Debug Do Transform
# POST {{host}}/StructureMap/$transform?source=https://path-global-health.github.io/MERindicators/StructureMap/Debug
# Accept: application/fhir+json;fhirVersion=4.0
# Content-Type: application/fhir+json;fhirVersion=4.0
 
# < ./test-data1.json
