package Execute;
use strict;
use warnings;
use utf8;

use FizzBuzz;
use TemporaryOperations;
use FileOperations;
use StdOperations;

sub run {
    while(1){
        print"please input a number (0 ~ 4) :";
        my $mode = StdOperations->get_user_input();
        _is_valid_input($mode) ? _exec_each_method($mode) : print "input : illegal\n"; 
    }
}


sub _is_valid_input{
    my $mode = shift;
    return 1 if($mode eq "1" ||$mode eq "2" ||$mode eq "3" ||$mode eq "4" ||$mode eq "0" );
    return 0;
}

sub _exec_each_method{
    my $mode = shift;
    _exec_fizzbuzz_and_save_result_temporarily() if($mode eq "1");
    _exec_show_temporary_result() if($mode eq "2");
    _exec_write_result_for_file() if($mode eq "3");
    _exec_read_result_from_file() if($mode eq "4");
    _exec_stop_program() if($mode eq "0");
}


sub _exec_fizzbuzz_and_save_result_temporarily{
    print"start FizzBuzz Program...\n";
    print'please input a number :';
    my $number = StdOperations->get_user_input();

    my $result = FizzBuzz->fizz_buzz($number);
    print"$result\n";

    chomp($number);
    chomp($result);

    TemporaryOperations->save($number,$result);
}

sub _exec_show_temporary_result{
    TemporaryOperations->show();
}

sub _exec_write_result_for_file(){
    my $result = TemporaryOperations->get_result();
    FileOperations->write($result);
}

sub _exec_read_result_from_file{
    FileOperations->read();
}

sub _exec_stop_program{
    print "stop program";
    exit(0);
}

1;
