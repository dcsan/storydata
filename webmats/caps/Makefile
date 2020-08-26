raw := trim4.mp4

input := trim-v2.mp4
output = output.mp4

env:
	@echo "input ${input}"
	@echo "output ${output}"

togif:  env
	ffmpeg -ss 30 -t 3 -i ${input} -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 output.gif

# crop from bottom
crop:
	ffmpeg -i ${input} -filter:v "crop=518:720:0:560" -c:a copy crop.mp4

mute:
	ffmpeg -i crop.mp4 -vcodec copy -an mute.mp4

sped: env
	echo "write to sped.mp4"
	ffmpeg -i mute.mp4 -filter:v "setpts=0.1*PTS" sped.mp4

# before gif
scale:
	ffmpeg -i sped.mp4 -vf scale=240:-1 scale.mp4

# ss = skip forward
# -t time to take
gif: env
	ffmpeg -ss 15 -t 20 -i scale.mp4 -f gif anim.gif


# TODO - remove dither

# gif2:
# 	ffmpeg -i sped10.mp4 -vf palettegen palette.png && \
# 	ffmpeg -i sped10.mp4 -i palette.png -filter_complex “paletteuse=dither=none” sped3.gif

	# ffmpeg -i $1 -i $palette -lavfi "$filters,paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" -y $2
# ffmpeg -i my-video.mp4 -vf palettegen palette.png && ffmpeg -i my-video.mp4 -i palette.png -filter_complex “paletteuse=dither=none” my-gif.gif

