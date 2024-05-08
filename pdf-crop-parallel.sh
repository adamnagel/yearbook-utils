#!/bin/bash

# Define source and output directories
SOURCEDIR="./PDFS"
OUTDIR="../output"

# Create the output directory if it does not exist
mkdir -p "$OUTDIR"

# Change to the source directory
pushd "$SOURCEDIR"

# Find all files in the source directory and pass them to parallel
# find . -maxdepth 1 -type f | sed 's|./||' | sort | parallel -j 1 pdfcrop --clip --bbox "0 127 1320 1008" {} "$OUTDIR"/{}
find . -maxdepth 1 -type f | sed 's|./||' | sort | parallel -j 1 echo pdfcrop --clip --bbox "0 127 1320 1008" {} $OUTDIR/{}

# find . -maxdepth 1 -type f | sed 's|./||' | sort | parallel --eta echo {}

# Return to the original directory
popd
