use strict;
use warnings;

use Test::More;

use FizzBuzz;

subtest 'check fizz? buzz? fizzbuzz? or other?' => sub{
    subtest 'a case of 3' => sub{
        my $expect = FizzBuzz->fizz_buzz(3);
        is($expect,'Fizz');
    };

    subtest 'a case of 6' => sub{
        my $expect = FizzBuzz->fizz_buzz(6);
        is($expect,'Fizz');
    };

    subtest 'a case of 5' => sub{
        my $expect = FizzBuzz->fizz_buzz(5);
        is($expect,'Buzz');
    };

    subtest 'a case of 10' => sub{
        my $expect = FizzBuzz->fizz_buzz(10);
        is($expect,'Buzz');
    };

    subtest 'a case of 15' => sub{
        my $expect = FizzBuzz->fizz_buzz(15);
        is($expect,'FizzBuzz');
    };
    subtest 'a case of 30' => sub{
        my $expect = FizzBuzz->fizz_buzz(30);
        is($expect,'FizzBuzz');
    };

    subtest 'a case of 0' => sub{
        my $expect = FizzBuzz->fizz_buzz(0);
        is($expect,'0');
    };

    subtest 'a case of 1' => sub{
        my $expect = FizzBuzz->fizz_buzz(1);
        is($expect,'1');
    };
};


subtest 'save input number & result ' => sub{
   my $expect = FizzBuzz->temporary_save(3,'Fizz');
   is_deeply($expect,['3 Fizz']);
};


done_testing;
