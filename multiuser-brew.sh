#!/bin/sh

## Script to allow multiple user access for Homebrew and Homebrew Casks
##
## Assumes:
## * "brew" group created in System Preferences, with users added
## * homebrew installed with your Administrator account

## Install homebrew as your Administrator (not daily) account
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Elevate ourselves for assigning permissions
sudo -s

## Folder for homebrew-cask (and my dev stuff)
mkdir /opt

## Change group to brew
chgrp -R brew /usr/local
chgrp -R brew /opt
chgrp -R brew /Library/Caches/Homebrew

## Allow writes from brew group
chmod -R g+w /usr/local
chmod -R g+w /opt
chmod -R g+w /Library/Caches/Homebrew