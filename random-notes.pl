#!`/usr/bin/which perl`

use strict;

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

srand();

while ( scalar( @notes ) > 0 ) {

    my $key = int(rand(scalar(@notes)));
    
    my @data = @{$notes[$key]};
    my $index = ( scalar(@data) > 0 ? int(rand(scalar(@data))) : 0 );

    print $data[$index], "\n";

    splice( @notes, $key, 1 );
}
	      
		 
