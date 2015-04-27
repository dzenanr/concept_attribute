part of concept_attribute;

// lib/gen/concept/attribute/emails.dart

abstract class EmailGen extends ConceptEntity<Email> {

  EmailGen(Concept concept) {
    this.concept = concept;
  }

  EmailGen.withId(Concept concept, String email) {
    this.concept = concept;
    setAttribute("email", email);
  }

  String get email => getAttribute("email");
  set email(String a) => setAttribute("email", a);

  Email newEntity() => new Email(concept);

  int emailCompareTo(Email other) {
    return email.compareTo(other.email);
  }

}

abstract class EmailsGen extends Entities<Email> {

  EmailsGen(Concept concept) {
    this.concept = concept;
  }

  Emails newEntities() => new Emails(concept);

}

