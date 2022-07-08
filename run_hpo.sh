#/usr/bin/env bash


# run_hpo_2.sh
# input: hp.owl
# output:hp.json
# copy and edit this file with locations of dependent ontologies
#  src/main/resources/iri_mappings.txt
# put in the classpath


#mvn package

FHIR_OWL_HOME=/Users/chris3/work/git_tims/fhir-owl/
export CLASSPATH="$CLASSPATH:$FHIR_OWL_HOME"
echo "Classpath is: $CLASSPATH"
ls $FHIR_OWL_HOME/iri_mappings.txt

java -jar target/fhir-owl-1.1.0.jar \
    -cp $CLASSPATH \
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

