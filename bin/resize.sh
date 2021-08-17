input=$1
width=500
# max height
height=500

basedir="$(dirname $input)"
outdir="${basedir}/${width}"

cp -r $input $outdir

echo "outdir $outdir"

ls -la $outdir

# find ${input} -iname '*.jpg' -o -iname '*.png' \
#   -exec \
#   echo $1
  # convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;


find ${input} \
  \( -name '*.png' -o -name '*.jpg' -o -name '*.jpeg' \) \
  -print0 | xargs -0 -P8 -n2 mogrify -verbose -strip -thumbnail '500>' -format jpg
