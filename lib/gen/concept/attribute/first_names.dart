// lib/gen/concept/attribute/first_names.dart 
 
abstract class FirstNameGen extends ConceptEntity<FirstName> { 
 
  FirstNameGen(Concept concept) : super.of(concept); 
 
  String get firstName => getAttribute("firstName"); 
  set firstName(String a) => setAttribute("firstName", a); 
  
  FirstName newEntity() => new FirstName(concept); 
  
} 
 
abstract class FirstNamesGen extends Entities<FirstName> { 
 
  FirstNamesGen(Concept concept) : super.of(concept); 
 
  FirstNames newEntities() => new FirstNames(concept); 
  
} 
 
