#!/bin/bash

# __author__=Jan Wilem P.M. Wijnands
# Retrieve information RefSeq Accessions

for FILE in /Users/janwillem/progenomics/JWW_data/cds_from_genomic2019-09-05_unzipped_clean/*.ffn.gz; do
	new_file=${FILE##*/}
	base_name_file=`echo $new_file | sed -e 's/\.ffn.gz$//'`
	n_base_name_file=`echo $base_name_file | sed -e 's/\.[0-9]$//'`	
	printf $n_base_name_file","
	esearch -db assembly -query "${base_name_file}" | efetch -format docsum | xtract -pattern DocumentSummary -element SpeciesName,Sub_value
done