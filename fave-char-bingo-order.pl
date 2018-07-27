#!/usr/bin/env perl

######
## Script to shuffle order of characters for my Favourite Charater Bingo board
## 2018 Rubenerd Industries

use strict;
use warnings;
use List::Util qw/shuffle/;

my @list = qw/mio hitagi rei yuki switch lunamaria ami hajime arararararagi 
shielder handa onodera kallen rin minorin chitanda makise mugi 
princess tooooooooosaka ralts kamina asa/;

foreach my $char (shuffle @list) {
    print ucfirst("$char\n");
}

