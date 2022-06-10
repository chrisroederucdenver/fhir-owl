#/usr/bin/env bash
java -jar target/fhir-owl-1.1.0.jar \
    -i src/test/resources/pizza.owl \
    -o pizza.json \
    -id pizza \
    -name "Pizza Ontology" \
    -mainNs http://www.co-ode.org/ontologies/pizza/pizza \
    -status active \
    -codeReplace "_,:" \
    -s http://www.geneontology.org/formats/oboInOwl#hasExactSynonym \
  -t "pizza   Ontology" \
  -content complete \
  -descriptionProp http://purl.org/dc/elements/1.1/subject \
  -useFhirExtension \
  -dateRegex "(?<year>\\d{4})-(?<month>\\d{2})-(?<day>\\d{2})" 

#    -mainNs http://purl.obolibrary.org/obo/HP_  \
