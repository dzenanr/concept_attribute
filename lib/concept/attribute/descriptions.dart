part of concept_attribute; 
 
// lib/concept/attribute/descriptions.dart 
 
class Description extends DescriptionGen { 
 
  Description(Concept concept) : super(concept); 
 
  Description.withId(Concept concept, String description) : 
    super.withId(concept, description); 
 
} 
 
class Descriptions extends DescriptionsGen { 
 
  Descriptions(Concept concept) : super(concept); 
 
} 
 
