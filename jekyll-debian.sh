#!/bin/sh

apt-get install ruby ruby-devel

gem update
gem install jekyll
gem install jekyll-archives
gem install rake
gem install redcarpet

## Required even if you don't use JS. Really shouldn't need this.
## https://github.com/jekyll/jekyll/issues/2327
gem install therubyracer