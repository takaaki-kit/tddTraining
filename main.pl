use strict;
use warnings;
use utf8;

use FizzBuzz;

my $state;

do{
    print 'please input a number (0 ~ 4)';
    my $mode = <STDIN>;
    chomp($mode);

    if($mode eq "1"){
        #fizzbuzzを呼び出す
        print"start FizzBuzz Program...\n";
        print'please input a number :';
        my $number = <STDIN>;
        chomp($mode);
        my $result = FizzBuzz->fizz_buzz($number);
        print"$result\n";

        #入力値とその結果を一時的に格納する
        FizzBuzz->temporary_save($number,$result);
        $state =1;
    }elsif($mode eq "2"){
        #fizzbuzzの結果を表示する
        FizzBuzz->temporary_show();
        $state =1;
    }elsif($mode eq "3"){
        #fizzbuzzの結果をファイルに格納する
        #fizzbuzzの
        $state =1;
    }elsif($mode eq "4"){
        #fizzbuzzのファイルの内容を表示する
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
