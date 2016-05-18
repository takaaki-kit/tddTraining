use strict;
use warnings;

use FileOperations; 

use Test::More;
use Test::Output;

subtest 'saving result for file and show result from file' => sub{
    subtest 'add one result' => sub{
        FileOperations->write(["5 Buzz"]);
        stdout_is {FileOperations->read()} "5 Buzz\n","Test file read";
    };

    subtest 'add two result' => sub{
        FileOperations->write(["5 Buzz","3 Fizz"]);
        stdout_is {FileOperations->read()} "3 Fizz\n","Test file read";
    };
};

done_testing;
