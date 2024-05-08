SOURCEDIR=./PDFs
OUTDIR=../output

# Create the output directory if it does not exist
mkdir -p "$OUTDIR"

pushd $SOURCEDIR

for file in *
do
	pdfcrop --clip --bbox "0 127 1320 1008" $file $OUTDIR/$file
done

popd
