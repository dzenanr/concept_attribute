// lib/gen/concept/attribute/abouts.dart 
 
abstract class AboutGen extends ConceptEntity<About> { 
 
  AboutGen(Concept concept) : super.of(concept); 
 
  AboutGen.withId(Concept concept, String about) : super.of(concept) { 
    setAttribute("about", about); 
  } 
 
  String get about => getAttribute("about"); 
  set about(String a) => setAttribute("about", a); 
  
  About newEntity() => new About(concept); 
  
  int aboutCompareTo(About other) { 
    return about.compareTo(other.about); 
  } 
 
} 
 
abstract class AboutsGen extends Entities<About> { 
 
  AboutsGen(Concept concept) : super.of(concept); 
 
  Abouts newEntities() => new Abouts(concept); 
  
} 
 
