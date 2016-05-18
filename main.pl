use strict;
use warnings;
use utf8;

use FizzBuzz;
use TemporaryOperations;
use FileOperations;

my $state;

do{
    print 'please input a number (0 ~ 4) :';
    my $mode = <STDIN>;
    chomp($mode);

    if($mode eq "1"){#fizzbuzzを呼び出す
        print"start FizzBuzz Program...\n";
        print'please input a number :';
        my $number = <STDIN>;
        chomp($mode);
        
        #fizzbuzzを呼び出す
        my $result = FizzBuzz->fizz_buzz($number);
        print"$result\n";

        chomp($number);
        chomp($result);

        #入力値とその結果を一時的に格納する
        TemporaryOperations->save($number,$result);
        $state =1;
    
    }elsif($mode eq "2"){
        #fizzbuzzの結果を表示する
        TemporaryOperations->show();
        $state =1;
    
    }elsif($mode eq "3"){
        #fizzbuzzの結果をファイルに格納する
        my $result = TemporaryOperations->get_result();
        FileOperations->write($result);
        $state =1;

    }elsif($mode eq "4"){
        #fizzbuzzのファイルの内容を表示する
        FileOperations->read();
        $state =1;
    
    }elsif($mode eq "0"){
        print "stop program";
        #プログラムを終了する
        $state =0;
    
    }else{
        print "input : illegal\n";
        #想定しない入力。プログラムは継続させる
        $state =1;
    }

}while($state)
