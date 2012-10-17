// lib/concept/attribute/init.dart 
 
initConceptAttribute(var entries) { 
  _initCities(entries);
  _initLastNames(entries); 
  _initFirstNames(entries); 
 
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
  
  FirstNames firstNames = entries.first_names;
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
  LastNames lastNames = entries.last_names;
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
 

 
