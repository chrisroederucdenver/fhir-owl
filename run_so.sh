#/usr/bin/env bash

# run_so.sh
# input: so-simple.owl
# output:so-simple.json
 
java -jar target/fhir-owl-1.0.0.jar \
    -i so-simple.owl \
    -o so-simple.json \
    -id so \
    -name "Sequence Ontology" \
    -mainNs "http://purl.obolibrary.org/obo/SO_" \
    -status active \
    -codeReplace "_,:" \
    -s "http://www.geneontology.org/formats/oboInOwl#hasExactSynonym" \
  -labelsToExclude "wiki,WIKI"


