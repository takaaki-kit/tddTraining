package TemporaryOperations;
use strict;
use warnings;

my @temporary_result;

sub save(){
    my $class = shift;
    my $number = shift;
    my $result = shift;
    
    push(@temporary_result,"$number $result");
}

sub show(){
    foreach my $element(@temporary_result){
        print "$element\n";
    }
}

sub get_result(){
    return \@temporary_result;
}

1;
