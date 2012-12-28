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
  _initTexts(entries);

  _initFromPeople(entries);
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
  politicCategory.category = "Politics";
  categories.add(politicCategory);

  Category EconomyCategory = new Category(categoryConcept);
  EconomyCategory.category = "Economy";
  categories.add(EconomyCategory);

  Category HistoryCategory = new Category(categoryConcept);
  HistoryCategory.category = "History";
  categories.add(HistoryCategory);
}

_initDescriptions(var entries) {
  Descriptions descriptions = entries.descriptions;
  Concept descriptionConcept = descriptions.concept;
}

_initTexts(var entries) {
  Texts texts = entries.texts;
  Concept textConcept = texts.concept;

  Text firstText = new Text(textConcept);
  firstText.text = "My first text.";
  texts.add(firstText);
}

List<Map<String, String>> fromJson(String json) {
  List<Map<String, String>> dataList;
  if (json != null && json.trim() != '') {
    dataList = JSON.parse(json);
  }
  return dataList;
}

_initFromPeople(var entries) {

  Emails emails = entries.emails;
  Concept emailConcept = emails.concept;

  for (var email in fromJson(emailsInJson())) {
    var emailAddress = email['email_address'];
    Email personEmail = new Email(emailConcept);
    personEmail.email = emailAddress;
    emails.add(personEmail);
  }

  print('Number of emails: ${emails.count}');
  //print(emails.errors.display('Errors in emails'));

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

  print('Number of first names: ${firstNames.count}');
  //print(firstNames.errors.display('Errors in first names'));

  print('Number of last names: ${lastNames.count}');
  //print(lastNames.errors.display('Errors in last names'));

  ////////////////////////////////////////////////////////////////
  // Cities
    Cities cities = entries.cities;
    Concept cityConcept = cities.concept;

  for (var city in fromJson(citiesInJson())) {
    var cityName = city['city'];
    City personCity = new City(cityConcept);
    personCity.name = cityName;
    cities.add(personCity);
  }
  
  print('Number of Cities: ${cities.count}');
  
  //Text
    Texts texts = entries.texts;
    Concept textConcept = texts.concept;
  
  for (var text in fromJson(textInJson())) {
    var textName = text['text'];
    Text personText = new Text(textConcept);
    personText.text = textName;
    texts.add(personText);
  }
  
  print('Number of Texts: ${texts.count}');
  
  //Categories
    Categories categories = entries.categories;
    Concept categoryConcept = categories.concept;
    
  for (var category in fromJson(categoryInJson())) {
    var categoryName = category['category'];
    Category personCategory = new Category(categoryConcept);
    personCategory.category = categoryName;
    categories.add(personCategory);
  }
  
  print('Number of Categories: ${categories.count}');

}  
  
List ListEmail()
{

  List<Map<String, String>> fromJson(String json) {
    List<Map<String, String>> dataList;
    if (json != null && json.trim() != '') {
      dataList = JSON.parse(json);
    }
    return dataList;
  }
  List<String> emails = new List<String>();

  for (var email in fromJson(emailsInJson())) {
    var emailAddress = email['email_address'];
    emails.add(emailAddress.toString());
  }
  return emails;

}

List ListFristName()
{
  List<Map<String, String>> fromJson(String json) {
    List<Map<String, String>> dataList;
    if (json != null && json.trim() != '') {
      dataList = JSON.parse(json);
    }
    return dataList;
  }
  List<String> firstnames = new List<String>();

  for (var firtName in fromJson(peopleInJson())) {
    var firstname = firtName['first_name'];
    firstnames.add(firstname.toString());
  }
  return firstnames;
  }

List ListLastName()
{
  List<Map<String, String>> fromJson(String json) {
    List<Map<String, String>> dataList;
    if (json != null && json.trim() != '') {
      dataList = JSON.parse(json);
    }
    return dataList;
  }
  List<String> lastnames = new List<String>();

  for (var lastName in fromJson(peopleInJson())) {
    var lasrname = lastName['first_name'];
    lastnames.add(lasrname.toString());
  }
  return lastnames;
  }

List ListCity()
{
  List<Map<String, String>> fromJson(String json) {
    List<Map<String, String>> dataList;
    if (json != null && json.trim() != '') {
      dataList = JSON.parse(json);
    }
    return dataList;
  }
  List<String> cities = new List<String>();

  for (var city in fromJson(citiesInJson())) {
    var citie = city['city'];
    cities.add(citie.toString());
  }
  return cities;
}

List ListTextes()
{
  List<Map<String, String>> fromJson(String json) {
    List<Map<String, String>> dataList;
    if (json != null && json.trim() != '') {
      dataList = JSON.parse(json);
    }
    return dataList;
  }
  List<String> textes = new List<String>();

  for (var city in fromJson(textInJson())) {
    var text = city['text'];
    textes.add(text.toString());
  }
  return textes;
}

List ListCategories()
{
  List<Map<String, String>> fromJson(String json) {
    List<Map<String, String>> dataList;
    if (json != null && json.trim() != '') {
      dataList = JSON.parse(json);
    }
    return dataList;
  }
  List<String> categories = new List<String>();

  for (var category in fromJson(categoryInJson())) {
    var categorie = category['category'];
    categories.add(categorie.toString());
  }
  return categories;
}






