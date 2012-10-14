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
  
  FirstNames firstnames = entries.first_names;
  Concept firstnameConcept = firstnames.concept;
  
  
  FirstName david_firstName = new FirstName(firstnameConcept);
  david_firstName.firstname = 'David';
  firstnames.add(david_firstName);
  
  FirstName Dzenan_firstName = new FirstName(firstnameConcept);
  Dzenan_firstName.firstname = 'Dzenan';
  firstnames.add(Dzenan_firstName);
  
  FirstName Rafik_firstName = new FirstName(firstnameConcept);
  Rafik_firstName.firstname = 'Rafik';
  firstnames.add(Rafik_firstName);
  
  FirstName Timur_firstName = new FirstName(firstnameConcept);
  Timur_firstName.firstname = 'Timur';
  firstnames.add(Timur_firstName);
  

} 
 
