part of concept_attribute;

// lib/gen/concept/attribute/entries.dart

class AttributeEntries extends ModelEntries {

  AttributeEntries(Model model) : super(model);

  Map<String, Entities> newEntries() {
    var entries = new Map<String, Entities>();
    var concept;
    concept = model.concepts.singleWhereCode("City");
    entries["City"] = new Cities(concept);
    concept = model.concepts.singleWhereCode("FirstName");
    entries["FirstName"] = new FirstNames(concept);
    concept = model.concepts.singleWhereCode("LastName");
    entries["LastName"] = new LastNames(concept);
    concept = model.concepts.singleWhereCode("Email");
    entries["Email"] = new Emails(concept);
    concept = model.concepts.singleWhereCode("About");
    entries["About"] = new Abouts(concept);
    concept = model.concepts.singleWhereCode("Category");
    entries["Category"] = new Categories(concept);
    concept = model.concepts.singleWhereCode("Description");
    entries["Description"] = new Descriptions(concept);
    concept = model.concepts.singleWhereCode("Text");
    entries["Text"] = new Texts(concept);
    return entries;
  }

  Entities newEntities(String conceptCode) {
    var concept = model.concepts.singleWhereCode(conceptCode);
    if (concept == null) {
      throw new ConceptError("${conceptCode} concept does not exist.") ;
    }
    if (concept.code == "City") {
      return new Cities(concept);
    }
    if (concept.code == "FirstName") {
      return new FirstNames(concept);
    }
    if (concept.code == "LastName") {
      return new LastNames(concept);
    }
    if (concept.code == "Email") {
      return new Emails(concept);
    }
    if (concept.code == "About") {
      return new Abouts(concept);
    }
    if (concept.code == "Category") {
      return new Categories(concept);
    }
    if (concept.code == "Description") {
      return new Descriptions(concept);
    }
    if (concept.code == "Text") {
      return new Texts(concept);
    }
  }

  ConceptEntity newEntity(String conceptCode) {
    var concept = model.concepts.singleWhereCode(conceptCode);
    if (concept == null) {
      throw new ConceptError("${conceptCode} concept does not exist.") ;
    }
    if (concept.code == "City") {
      return new City(concept);
    }
    if (concept.code == "FirstName") {
      return new FirstName(concept);
    }
    if (concept.code == "LastName") {
      return new LastName(concept);
    }
    if (concept.code == "Email") {
      return new Email(concept);
    }
    if (concept.code == "About") {
      return new About(concept);
    }
    if (concept.code == "Category") {
      return new Category(concept);
    }
    if (concept.code == "Description") {
      return new Description(concept);
    }
    if (concept.code == "Text") {
      return new Text(concept);
    }
  }

  fromJsonToData() {
    fromJson(conceptAttributeDataJson);
  }

  Cities get cities => getEntry("City");
  FirstNames get firstNames => getEntry("FirstName");
  LastNames get lastNames => getEntry("LastName");
  Emails get emails => getEntry("Email");
  Abouts get abouts => getEntry("About");
  Categories get categories => getEntry("Category");
  Descriptions get descriptions => getEntry("Description");
  Texts get texts => getEntry("Text");

}


