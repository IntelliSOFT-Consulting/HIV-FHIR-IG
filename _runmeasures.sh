#!/usr/bin/env bash

# docker run -p 8080:8080 -e hapi.fhir.cr.enabled=true hapiproject/hapi:latest

export HEADER="Content-Type: application/fhir+json"
export FHIR="http://localhost:8080/fhir"

curl -s -X PUT -H "$HEADER" --data @Library-FHIR-ModelInfo.json $FHIR/Library/FHIR-ModelInfo | jq .

MEASURES=(HIVIND18Logic HIVIND27Logic HIVIND28Logic HIVIND29Logic HIVIND30Logic)
LIBRARIES=(FHIRHelpers FHIRCommon HIVCommon HIVConfig HIVConcepts HIVConceptsCustom HIVElements HIVEncounterElements)

PERSTART=(2021-01-01 2022-01-01)
PERSTOP=(2021-12-31 2022-12-31)


# TEST
for FILE in ${LIBRARIES[*]} ${MEASURES[*]}; do echo "${FILE}"; done

# libaries
# for FILE in ${LIBRARIES[*]}; do curl -X PUT -H "$HEADER" --data @output/Library-${FILE}.json $FHIR/Library/${FILE} | jq . ; done

# measures
# for FILE in ${MEASURES[*]}; do curl -X PUT -H "$HEADER" --data @output/Measure-${FILE}.json $FHIR/Measure/${FILE} | jq . ; done

# run measures
# for FILE in ${MEASURES[*]}; do curl $FHIR'/Measure/{FILE}/$evaluate-measure?periodStart=2000-01-01&periodEnd=2021-12-31' | jq . ; done

printf "\nPeriods evaluated\n"

for FILE in ${MEASURES[*]}
do
    for i in ${PERSTART}
    do
        for j in ${PERSTOP}
        do 
            echo "${FILE}: $i to $j"
        done
    done
done



# curl $FHIR'/Measure/DASHTXCURR/$evaluate-measure?periodStart=2000-01-01&periodEnd=2021-12-31' | jq . 

# cat measurereports/DASHTXCURR.json | jq '.group[] | .stratifier[] | .stratum'

# cat measurereports/DASHTXCURR.json | jq -r '.group[] | .stratifier[] | .stratum | (. | map(leaf_paths) | unique) as $cols | map (. as $row | ($cols | map(. as $col | $row | getpath($col)))) as $rows | ([($cols | map(. | tostring))] + $rows) | map(@csv) | .[]' > measurereports/DASHTXCURR.csv


