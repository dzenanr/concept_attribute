part of concept_attribute;

// lib/concept/attribute/abouts.dart

class About extends AboutGen {

  About(Concept concept) : super(concept);

  About.withId(Concept concept, String about) :
    super.withId(concept, about);

}

class Abouts extends AboutsGen {

  Abouts(Concept concept) : super(concept);

}
