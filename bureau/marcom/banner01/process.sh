
set -x


# before using create a folder of 1000

# crop to pow2 for making mp4
# mp4 has to be powers of 2 aspect ratio
# based on the files in 1000 width
# leaves a side padding
# copes from ./1000 to ./wide

# 4:3
# 320:420
# 400:300

# 16:9 -
# 640:360
# 960:540
# 1280:720


function resize {

  sourceDir='./960w'

  # crop based on 1000 width
  imageSize="960:540"

  offsetx=56  # offx=(1000-888)/2
  echo $offx

  FILES="./${sourceDir}/*jpg"
  for input in $FILES
  do
    output="${input/1000/wide}"
    echo "$input -> $output"
    ffmpeg -y -i $input -vf  "crop=${imageSize}" $output
  done

}

# make an mp4 from images
function makeMov() {
  inputDir="input"
	cat ${inputDir}/*.jpg | ffmpeg -y -framerate 2 -f image2pipe -i - banner.mp4
}

# make a GIF
# https://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality
# Control looping with -loop output option but the values are confusing.
# A value of 0 is infinite looping, -1 is no looping, and 1 will loop once meaning it will play twice.
# So a value of 10 will cause the GIF to play 11 times.

function makeGif() {
	# ffmpeg -i banner.mp4 banner.gif
  # -ss 30 -t 3
  ffmpeg -y -i banner.mp4 -vf "fps=10,scale=960:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 2 banner-960.gif
  ffmpeg -y -i banner.mp4 -vf "fps=10,scale=640:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 2 banner-640.gif
  ffmpeg -y -i banner.mp4 -vf "fps=10,scale=480:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 2 banner-480.gif
}

# resize
makeMov
makeGif

