#!/usr/bin/perl
use lib '/root/';
use lib '/root/.cpan/build/Finance-Quote-1.47-0/blib/lib';
# import module
use strict;
use warnings;
use Hypatia;
use Line;
my $hypatia=Hypatia->new({
      back_end=>"Chart::Clicker",
      graph_type=>"Line",
      dbi=>{
              dsn=>"dbi:MySQL:dbname=stock;host=localhost",
              username=>"root",
              password=>"aj.2013#",
              query=>"select price,student_last_name from data;"
  },
columns=>{"x"=>"date","y"=>"daily_revenue"}
});
 
#grabs data from the query and puts it into a Chart::Clicker line graph
my $cc=$hypatia->chart;
 
#Since $cc is a Chart::Clicker object, we can now do whatever we want to it.
 
$cc->title->text("Total Daily Revenue for Widget Sales");
$cc->write_output("daily_revenue.png");

