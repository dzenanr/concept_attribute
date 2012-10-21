// lib/gen/concept/attribute/entries.dart

class AttributeEntries extends ModelEntries {

  AttributeEntries(Model model) : super(model);

  Map<String, Entities> newEntries() {
    var entries = new Map<String, Entities>();
    var concept;
    concept = model.concepts.findByCode("City");
    entries["City"] = new Cities(concept);
    concept = model.concepts.findByCode("FirstName");
    entries["FirstName"] = new FirstNames(concept);
    concept = model.concepts.findByCode("LastName");
    entries["LastName"] = new LastNames(concept);
    concept = model.concepts.findByCode("Email");
    entries["Email"] = new Emails(concept);
    concept = model.concepts.findByCode("About");
    entries["About"] = new Abouts(concept);
    return entries;
  }

  Entities newEntities(String conceptCode) {
    var concept = model.concepts.findByCode(conceptCode);
    if (concept == null) {
      throw new ConceptException("${conceptCode} concept does not exist.") ;
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
  }

  ConceptEntity newEntity(String conceptCode) {
    var concept = model.concepts.findByCode(conceptCode);
    if (concept == null) {
      throw new ConceptException("${conceptCode} concept does not exist.") ;
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
  }

  fromJsonToData() {
    fromJson(conceptAttributeDataJson);
  }

  Cities get cities => getEntry("City");
  FirstNames get firstNames => getEntry("FirstName");
  LastNames get lastNames => getEntry("LastName");
  Emails get emails => getEntry("Email");
  Abouts get abouts => getEntry("About");

}
