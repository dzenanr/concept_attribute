// test/concept/attribute/concept_attribute_gen.dart 
 
#import("dart:json"); 
#import("dart:math"); 
#import("dart:uri"); 
 
#import("package:dartling/dartling.dart"); 
 
#import("package:concept_attribute/concept_attribute.dart"); 
 
genCode() { 
  var repo = new Repo(); 
 
  // change "Dartling" to "YourDomainName" 
  var conceptDomain = new Domain("Concept"); 
 
  // change dartling to yourDomainName 
  // change Skeleton to YourModelName 
  // change "Skeleton" to "YourModelName" 
  Model conceptAttributeModel = 
      fromMagicBoxes(conceptAttributeModelJson, conceptDomain, "Attribute"); 
 
  repo.domains.add(conceptDomain); 
 
  repo.gen(); 
} 
 
initConceptData(ConceptRepo conceptRepo) { 
   var conceptModels = 
       conceptRepo.getDomainModels(ConceptRepo.conceptDomainCode); 
 
   var conceptAttributeEntries = 
       conceptModels.getModelEntries(ConceptRepo.conceptAttributeModelCode); 
   initConceptAttribute(conceptAttributeEntries); 
   conceptAttributeEntries.display(); 
   conceptAttributeEntries.displayJson(); 
} 
 
void main() { 
  //genCode(); 
 
  var conceptRepo = new ConceptRepo(); 
  initConceptData(conceptRepo); 
} 
 
