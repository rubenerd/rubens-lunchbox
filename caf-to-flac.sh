#!/bin/sh

_target="$1"
avconv -i "$_target" "$_target.wav"
flac --verify --best --delete-input-file "$_target.wav"
touch -r "$_target" "$_target.flac"
rm "$_target"