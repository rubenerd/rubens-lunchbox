#!/usr/bin/perl -w                                      ## Location of Perl binaries

## My first Perl script
## Thursday, December 09th 2004 9:55am
## Unearthed 2017-09-06

use strict;                                             ## Explicit variable declaration
## system "clear";                                      ## Clears the screen before program begins

helloworld();                                           ## Executes subprogram
message();                                              ## "
yourname();                                             ## "
array();                                                ## "
quotearray();                                           ## "
arrayfunct();                                           ## "
hash();                                                 ## "
substitute();                                           ## "
translate();                                            ## "

print "Goodbye!\n";                                     ## Prints "Goodbye!" & carriage return
exit;                                                   ## Err, duh!

sub helloworld {
        print "Hello World!\n";                         ## Prints "Hello World!" & carriage return
        print "This is Ruben's first Perl Script!\n\n"; ## "
        return 0;                                       ## Not needed in Perl... damned C getting to me!
                                                        ## Will not use in rest of program
}

sub message {
        my $magic = 9;                                  ## Declares new private scalar & sets value
        my $message = "The magic number is $magic.";    ## Assigns string & value of '$magic' to '$message'
        print "$message\n\n";                           ## Prints "The magic number is 9"  & 2 carriage returns
}

sub yourname {
        my $me = "Ruben";                               ## Declares new private scalar & sets value
        print "Hello there! What is your name? ";       ## Prints "Hello there! What is your name?" & carriage return
        my $you = <STDIN>;                              ## Declares new scalar & STanDard INput (when running script from shell)
        chomp($you);                                    ## '$you' contains carriage return (user hit enter) - use chomp to remove
        print "Hello $you. I'm $me.\n\n";               ## Prints "Hello ($you). I'm Ruben" & 2 carriage returns
}

sub array {
        my @numbers = (6,2,9);                          ## Declares new private array & assigns values
        print "The first element in the numbers array"; ## Prints "The first element in the numbers array"
        print " is $numbers[0].\n";                     ## Prints " is & 1st element in '@numbers' array & carriage return)
        foreach my $number (@numbers) {                 ## Loops for each element in '@numbers' array & declares new scalar
                print "$number\n";                      ## Prints the active element
        }
        print "\n";                                     ## Prints carriage return
}

sub quotearray {
        my @colours;                                    ## Declares new private array

        @colours = qw/RED GREEN BLUE /;                 ## Assigns values to '@colours' (/qw wraps each in quotes)
        print "The first element in the colours array"; ## Prints string
        print " is $colours[0].\n";                     ## Prints string + 1st element in '@colours' array (with carriage return)
        foreach my $colour (@colours) {                 ## Loops for each element in '@colours' array & declares new scalar
                print "$colour\n";                      ## Prints active element
        }
}

sub arrayfunct {
        my @states = qw/QLD NSW WA VIC SA/;             ## Declares new private array & assigns values (/qw adds quotes)
        my @sorted;                                     ## "
        my @reverse;                                    ## "
        my $state;                                      ## Declares new private scalar

        print "\nAll the states in Australia: ";        ## Prints "All the states in Australia" & carriage return
        foreach $state (@states) {                      ## Loops for each element in '@states' array
                print "$state ";                        ## Prints active element
        }

        print "\n";                                     ## Print carriage return

        @sorted = sort(@states);                        ## Sorts elements in '@states' array, stores in '@sorted' array
        print "States sorted by name: ";                ## Prints "States sorted by name: "
        foreach $state (@sorted) {                      ## Loops for each element in '@sorted' array
                print "$state ";                        ## Prints active element
        }

        print "\n";                                     ## Print carriage return
        @reverse = reverse(@states);                    ## Reverses elements in '@states' array, stores in '@reverse' array
        print "States in reverse: ";                    ## Prints "States in reverse: "
        foreach $state (@reverse) {                     ## Loops for each element in '@reverse' array
                print "$state ";
        }

        print "\nFirst state in sorted array: ";        ## Prints carriage return & "First state in sorted array: "
        print shift(@sorted);                           ## Prints first element in array (as in: shifts everything...)
        print "\nSecond state in sorted array: ";       ## Prints carriage return & "Second state in sorted array: "
        print pop(@sorted);                             ## Prints last element in array (as in: pops it on the end...)
        print "\n\n";                                   ## Prints carriage return
}

sub hash {
        my @keys;                                       ## Declares new private array
        my @values;                                     ## "
        my %os = ( "Windows 98", "Shocking!",
                   "Windows NT", "Bad",                
		   "Linux 2.x", "Good",
                   "BSD 5.x", "Fantastic!" );           ## Declares new hash & assigns values
        @keys = keys %os;                               ## Assigns key values in '%os' to '@keys'
        @values = values %os;                           ## Assigns value values in '%os' to '@values'
}

sub substitute {
        my $string;                                     ## Declares new private scalar
        $string = "Hello. This year is 1981";           ## Assigns value to scalar
        print "$string\n";                              ## Prints '@string' & 2 carriage returns
        print "Whoops! Replacing year...\n";            ## Prints "Replacing year..."
        $string =~ s/1981/2004/;                        ## Substitutes patterns matching "1981" with "2004" in '$string'
        print "$string\n\n";                            ## Prints '@string' & 2 carriage returns
}

sub translate {
        my $string;                                     ## Declares new private scaler
        $string = "THIS IS A STRING";                   ## Assigns value to scalar
        print "$string\n";                              ## Prints '$string'
        $string =~ tr/[A-Z]/[a-z]/;                     ## Translates patterns matching UPPERCASE to lowercase
        print "$string\n\n";                            ## Prints '$string'
}

