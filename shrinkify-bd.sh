#!/bin/sh

######
## Quick and dirty FLAC->AAC converter for anime MKVs
## Rubenerd Industries
## 2018-01-26
##
## Dependencies:
## - ffmpeg with libfdk_aac
## - flac
## - mkvtoolsnix
##
## Notes:
## - Assumes only one audio file, I don't do dubs ^^;
## - Each step could likely be done better, but this Just Works™

set -e

## Check episode has been given
if [ $# -ne 1 ]; then
    echo "Usage: ./shrinkify.sh <episode.mkv>"
    exit 1
fi
_EPISODE="$1"

## Get FLAC audio track number
_TRACK=`mkvmerge -i "$_EPISODE" | grep FLAC | tr ':' ' ' | awk '{ print $3 }'`
echo "FLAC found: Track $_TRACK"

## Make temporary folder to store work files
_TEMP=$(mktemp -d)

## Extract audio track
mkvextract "$_EPISODE" tracks -c "A_FLAC" "$_TRACK:/$_TEMP/audio.flac"

## Decompress
flac --decode --output-name="$_TEMP/out.wav"

case `uname` in 
    FreeBSD|NetBSD|Linux )
        ## Encode as m4a (*nix) with CBR
        ## ffmpeg -i "$_TEMP/audio.flac" -b:a 320k "$_TEMP/audio.m4a"

        ## Encode as m4a (*nix) with VBR, best target quality
        ffmpeg -i "$_TEMP/audio.flac" -c:a libfdk_aac -b:a 320k \
            -vbr 5 "$_TEMP/audio.m4a"
        ;;
    Darwin )
        ## Encode as m4a, https://apple.stackexchange.com/questions/46076
        afconvert "$_TEMP/out.wav" "$_TEMP/intermediate.caf" \
            -d 0 -f caff --soundcheck-generate
        afconvert "$_TEMP/intermediate.caf" -d aac -f m4af -u pgcm 2 \
            --soundcheck-read -b 320000 -q 127 -s 2 "audio.m4a"
        ;;
esac

## Mux with episode (without audio) and encoded m4a
mkvmerge -o "$_EPISODE.OUT.mkv"      \
    -A \( "$_EPISODE" \)             \
    --track-name 0:"Japanese Audio"  \
    --language 0:jpn                 \
    "$_TEMP/audio.m4a"

## Clean up
rm -rf "$_TEMP"

echo "Kah... king! Cha... ching! ~ Mashu, Fate/Grand Order"

