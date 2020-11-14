
set -x
dir='./1000'

# offx=(1000-888)/2
offx=56
echo $offx

# resize to pow2 for making mp4
function resize {
  FILES=./1000/*jpg
  for input in $FILES
  do

    output="${input/1000/wide}"
    echo "$input -> $output"
    ffmpeg -y -i $input -vf  "crop=888:500:56:0" $output

    # take action on each file. $f store current file name
    # cat $f
  done

}

function makeMov() {
	cat wide/*.jpg | ffmpeg -y -framerate 2 -f image2pipe -i - banner.mp4
}

# make a GIF
# https://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality
# Control looping with -loop output option but the values are confusing.
# A value of 0 is infinite looping, -1 is no looping, and 1 will loop once meaning it will play twice.
# So a value of 10 will cause the GIF to play 11 times.

function makeGif() {
	# ffmpeg -i banner.mp4 banner.gif
  # -ss 30 -t 3
  ffmpeg -y -i banner.mp4 -vf "fps=10,scale=888:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 2 banner-888.gif
  ffmpeg -y -i banner.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 2 banner-480.gif
}

resize
makeMov
makeGif

