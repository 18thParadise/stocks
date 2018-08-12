#!/usr/bin/perl
use lib '/root/.cpan/build/Finance-Quote-1.47-0/blib/lib';
# import module
use Finance::Quote;

# create object
my $q = Finance::Quote->new('IEX');

# retrieve stock quote
my %data = $q->fetch('iex', 'AAPL');

# print price
print "The current price of AAPL is " . $data{'AAPL', 'price'};
print "\n";
print "Today traded stocks --> $data{'AAPL', 'volume'}\n";
