use Test;
BEGIN { plan tests => 8 }
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

# test we throw an error on parsing erroneous stuff
# Unknown entity
eval { 
  $doc = XML::GDOME->createDocFromString(qq{<a>foo&bar;</a>},
	                                 GDOME_LOAD_VALIDATING);
};
ok($@ =~ m!Entity 'bar' not defined!);

# Unbalanced code
eval { 
  $doc = XML::GDOME->createDocFromString(qq{<a><bar></a>});
};
ok($@ =~ m!Opening and ending tag mismatch: bar and a!);

# And from a file...
eval { 
  $doc = XML::GDOME->createDocFromURI("t/examplemjo.xml",
	                               GDOME_LOAD_VALIDATING);
};
ok($@ =~ m!Entity 'bar' not defined!);
