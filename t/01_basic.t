use Test;
BEGIN { plan tests => 5 }
END { ok(0) unless $loaded }
use XML::GDOME;
$loaded = 1;
ok(1);
use strict;

my $doc = XML::GDOME->createDocument(undef, "TEST", undef);
my $root = $doc->documentElement;

ok($root->tagName, "TEST");
$root->setAttribute("PACKAGE","gdome2");

my $el = $doc->createElement("RELEASE");

my $txtnode = $doc->createTextNode("0.6.x");

$el->appendChild($txtnode);

$root->appendChild($el);

my $output = $doc->toString(GDOME_SAVE_STANDARD);

ok($output, qq{<?xml version="1.0"?>
<TEST PACKAGE="gdome2"><RELEASE>0.6.x</RELEASE></TEST>
});

my $doc2 = XML::GDOME->createDocFromString($output);
my $output2 = $doc2->toString(GDOME_SAVE_STANDARD);
ok($output, $output2);

# test exception handing
eval {
  $doc = XML::GDOME->createDocument("asdf:asdf", "TEST", undef);
};
ok($@ =~ m!GDOME_NAMESPACE_ERR!);
