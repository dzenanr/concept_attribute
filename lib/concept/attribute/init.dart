part of concept_attribute;

// lib/concept/attribute/init.dart

initConceptAttribute(var entries) {
  _initAbouts(entries);
  _initDescriptions(entries);

  _initFromCategoriesInJson(entries);
  _initFromCitiesInJson(entries);
  _initFromEmailsInJson(entries);
  _initFromPeopleInJson(entries);
  _initFromTextsInJson(entries);
}

_initAbouts(entries) {
  Abouts abouts = entries.abouts;
  Concept aboutConcept = abouts.concept;

  About davidAbout = new About(aboutConcept);
  davidAbout.about = "Student at UQTR. I love basketball! ";
  abouts.add(davidAbout);
}

_initDescriptions(entries) {

}

_initFromCategoriesInJson(entries) {
  Categories categories = entries.categories;
  Concept categoryConcept = categories.concept;

  for (var category in fromJson(categoriesInJson())) {
    var categoryName = category['category'];
    Category personCategory = new Category(categoryConcept);
    personCategory.category = categoryName;
    categories.add(personCategory);
  }

  print('Number of categories: ${categories.length} ');
}

_initFromCitiesInJson(entries) {
  Cities cities = entries.cities;
  Concept cityConcept = cities.concept;

  for (var city in fromJson(citiesInJson())) {
    var cityName = city['city'];
    City personCity = new City(cityConcept);
    personCity.name = cityName;
    cities.add(personCity);
  }

  print('Number of cities: ${cities.length}');
}

_initFromEmailsInJson(entries) {
  Emails emails = entries.emails;
  Concept emailConcept = emails.concept;

  for (var email in fromJson(emailsInJson())) {
    var emailAddress = email['email_address'];
    Email personEmail = new Email(emailConcept);
    personEmail.email = emailAddress;
    emails.add(personEmail);
  }

  print('Number of emails: ${emails.length}');
  //print(emails.errors.display('Errors in emails'));
}

_initFromPeopleInJson(var entries) {
  FirstNames firstNames = entries.firstNames;
  Concept firstNameConcept = firstNames.concept;

  LastNames lastNames = entries.lastNames;
  Concept lastNameConcept = lastNames.concept;

  for (var person in fromJson(peopleInJson())) {
    var firstName = person['first_name'];
    FirstName personFirstName = new FirstName(firstNameConcept);
    personFirstName.firstName = firstName;
    firstNames.add(personFirstName);

    var lastName = person['last_name'];
    LastName personLastName = new LastName(lastNameConcept);
    personLastName.lastName = lastName;
    lastNames.add(personLastName);
  }

  print('Number of first names: ${firstNames.length}');
  //print(firstNames.errors.display('Errors in first names'));

  print('Number of last names: ${lastNames.length}');
  //print(lastNames.errors.display('Errors in last names'));
}

_initFromTextsInJson(entries) {
  Texts texts = entries.texts;
  Concept textConcept = texts.concept;

  for (var text in fromJson(textsInJson())) {
    var textName = text['text'];
    Text personText = new Text(textConcept);
    personText.text = textName;
    texts.add(personText);
  }

  print('Number of texts: ${texts.length}');
}

List<Map<String, String>> fromJson(String json) {
  List<Map<String, String>> dataList;
  if (json != null && json.trim() != '') {
    dataList = JSON.decode(json);
  }
  return dataList;
}









