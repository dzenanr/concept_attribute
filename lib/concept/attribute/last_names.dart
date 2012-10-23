part of concept_attribute;

// lib/concept/attribute/last_names.dart

class LastName extends LastNameGen {

  LastName(Concept concept) : super(concept);

  LastName.withId(Concept concept, String lastName) :
    super.withId(concept, lastName);

}

class LastNames extends LastNamesGen {

  LastNames(Concept concept) : super(concept);

}

