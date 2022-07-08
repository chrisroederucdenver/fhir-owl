#/usr/bin/env bash

# run_tiny_pizza.sh
# input: tiny_pizza.owl
# output: tiny_pizza_on_fhir.json
 
java -jar target/fhir-owl-1.1.0.jar \
    -i src/test/resources/tiny_pizza.owl \
    -o tiny_pizza_on_fhir.json \
    -id tiny_pizza \
    -name "Tiny Pizza Ontology" \
    -mainNs http://www.co-ode.org/ontologies/pizza/tiny_pizza \
    -status active \
    -codeReplace "_,:" \
    -s http://www.geneontology.org/formats/oboInOwl#hasExactSynonym \
  -t "tiny pizza   Ontology" \
  -content complete \
  -descriptionProp http://purl.org/dc/elements/1.1/subject \
  -useFhirExtension \
  -dateRegex "(?<year>\\d{4})-(?<month>\\d{2})-(?<day>\\d{2})" 

#    -mainNs http://purl.obolibrary.org/obo/HP_  \
