use strict;
use warnings;

use Test::More;
use Test::Output;

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
    subtest 'a case of exec 1 time' => sub{
        FizzBuzz->temporary_save(3,'Fizz');
        stdout_is {FizzBuzz->temporary_show()} "3 Fizz\n","Test a case of exec 1 time";
    };

    subtest 'a case of exec 2 time' => sub{
        FizzBuzz->temporary_save(5,'Buzz');
        stdout_is {FizzBuzz->temporary_show()} "3 Fizz\n5 Buzz\n","Test a case of exec 2 times"
    };
    
    subtest 'a case of exec 3 time' => sub{
        FizzBuzz->temporary_save(15,'FizzBuzz');
        stdout_is {FizzBuzz->temporary_show()} "3 Fizz\n5 Buzz\n15 FizzBuzz\n","Test a case of exec 3 times"
    };
};


done_testing;
