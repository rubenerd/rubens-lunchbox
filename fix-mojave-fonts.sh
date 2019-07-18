#!/bin/sh

######
## Fix fonts on macOS Mojave
## The new default font smoothing is awful!

defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
