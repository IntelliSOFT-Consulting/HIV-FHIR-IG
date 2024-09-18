#!/usr/bin/env bash

# docker run -p 8080:8080 -e hapi.fhir.cr.enabled=true hapiproject/hapi:latest

export HEADER="Content-Type: application/fhir+json"
export FHIR="http://localhost:8080/fhir"

MEASURES=(HIVIND18Logic HIVIND27Logic HIVIND28Logic HIVIND29Logic HIVIND30Logic)
MSHORT=(HIVIND18 HIVIND27 HIVIND28 HIVIND29 HIVIND30)
LIBRARIES=(FHIRHelpers FHIRCommon HIVCommon HIVConfig HIVConcepts HIVConceptsCustom HIVElements HIVEncounterElements)

curl --show-error --write-out '%{http_code}' --output /dev/null -s -X PUT -H "$HEADER" --data @Library-FHIR-ModelInfo.json ${FHIR}/Library/FHIR-ModelInfo

# PERSTART=(2021-01-01 2022-01-01)
# PERSTOP=(2021-12-31 2022-12-31)


# bundles/measure/Measure-HIVIND18/Measure-HIVIND18-bundle.json

# for FILE in ${MSHORT[*]}; do echo "bundles/measure/Measure-${FILE}/Measure-${FILE}-bundle.json"; done

for FILE in ${MSHORT[*]}; do curl -sS -d @bundles/measure/Measure-${FILE}/Measure-${FILE}-bundle.json -H "$HEADER" -X POST ${FHIR} | jq .; done

# TEST
# for FILE in ${LIBRARIES[*]} ${MEASURES[*]}; do echo "${FILE}"; done

# libaries
# for FILE in ${LIBRARIES[*]}; do curl -X PUT -H "$HEADER" --data @output/Library-${FILE}.json $FHIR/Library/${FILE} | jq . ; done

# measures
# for FILE in ${MEASURES[*]}; do curl -X PUT -H "$HEADER" --data @output/Measure-${FILE}.json $FHIR/Measure/${FILE} | jq . ; done

# run test measures
for FILE in ${MSHORT[*]}; do curl "${FHIR}/Measure/${FILE}/%24evaluate-measure?periodStart=2023-12-01&periodEnd=2023-12-31" | jq . > measure-results/${FILE}-2023-12.json; done

# printf "\nPeriods evaluated\n"

# for FILE in ${MEASURES[*]}
# do
#     for i in ${PERSTART}
#     do
#         for j in ${PERSTOP}
#         do 
#             echo "${FILE}: $i to $j"
#         done
#     done
# done

# cat measure-results/HIVIND18-2023-12.json | jq -r '.group[] | .stratifier[] | .stratum
# cat measure-results/HIVIND27-2023-12.json | jq -r '.group[] | .stratifier[] | .stratum
# cat measure-results/HIVIND28-2023-12.json | jq -r '.group[] | .stratifier[] | .stratum
# cat measure-results/HIVIND29-2023-12.json | jq -r '.group[] | .stratifier[] | .stratum
# cat measure-results/HIVIND30-2023-12.json | jq -r '.group[] | .stratifier[] | .stratum


# curl $FHIR'/Measure/DASHTXCURR/$evaluate-measure?periodStart=2000-01-01&periodEnd=2021-12-31' | jq . 

# cat measure-results/DASHTXCURR.json | jq '.group[] | .stratifier[] | .stratum'

# cat measure-results/DASHTXCURR.json | jq -r '.group[] | .stratifier[] | .stratum | (. | map(leaf_paths) | unique) as $cols | map (. as $row | ($cols | map(. as $col | $row | getpath($col)))) as $rows | ([($cols | map(. | tostring))] + $rows) | map(@csv) | .[]' > measurereports/DASHTXCURR.csv


