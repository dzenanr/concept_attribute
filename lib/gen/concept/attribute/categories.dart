part of concept_attribute;

// lib/gen/concept/attribute/categories.dart

abstract class CategoryGen extends ConceptEntity<Category> {

  CategoryGen(Concept concept) : super.of(concept);

  CategoryGen.withId(Concept concept, String category) : super.of(concept) {
    setAttribute("category", category);
  }

  String get category => getAttribute("category");
  set category(String a) => setAttribute("category", a);

  Category newEntity() => new Category(concept);

  int categoryCompareTo(Category other) {
    return category.compareTo(other.category);
  }

}

abstract class CategoriesGen extends Entities<Category> {

  CategoriesGen(Concept concept) : super.of(concept);

  Categories newEntities() => new Categories(concept);

}

