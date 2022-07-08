#!/bin/bash

# run_hpo.sh
# input: hp.owl
# output:hp.json


java -jar fhir-owl-v1.1.0.jar \
 -i hp.owl \
-o hp.json \
-id hpo \
-name "HumanPhenotypeOntology" \
-t "Human Phenotype Ontology" \
-content complete \
-mainNs http://purl.obolibrary.org/obo/HP_ \
-descriptionProp http://purl.org/dc/elements/1.1/subject \
-status active \
-codeReplace _,: \
-useFhirExtension -dateRegex "(?<year>\\d{4})-(?<month>\\d{2})-(?<day>\\d{2})" \
-s http://www.geneontology.org/formats/oboInOwl#hasExactSynonym


