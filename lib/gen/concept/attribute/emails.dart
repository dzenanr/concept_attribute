// lib/gen/concept/attribute/emails.dart 
 
abstract class EmailGen extends ConceptEntity<Email> { 
 
  EmailGen(Concept concept) : super.of(concept); 
 
  EmailGen.withId(Concept concept, String emailaddress) : super.of(concept) { 
    setAttribute("emailaddress", emailaddress); 
  } 
 
  String get emailaddress => getAttribute("emailaddress"); 
  set emailaddress(String a) => setAttribute("emailaddress", a); 
  
  Email newEntity() => new Email(concept); 
  
  int emailaddressCompareTo(Email other) { 
    return emailaddress.compareTo(other.emailaddress); 
  } 
 
} 
 
abstract class EmailsGen extends Entities<Email> { 
 
  EmailsGen(Concept concept) : super.of(concept); 
 
  Emails newEntities() => new Emails(concept); 
  
} 
 
