part of concept_attribute;

// lib/gen/concept/attribute/last_names.dart

abstract class LastNameGen extends ConceptEntity<LastName> {

  LastNameGen(Concept concept) {
    this.concept = concept;
  }

  LastNameGen.withId(Concept concept, String lastName) {
    this.concept = concept;
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

  LastNamesGen(Concept concept) {
    this.concept = concept;
  }

  LastNames newEntities() => new LastNames(concept);

}

