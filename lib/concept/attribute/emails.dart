part of concept_attribute;

// lib/concept/attribute/emails.dart

class Email extends EmailGen {

  Email(Concept concept) : super(concept);

  Email.withId(Concept concept, String email) :
    super.withId(concept, email);

}

class Emails extends EmailsGen {

  Emails(Concept concept) : super(concept);

}


