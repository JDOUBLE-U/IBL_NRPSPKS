#!/bin/bash

# This script can be used to translate the nucleotide to the amino acid sequence.
# In corresponding frame.
# Author: Jan Willem Wijnands / janwillem.wijnands@gmail.com

# Loop through the coding sequences folder.
for FILE in /Users/janwillem/progenomics/cds_from_genomic2019-09-05/*.fna; do

	name=${FILE%.*}
	# -F ; First frame of the six frame was used
	fastatranslate -F 1 ${name}.fna > ${name}.faa

done