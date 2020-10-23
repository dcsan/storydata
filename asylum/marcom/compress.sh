#!/usr/bin/env bash

ffmpeg -i $1.mp4 -filter:v fps=fps=5 $1-low.mp4

