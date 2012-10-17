// lib/gen/concept/attribute/last_names.dart 
 
abstract class LastNameGen extends ConceptEntity<LastName> { 
 
  LastNameGen(Concept concept) : super.of(concept); 
 
  LastNameGen.withId(Concept concept, String lastName) : super.of(concept) { 
    setAttribute("lastName", lastName); 
  } 
 
  String get lastName => getAttribute("lastName"); 
  set lastName(String a) => setAttribute("lastName", a); 
  
  LastName newEntity() => new LastName(concept); 
  
  int lastNameCompareTo(LastName other) { 
    return lastName.compareTo(other.lastName); 
  } 
 
} 
 
abstract class LastNamesGen extends Entities<LastName> { 
 
  LastNamesGen(Concept concept) : super.of(concept); 
 
  LastNames newEntities() => new LastNames(concept); 
  
} 
 
