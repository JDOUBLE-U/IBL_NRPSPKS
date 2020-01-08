#!/bin/bash

# This script can be used to replace the original identifier by the accession number of the sequence.
# Author: Jan Willem Wijnands / janwillem.wijnands@gmail.com

# Loop through amino acid/nucleotide folder
for f in /Users/janwillem/progenomics/Ha_Lan/protein_translated_streptococcus_clean/*.faa; do
#for f in /Users/janwillem/progenomics/Ha_Lan/cds_streptococcus_unzipped_clean/*.fna; do
	echo "Processing $f file..."
	name_ext=${f%.*}
	
	
	# perl switch to nucleotide/amino acid
	# perl -ne 'if(/>.*?_cds_(\w\w_\d+\.\d+)/){$name = $1;print "\>$name\n";}else{print}' ${name_ext}.fna > ${name_ext}.ffn
	perl -ne 'if(/>.*?_cds_(\w\w_\d+\.\d+)/){$name = $1;print "\>$name\n";}else{print}' ${name_ext}.faa > ${name_ext}.fa

done