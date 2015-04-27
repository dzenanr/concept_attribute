part of concept_attribute;

// lib/gen/concept/attribute/descriptions.dart

abstract class DescriptionGen extends ConceptEntity<Description> {

  DescriptionGen(Concept concept) {
    this.concept = concept;
  }

  DescriptionGen.withId(Concept concept, String description) {
    this.concept = concept;
    setAttribute("description", description);
  }

  String get description => getAttribute("description");
  set description(String a) => setAttribute("description", a);

  Description newEntity() => new Description(concept);

  int descriptionCompareTo(Description other) {
    return description.compareTo(other.description);
  }

}

abstract class DescriptionsGen extends Entities<Description> {

  DescriptionsGen(Concept concept) {
    this.concept = concept;
  }

  Descriptions newEntities() => new Descriptions(concept);

}
