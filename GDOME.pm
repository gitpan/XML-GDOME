package XML::GDOME;

# generated automatically from generate script

use strict;
use vars qw($VERSION @ISA @EXPORT);

$VERSION = '0.76';

require DynaLoader;
require Exporter;
@ISA = qw(DynaLoader Exporter);

bootstrap XML::GDOME $VERSION;

my $di = XML::GDOME::DOMImplementation::mkref();


@EXPORT = qw( GDOME_NOEXCEPTION_ERR GDOME_INDEX_SIZE_ERR GDOME_DOMSTRING_SIZE_ERR GDOME_HIERARCHY_REQUEST_ERR GDOME_WRONG_DOCUMENT_ERR GDOME_INVALID_CHARACTER_ERR GDOME_NO_DATA_ALLOWED_ERR GDOME_NO_MODIFICATION_ALLOWED_ERR GDOME_NOT_FOUND_ERR GDOME_NOT_SUPPORTED_ERR GDOME_INUSE_ATTRIBUTE_ERR GDOME_INVALID_STATE_ERR GDOME_SYNTAX_ERR GDOME_INVALID_MODIFICATION_ERR GDOME_NAMESPACE_ERR GDOME_INVALID_ACCESS_ERR GDOME_NULL_POINTER_ERR GDOME_CORE_EXCEPTION GDOME_EVENT_EXCEPTION GDOME_XPATH_EXCEPTION GDOME_EXCEPTION_TYPE_MASK GDOME_EXCEPTION_CODE_MASK GDOME_READONLY_NODE GDOME_READWRITE_NODE GDOME_LOAD_PARSING GDOME_LOAD_VALIDATING GDOME_LOAD_RECOVERING GDOME_LOAD_SUBSTITUTE_ENTITIES GDOME_LOAD_COMPLETE_ATTRS GDOME_SAVE_STANDARD GDOME_SAVE_LIBXML_INDENT GDOME_ELEMENT_NODE GDOME_ATTRIBUTE_NODE GDOME_TEXT_NODE GDOME_CDATA_SECTION_NODE GDOME_ENTITY_REFERENCE_NODE GDOME_ENTITY_NODE GDOME_PROCESSING_INSTRUCTION_NODE GDOME_COMMENT_NODE GDOME_DOCUMENT_NODE GDOME_DOCUMENT_TYPE_NODE GDOME_DOCUMENT_FRAGMENT_NODE GDOME_NOTATION_NODE GDOME_XPATH_NAMESPACE_NODE GDOME_INVALID_EXPRESSION_ERR GDOME_TYPE_ERR GDOME_ANY_TYPE GDOME_NUMBER_TYPE GDOME_STRING_TYPE GDOME_BOOLEAN_TYPE GDOME_UNORDERED_NODE_ITERATOR_TYPE GDOME_ORDERED_NODE_ITERATOR_TYPE GDOME_UNORDERED_NODE_SNAPSHOT_TYPE GDOME_ORDERED_NODE_SNAPSHOT_TYPE GDOME_ANY_UNORDERED_NODE_TYPE GDOME_FIRST_ORDERED_NODE_TYPE
encodeToUTF8
decodeFromUTF8
);

sub GDOME_NOEXCEPTION_ERR(){0;}
sub GDOME_INDEX_SIZE_ERR(){1;}
sub GDOME_DOMSTRING_SIZE_ERR(){2;}
sub GDOME_HIERARCHY_REQUEST_ERR(){3;}
sub GDOME_WRONG_DOCUMENT_ERR(){4;}
sub GDOME_INVALID_CHARACTER_ERR(){5;}
sub GDOME_NO_DATA_ALLOWED_ERR(){6;}
sub GDOME_NO_MODIFICATION_ALLOWED_ERR(){7;}
sub GDOME_NOT_FOUND_ERR(){8;}
sub GDOME_NOT_SUPPORTED_ERR(){9;}
sub GDOME_INUSE_ATTRIBUTE_ERR(){10;}
sub GDOME_INVALID_STATE_ERR(){11;}
sub GDOME_SYNTAX_ERR(){12;}
sub GDOME_INVALID_MODIFICATION_ERR(){13;}
sub GDOME_NAMESPACE_ERR(){14;}
sub GDOME_INVALID_ACCESS_ERR(){15;}
sub GDOME_NULL_POINTER_ERR(){100;}
sub GDOME_CORE_EXCEPTION(){0;}
sub GDOME_EVENT_EXCEPTION(){1;}
sub GDOME_XPATH_EXCEPTION(){2;}
sub GDOME_EXCEPTION_TYPE_MASK(){0;}
sub GDOME_EXCEPTION_CODE_MASK(){0;}
sub GDOME_READONLY_NODE(){0;}
sub GDOME_READWRITE_NODE(){1;}
sub GDOME_LOAD_PARSING(){0;}
sub GDOME_LOAD_VALIDATING(){1;}
sub GDOME_LOAD_RECOVERING(){2;}
sub GDOME_LOAD_SUBSTITUTE_ENTITIES(){4;}
sub GDOME_LOAD_COMPLETE_ATTRS(){8;}
sub GDOME_SAVE_STANDARD(){0;}
sub GDOME_SAVE_LIBXML_INDENT(){1;}
sub GDOME_ELEMENT_NODE(){1;}
sub GDOME_ATTRIBUTE_NODE(){2;}
sub GDOME_TEXT_NODE(){3;}
sub GDOME_CDATA_SECTION_NODE(){4;}
sub GDOME_ENTITY_REFERENCE_NODE(){5;}
sub GDOME_ENTITY_NODE(){6;}
sub GDOME_PROCESSING_INSTRUCTION_NODE(){7;}
sub GDOME_COMMENT_NODE(){8;}
sub GDOME_DOCUMENT_NODE(){9;}
sub GDOME_DOCUMENT_TYPE_NODE(){10;}
sub GDOME_DOCUMENT_FRAGMENT_NODE(){11;}
sub GDOME_NOTATION_NODE(){12;}
sub GDOME_XPATH_NAMESPACE_NODE(){13;}
sub GDOME_INVALID_EXPRESSION_ERR(){101;}
sub GDOME_TYPE_ERR(){102;}
sub GDOME_ANY_TYPE(){0;}
sub GDOME_NUMBER_TYPE(){1;}
sub GDOME_STRING_TYPE(){2;}
sub GDOME_BOOLEAN_TYPE(){3;}
sub GDOME_UNORDERED_NODE_ITERATOR_TYPE(){4;}
sub GDOME_ORDERED_NODE_ITERATOR_TYPE(){5;}
sub GDOME_UNORDERED_NODE_SNAPSHOT_TYPE(){6;}
sub GDOME_ORDERED_NODE_SNAPSHOT_TYPE(){7;}
sub GDOME_ANY_UNORDERED_NODE_TYPE(){8;}
sub GDOME_FIRST_ORDERED_NODE_TYPE(){9;}

@XML::GDOME::DocumentFragment::ISA      = 'XML::GDOME::Node';
@XML::GDOME::Document::ISA              = 'XML::GDOME::Node';
@XML::GDOME::CharacterData::ISA         = 'XML::GDOME::Node';
@XML::GDOME::Text::ISA                  = 'XML::GDOME::CharacterData';
@XML::GDOME::CDATASection::ISA          = 'XML::GDOME::Text';
@XML::GDOME::Comment::ISA               = 'XML::GDOME::CharacterData';
@XML::GDOME::Attr::ISA                  = 'XML::GDOME::Node';
@XML::GDOME::Element::ISA               = 'XML::GDOME::Node';
@XML::GDOME::DocumentType::ISA          = 'XML::GDOME::Node';
@XML::GDOME::Notation::ISA              = 'XML::GDOME::Node';
@XML::GDOME::Entity::ISA                = 'XML::GDOME::Node';
@XML::GDOME::EntityReference::ISA       = 'XML::GDOME::Node';
@XML::GDOME::ProcessingInstruction::ISA = 'XML::GDOME::Node';
@XML::GDOME::XPath::Namespace::ISA      = 'XML::GDOME::Node';

sub createDocFromString {
  my $class = shift;
  my $str = shift;
  my $mode = shift || 0;
  return $di->createDocFromMemory($str, $mode);
}

sub createDocFromURI {
  my $class = shift;
  my $uri = shift; 
  my $mode = shift || 0;
  return $di->createDocFromURI($uri, $mode);
}

sub createDocument {
  my $class = shift;
  return $di->createDocument(@_);
}

sub createDocumentType {
  my $class = shift;
  return $di->createDocumentType(@_);
}

sub hasFeature {
  my $class = shift;
  return $di->hasFeature(@_);
}

sub new {
  my $class = shift;
  my %options = @_;
  my $self = bless \%options, $class;

  return $self;
}

sub parse_fh {
  my ($self, $fh) = @_;
  local $/ = undef;
  my $str = <$fh>;
  $self->init_parser();
  my $doc = __PACKAGE__->createDocFromString($str);
  if ( $self->{XML_GDOME_EXPAND_XINCLUDE} ) {
    $doc->process_xinclude();
  }
  return $doc;
}

sub parse_string {
  my ($self, $str) = @_;
  $self->init_parser();
  my $doc =__PACKAGE__->createDocFromString($str);
  if ( $self->{XML_GDOME_EXPAND_XINCLUDE} ) {
    $doc->process_xinclude();
  }
  return $doc;
}

sub parse_file {
  my ($self, $uri) = @_;
  $self->init_parser();
  my $doc = __PACKAGE__->createDocFromURI($uri);
  if ( $self->{XML_GDOME_EXPAND_XINCLUDE} ) {
    $doc->process_xinclude();
  }
  return $doc;
}

sub match_callback {
    my $self = shift;
    return $self->{XML_GDOME_MATCH_CB} = shift;
}

sub read_callback {
    my $self = shift;
    return $self->{XML_GDOME_READ_CB} = shift;
}

sub close_callback {
    my $self = shift;
    return $self->{XML_GDOME_CLOSE_CB} = shift;
}

sub open_callback {
    my $self = shift;
    return $self->{XML_GDOME_OPEN_CB} = shift;
}

sub callbacks {
    my $self = shift;
    if (@_) {
        my ($match, $open, $read, $close) = @_;
        @{$self}{qw(XML_GDOME_MATCH_CB XML_GDOME_OPEN_CB XML_GDOME_READ_CB XML_GDOME_CLOSE_CB)} = ($match, $open, $read, $close);
    }
    else {
        return @{$self}{qw(XML_GDOME_MATCH_CB XML_GDOME_OPEN_CB XML_GDOME_READ_CB XML_GDOME_CLOSE_CB)};
    }
}

sub expand_xinclude  {
    my $self = shift;
    $self->{XML_GDOME_EXPAND_XINCLUDE} = shift if scalar @_;
    return $self->{XML_GDOME_EXPAND_XINCLUDE};
}

sub init_parser {
    my $self = shift;
    $self->_match_callback( $self->{XML_GDOME_MATCH_CB} )
      if $self->{XML_GDOME_MATCH_CB};
    $self->_read_callback( $self->{XML_GDOME_READ_CB} )
      if $self->{XML_GDOME_READ_CB};
    $self->_open_callback( $self->{XML_GDOME_OPEN_CB} )
      if $self->{XML_GDOME_OPEN_CB};
    $self->_close_callback( $self->{XML_GDOME_CLOSE_CB} )
      if $self->{XML_GDOME_CLOSE_CB};
}

package XML::GDOME::Document;

sub toString {
  my $doc = shift;
  my $mode = shift || 0;
  return $di->saveDocToString($doc,$mode);
}

package XML::GDOME::Element;

sub attributes {
  getAttributes(@_);
}

sub getAttributes {
  my ($elem) = @_;
  my $nnm = $elem->_attributes;
  if (wantarray) {
    my @attrs;
    for my $i (0 .. $nnm->getLength - 1) {
      push @attrs, $nnm->item("$i");
    }
    return @attrs;
  } else {
    return $nnm;
  }
}

package XML::GDOME::Node;

sub xpath_evaluate {
  my ($contextNode, $expression, $resolver, $type) = @_;
  $XML::GDOME::XPath::xpeval ||= XML::GDOME::XPath::Evaluator::mkref();
  no warnings;
  return $XML::GDOME::XPath::xpeval->evaluate($expression, $contextNode, $resolver, $type, undef);
}

sub findnodes {
  my $res = xpath_evaluate(@_);

  my @nodes;
  while (my $node = $res->iterateNext) {
    push @nodes, $node;
  }
  return @nodes;
}

sub xpath_createNSResolver {
  my ($node) = @_;
  $XML::GDOME::XPath::xpeval ||= XML::GDOME::XPath::Evaluator::mkref();
  return $XML::GDOME::XPath::xpeval->createNSResolver($node);
}

sub appendTextNode {
  appendText(@_);
}

sub appendText {
  my ($node, $xmlString) = @_;
  my $text = $node->getOwnerDocument->createTextNode($xmlString);
  $node->appendChild($text);
  return;
}

sub childNodes {
  getChildNodes(@_);
}

sub getChildNodes {
  my ($elem) = @_;
  my $nl = $elem->_childNodes;
  if (wantarray) {
    my @nodes;
    for my $i (0 .. $nl->getLength - 1) {
      push @nodes, $nl->item("$i");
    }
    return @nodes;
  } else {
    return $nl;
  }
}

1;
