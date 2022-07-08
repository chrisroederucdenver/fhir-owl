#!/bin/bash

 
files=(
"cl.owl"
"susc.owl" "doid.owl" "upheno.owl" "uberon.owl" "ro.owl"
"obo.owl" "symp.owl" "go.owl" "mpath.owl" "pr.owl"
"ro.owl" "chebi.owl" "trans.owl" "hsapdv.owl"
"ncbitaxon.owl" "pato.owl" "nbo.owl" "go.owl")


mkdir download_logs 2> /dev/null
rm -f download_logs/*
mkdir owl_files 2> /dev/null
rm -f owl_files/*

for f in ${files[@]} ; do
    echo "$f"
    base=`basename $f`
    wget http://purl.oclc.org/obo/$f -o download_logs/${base}.log -O owl_files/$f
done


#"hp.owl"
wget https://raw.githubusercontent.com/obophenotype/human-phenotype-ontology/master/hp.owl\
 -o download_logs/hp.log -O owl_files/hp.owl

#"pr.owl" 
wget http://purl.obolibrary.org/obo/pr.owl\
 -o download_logs/pr.log -O owl_files/pr.owl

