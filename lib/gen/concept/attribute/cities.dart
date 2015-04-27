part of concept_attribute;

// lib/gen/concept/attribute/cities.dart

abstract class CityGen extends ConceptEntity<City> {

  CityGen(Concept concept) {
    this.concept = concept;
  }

  CityGen.withId(Concept concept, String name) {
    this.concept = concept;
    setAttribute("name", name);
  }

  String get name => getAttribute("name");
  set name(String a) => setAttribute("name", a);

  City newEntity() => new City(concept);

  int nameCompareTo(City other) {
    return name.compareTo(other.name);
  }

}

abstract class CitiesGen extends Entities<City> {

  CitiesGen(Concept concept) {
    this.concept = concept;
  }

  Cities newEntities() => new Cities(concept);

}

