package XML::GDOME;

# generated automatically from generate.pl

use strict;
use vars qw($VERSION @ISA @EXPORT);

$VERSION = '0.7.0';

require DynaLoader;
require Exporter;
@ISA = qw(DynaLoader Exporter);

bootstrap XML::GDOME $VERSION;

my $di = XML::GDOME::DOMImplementation::mkref();


@EXPORT = qw( GDOME_NOEXCEPTION_ERR GDOME_INDEX_SIZE_ERR GDOME_DOMSTRING_SIZE_ERR GDOME_HIERARCHY_REQUEST_ERR GDOME_WRONG_DOCUMENT_ERR GDOME_INVALID_CHARACTER_ERR GDOME_NO_DATA_ALLOWED_ERR GDOME_NO_MODIFICATION_ALLOWED_ERR GDOME_NOT_FOUND_ERR GDOME_NOT_SUPPORTED_ERR GDOME_INUSE_ATTRIBUTE_ERR GDOME_INVALID_STATE_ERR GDOME_SYNTAX_ERR GDOME_INVALID_MODIFICATION_ERR GDOME_NAMESPACE_ERR GDOME_INVALID_ACCESS_ERR GDOME_NULL_POINTER_ERR GDOME_READONLY_NODE GDOME_READWRITE_NODE GDOME_LOAD_PARSING GDOME_LOAD_VALIDATING GDOME_LOAD_RECOVERING GDOME_LOAD_SUBSTITUTE_ENTITIES GDOME_SAVE_STANDARD GDOME_SAVE_LIBXML_INDENT GDOME_ELEMENT_NODE GDOME_ATTRIBUTE_NODE GDOME_TEXT_NODE GDOME_CDATA_SECTION_NODE GDOME_ENTITY_REFERENCE_NODE GDOME_ENTITY_NODE GDOME_PROCESSING_INSTRUCTION_NODE GDOME_COMMENT_NODE GDOME_DOCUMENT_NODE GDOME_DOCUMENT_TYPE_NODE GDOME_DOCUMENT_FRAGMENT_NODE GDOME_NOTATION_NODE );

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
sub GDOME_READONLY_NODE(){0;}
sub GDOME_READWRITE_NODE(){1;}
sub GDOME_LOAD_PARSING(){0;}
sub GDOME_LOAD_VALIDATING(){1;}
sub GDOME_LOAD_RECOVERING(){2;}
sub GDOME_LOAD_SUBSTITUTE_ENTITIES(){4;}
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

package XML::GDOME::Document;

sub toString {
  my $doc = shift;
  my $mode = shift || 0;
  return $di->saveDocToString($doc,$mode);
}

1;
