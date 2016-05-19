package FizzBuzz;
use strict;
use warnings;


sub fizz_buzz{
    my $class = shift;
    my $number = shift;

    unless(_is_multiple_of_all($number)){
        return 'FizzBuzz' if _is_multiple_of_fifteen($number);
        return 'Fizz' if _is_multiple_of_three($number);
        return 'Buzz' if _is_multiple_of_five($number);
    }
    return $number;
}

sub _is_multiple_of_three {
    my $number = shift;

    return 1 if($number%3==0);
    return 0;
}

sub _is_multiple_of_fifteen {
    my $number = shift;

    return 1 if($number%15==0);
    return 0;
}

sub _is_multiple_of_five {
    my $number = shift;

    return 1 if($number%5==0);
    return 0;
}

sub _is_multiple_of_all {
    my $number = shift;

    return 1 if($number==0);
    return 0;
}


1;
