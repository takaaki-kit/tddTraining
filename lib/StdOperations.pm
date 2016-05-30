package StdOperations;
use strict;
use warnings;

sub get_user_input{
    my $input = <STDIN>;
    chomp($input);
    return $input;
}


1;
