package FileOperations;
use strict;
use warnings;


sub write(){
    my $class = shift;
    my $data = shift;

    _file_open(">>");
    _write_contents(*FP,$data);
    _file_close();
}

sub read(){
    _file_open("<");
    _print_file_contents(*FP);
    _file_close();
}

sub _file_open{
    my $open_type = shift ;

    open(FP,"$open_type data/result.txt") or die("ERROR:file cannot open at read()");
}

sub _file_close{
    close(FP);
}

sub _print_file_contents{
    local(*FP) = shift;
    
    while(my $line = <FP>){
        chomp($line);
        print "$line\n";
    }
}

sub _write_contents{
    local(*FP) = shift;
    my $data = shift;
    for(my $i=0;$i<scalar(@$data);$i++){
        print FP "$data->[$i]\n";
    }
}

1;
