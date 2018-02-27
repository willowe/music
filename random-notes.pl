#!/usr/bin/perl

use strict;
use warnings;

# a favorite guitar exercise:  try to find every instance of a note on the instrument
#
# ... it's more fun when it's random.

our @notes = ( [ 'A' ],
	       [ 'A#', 'Bb' ],
	       [ 'B' ],
	       [ 'C' ],
	       [ 'C#', 'Db' ],
	       [ 'D' ],
	       [ 'D#', 'Eb' ],
	       [ 'E' ],
	       [ 'F' ],
	       [ 'F#', 'Gb' ],
	       [ 'G' ],
	       [ 'G#', 'Ab' ] );

our @strings = ( 'e', 'a', 'd', 'g', 'b', 'e\'' );

my $string = int(rand(scalar(@strings)));

print "Start at the ", int(rand(1)) == 0 ? "top" : "bottom", " of the ", $strings[$string], " string and go ", int(rand(1)) == 0 ? "up" : "down", ".\n\n";

srand();

print "Find notes in this order:\n\n";

while ( scalar( @notes ) > 0 ) {

    my $key = int(rand(scalar(@notes)));
    
    my @data = @{$notes[$key]};
    my $index = ( scalar(@data) > 0 ? int(rand(scalar(@data))) : 0 );

    print $data[$index], "\n";

    splice( @notes, $key, 1 );
}
	      
		 
