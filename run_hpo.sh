#/usr/bin/env bash

# run_hpo_2.sh
# input: hp.owl
# output:hp.json

java -jar target/fhir-owl-1.1.0.jar \
    -i owl_files/hp.owl \
    -o hp.json \
    -id hpo \
    -name "HumanPhenotypeOntology" \
    -mainNs http://purl.obolibrary.org/obo/HP_  \
    -status active \
    -codeReplace "_,:" \
    -s http://www.geneontology.org/formats/oboInOwl#hasExactSynonym \
  -t "Human Phenotype Ontology" \
  -content complete \
  -descriptionProp http://purl.org/dc/elements/1.1/subject \
  -useFhirExtension \
  -dateRegex "(?<year>\\d{4})-(?<month>\\d{2})-(?<day>\\d{2})" 

