use strict;
use warnings;
use Test::More;
use Test::Output;

use TemporaryOperations;

subtest 'save input number & result ' => sub{
    subtest 'a case of exec 1 time' => sub{
        TemporaryOperations->save(3,'Fizz');
        stdout_is {TemporaryOperations->show()} "3 Fizz\n","Test a case of exec 1 time";
    };

    subtest 'a case of exec 2 time' => sub{
        TemporaryOperations->save(5,'Buzz');
        stdout_is {TemporaryOperations->show()} "3 Fizz\n5 Buzz\n","Test a case of exec 2 times"
    };
    
    subtest 'a case of exec 3 time' => sub{
        TemporaryOperations->save(15,'TemporaryOperations');
        stdout_is {TemporaryOperations->show()} "3 Fizz\n5 Buzz\n15 TemporaryOperations\n","Test a case of exec 3 times"
    };
};

done_testing;
