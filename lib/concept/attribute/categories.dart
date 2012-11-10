part of concept_attribute;

// lib/concept/attribute/categories.dart

class Category extends CategoryGen {

  Category(Concept concept) : super(concept);

  Category.withId(Concept concept, String category) :
    super.withId(concept, category);

}

class Categories extends CategoriesGen {

  Categories(Concept concept) : super(concept);

}
