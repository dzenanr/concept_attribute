part of concept_attribute;

// lib/concept/attribute/init.dart

initConceptAttribute(var entries) {
  _initCities(entries);
  _initLastNames(entries);
  _initFirstNames(entries);
  _initEmails(entries);
  _initAbouts(entries);
  _initCategories(entries); 
  _initDescriptions(entries); 

}

_initCities(var entries) {

  Cities cities = entries.cities;
  Concept cityConcept = cities.concept;

  City torontoCity = new City(cityConcept);
  torontoCity.name = 'Toronto';
  cities.add(torontoCity);

  City quebecCity = new City(cityConcept);
  quebecCity.name = 'Québec';
  cities.add(quebecCity);

  City montrealCity = new City(cityConcept);
  montrealCity.name = 'Montréal';
  cities.add(montrealCity);

}

_initFirstNames(var entries) {

  FirstNames firstNames = entries.firstNames;
  Concept firstNameConcept = firstNames.concept;

  FirstName davidFirstName = new FirstName(firstNameConcept);
  davidFirstName.firstName = 'David';
  firstNames.add(davidFirstName);

  FirstName dzenanFirstName = new FirstName(firstNameConcept);
  dzenanFirstName.firstName = 'Dzenan';
  firstNames.add(dzenanFirstName);

  FirstName rafikFirstName = new FirstName(firstNameConcept);
  rafikFirstName.firstName = 'Rafik';
  firstNames.add(rafikFirstName);

  FirstName timurFirstName = new FirstName(firstNameConcept);
  timurFirstName.firstName = 'Timur';
  firstNames.add(timurFirstName);

}
_initLastNames(var entries) {
  LastNames lastNames = entries.lastNames;
  Concept lastNameConcept = lastNames.concept;

  LastName davidLastName = new LastName(lastNameConcept);
  davidLastName.lastName = 'Curtis';
  lastNames.add(davidLastName);

  LastName rafikLastName = new LastName(lastNameConcept);
  rafikLastName.lastName = 'Benmoussa';
  lastNames.add(rafikLastName);

  LastName dzenanLastName = new LastName(lastNameConcept);
  dzenanLastName.lastName = 'Ridjanovic';
  lastNames.add(dzenanLastName);

  LastName oumouLastName = new LastName(lastNameConcept);
  oumouLastName.lastName = 'Kaba';
  lastNames.add(oumouLastName);
}

_initEmails(var entries) {
  Emails emails = entries.emails;
  Concept emailConcept = emails.concept;

  Email davidEmail = new Email(emailConcept);
  davidEmail.email = 'david.curtis@hotmail.ca';
  emails.add(davidEmail);

  Email rafikEmail = new Email(emailConcept);
  rafikEmail.email = 'rafik.benmoussa@hotmail.ca';
  emails.add(rafikEmail);

  Email timurEmail = new Email(emailConcept);
  timurEmail.email = 'timur.ridjanovic@gmail.ca';
  emails.add(timurEmail);

  Email dzenanEmail = new Email(emailConcept);
  dzenanEmail.email = 'dzenan.ridjanovic@gmail.ca';
  emails.add(dzenanEmail);

}
_initAbouts(var entries) {
  Abouts abouts = entries.abouts;
  Concept aboutConcept = abouts.concept;

  About davidAbout = new About(aboutConcept);
  davidAbout.about = "Student at UQTR , I love Basket ball! ";
  abouts.add(davidAbout);
}

_initCategories(var entries) { 
  Categories categories = entries.categories;
  Concept categoryConcept = categories.concept;

  Category politicCategory = new Category(categoryConcept);
  politicCategory.category = "Politic";
  categories.add(politicCategory);
  
  Category EconomyCategory = new Category(categoryConcept);
  EconomyCategory.category = "Economy";
  categories.add(EconomyCategory);
  
  Category HistoryCategory = new Category(categoryConcept);
  HistoryCategory.category = "History";
  categories.add(HistoryCategory);
} 
 
_initDescriptions(var entries) { 
  //Descriptions descriptions = entries.descriptions;
  //Concept descriptionConcept = descriptions.concept;
} 
 





