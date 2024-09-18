#!/usr/bin/env bash

# docker run -p 8080:8080 -e hapi.fhir.cr.enabled=true hapiproject/hapi:latest

export HEADER="Content-Type: application/fhir+json"
export FHIR="http://localhost:8080/fhir"

# bash _refresh.sh

# bash _genonce.sh
# java -Xmx4g -jar ./input-cache/publisher.jar publisher -ig .

# add patient examples
curl -X POST -H "$HEADER" --data @input/test-transforms/0a2f4c9b-0963-4ea6-8d8c-da9b461460d1.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/0be33662-350d-460f-bea2-bf2c13219c60.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/0fadb6f7-0236-4653-9dff-bfd324db23ac.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/1bdcd006-97f6-4227-bc3b-92710acceb14.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/1d935eb6-33ca-4a68-8e78-d5a4e0595c03.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/1dcbf52d-3d91-4c1a-ba95-552679910ada.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/1e76e521-a952-45f9-b1f0-f7041125e651.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/1e6442f5-9400-43f8-9b12-ab59239ade4c.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/2a7af35d-8f63-4790-8be8-e03ec475f60f.json $FHIR | jq .
curl -X POST -H "$HEADER" --data @input/test-transforms/2a7af35d-8f63-4790-8be8-e03ec475f60f.json $FHIR | jq .


for FILE in input/test-transforms/*.json ; do curl -X POST -H "$HEADER" --data @${FILE} $FHIR | jq . ; done

pat=$(curl -s http://localhost:8080/fhir/Patient?_total=accurate | jq .total)
printf "Patients: ${pat}\n"

ms=$(curl -s http://localhost:8080/fhir/MedicationStatement?_total=accurate | jq .total)
printf "Medication Statements: ${ms}\n"

con=$(curl -s http://localhost:8080/fhir/Condition?_total=accurate | jq .total)
printf "Conditions: ${con}\n"

