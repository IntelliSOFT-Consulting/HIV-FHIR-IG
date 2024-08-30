#!/usr/bin/env bash

if ! command -v httpyac &> /dev/null
then
    printf "\nhttpyac could not be found, please install: \n\n"
    printf "npm install -g httpyac\n"
    printf "OR\n"
    printf "yarn global add httpyac\n\n"
    exit 1
fi

httpyac --all HIVObservationHIVCondition.http

cp ./transforms/3e990510-1d51-4a25-abd4-3885cf9e8be9.json ../tests/Debug/3e990510-1d51-4a25-abd4-3885cf9e8be9/
cp ./transforms/445beebb-e886-11ea-87c2-00155d017200.json ../tests/Debug/445beebb-e886-11ea-87c2-00155d017200/
cp ./transforms/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e.json ../tests/Debug/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e/

cp ./transforms/3e990510-1d51-4a25-abd4-3885cf9e8be9.json ../tests/HIVIND18Logic/3e990510-1d51-4a25-abd4-3885cf9e8be9/
cp ./transforms/445beebb-e886-11ea-87c2-00155d017200.json ../tests/HIVIND18Logic/445beebb-e886-11ea-87c2-00155d017200/
cp ./transforms/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e.json ../tests/HIVIND18Logic/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e/

cp ./transforms/3e990510-1d51-4a25-abd4-3885cf9e8be9.json ../tests/HIVIND27Logic/3e990510-1d51-4a25-abd4-3885cf9e8be9/
cp ./transforms/445beebb-e886-11ea-87c2-00155d017200.json ../tests/HIVIND27Logic/445beebb-e886-11ea-87c2-00155d017200/
cp ./transforms/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e.json ../tests/HIVIND27Logic/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e/

cp ./transforms/3e990510-1d51-4a25-abd4-3885cf9e8be9.json ../tests/HIVIND28Logic/3e990510-1d51-4a25-abd4-3885cf9e8be9/
cp ./transforms/445beebb-e886-11ea-87c2-00155d017200.json ../tests/HIVIND28Logic/445beebb-e886-11ea-87c2-00155d017200/
cp ./transforms/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e.json ../tests/HIVIND28Logic/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e/

cp ./transforms/3e990510-1d51-4a25-abd4-3885cf9e8be9.json ../tests/HIVIND30Logic/3e990510-1d51-4a25-abd4-3885cf9e8be9/
cp ./transforms/445beebb-e886-11ea-87c2-00155d017200.json ../tests/HIVIND30Logic/445beebb-e886-11ea-87c2-00155d017200/
cp ./transforms/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e.json ../tests/HIVIND30Logic/e70e0b6a-f2a2-4a5a-af3c-dbe08925d01e/
