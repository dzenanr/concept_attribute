// lib/concept/attribute/init.dart 
 
initConceptAttribute(var entries) { 
  _initCities(entries); 
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
 
