#!/bin/bash

 
files=(
"cl.owl"
"pr.owl" 
"susc.owl" "doid.owl" "upheno.owl" "uberon.owl" "ro.owl"
"obo.owl" "symp.owl" "go.owl" "mpath.owl" "pr.owl"
"hp.owl" "hp.owl" "ro.owl" "chebi.owl" "trans.owl" "hsapdv.owl"
"ncbitaxon.owl" "pato.owl" "nbo.owl" "go.owl")

for f in ${files[@]} ; do
    echo "$f"
    #curl "https://raw.githubusercontent.com/obophenotype/cell-ontology/master/$f" >> owl_files/$f
    #curl http://purl.obolibrary.org/obo/$f > owl_files/$f
    #curl http://purl.oclc.org/obo/$f > owl_files/$f
    curl http://purl.oclc.org/obo/$f.owl > owl_files/$f
done



