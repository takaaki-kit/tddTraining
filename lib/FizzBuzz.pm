package FizzBuzz;
use strict;
use warnings;

my @temporary_result;

sub fizz_buzz{
    my $class = shift;
    my $number = shift;

    if($number==0){
        return '0';
    }
    if($number%15==0){
        return 'FizzBuzz';
    }
    
    if($number%3==0){
        return 'Fizz';
    }

    if($number%5==0){
        return 'Buzz';
    }
    
    return $number;
}

sub temporary_save(){
    my $class = shift;
    my $number = shift;
    my $result = shift;

    push(@temporary_result,"$number $result");

    return [@temporary_result];
}


1;
