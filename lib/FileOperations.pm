package FileOperations;
use strict;
use warnings;

sub write(){
    my $class = shift;
    my $data = shift;
    open(FP,">> data/result.txt") or die("ERROR:file cannot open at write()");
    for(my $i=0;$i<scalar(@$data);$i++){
        print FP "$data->[$i]\n";
    }
    close(FP);
}

sub read(){
    open(FP,"< data/result.txt") or die("ERROR:file cannot open at read()");
    while(my $line = <FP>){
        chomp($line);
        print "$line\n";
    }
    close(FP);
}

1;
