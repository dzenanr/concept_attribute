part of concept_attribute; 
 
// lib/gen/concept/attribute/texts.dart 
 
abstract class TextGen extends ConceptEntity<Text> { 
 
  TextGen(Concept concept) : super.of(concept); 
 
  TextGen.withId(Concept concept, String text) : super.of(concept) { 
    setAttribute("text", text); 
  } 
 
  String get text => getAttribute("text"); 
  set text(String a) => setAttribute("text", a); 
  
  Text newEntity() => new Text(concept); 
  
  int textCompareTo(Text other) { 
    return text.compareTo(other.text); 
  } 
 
} 
 
abstract class TextsGen extends Entities<Text> { 
 
  TextsGen(Concept concept) : super.of(concept); 
 
  Texts newEntities() => new Texts(concept); 
  
} 
 

