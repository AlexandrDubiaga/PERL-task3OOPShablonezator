#!/usr/bin/perl

use strict;
use Data::Dumper;
use lib('lib');
use utils::File;
use utils::Subtitors;
use utils::Parser;

my $sub = utils::Subtitors->new();
my @txt = $sub->readFile('/usr/home/user2/PERL/task3/file.txt');
my $html = $sub->readFile('/usr/home/user2/PERL/task3/file.html');

my $par = utils::Parser->new();
my $list = $par->replace(@txt);
#print Dumper($list);
my $str = utils::File->new();
my $res = $str->file($html,$list);
print Dumper($res);



