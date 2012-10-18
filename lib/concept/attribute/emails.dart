// lib/concept/attribute/emails.dart 
 
class Email extends EmailGen { 
 
  Email(Concept concept) : super(concept); 
 
  Email.withId(Concept concept, String emailaddress) : 
    super.withId(concept, emailaddress); 
 
} 
 
class Emails extends EmailsGen { 
 
  Emails(Concept concept) : super(concept); 
 
} 
 
