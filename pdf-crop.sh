SOURCEDIR=pdf-crop/tests
OUTDIR=../output

pushd $SOURCEDIR

for file in *
do
	pdfcrop --clip --bbox "0 127 1320 1008" $file $OUTDIR/$file
done

popd
