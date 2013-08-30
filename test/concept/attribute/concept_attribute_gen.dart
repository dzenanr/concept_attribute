// test/concept/attribute/concept_attribute_gen.dart

import 'package:dartling/dartling.dart';

import 'package:concept_attribute/concept_attribute.dart';

genCode() {
  var repo = new Repo();
  var conceptDomain = new Domain("Concept");
  Model conceptAttributeModel =
      fromJsonToModel(conceptAttributeModelJson, conceptDomain, "Attribute");
  repo.domains.add(conceptDomain);
  repo.gen("concept_attribute");
}

initConceptData(ConceptRepo conceptRepo) {
   var conceptModels =
       conceptRepo.getDomainModels(ConceptRepo.conceptDomainCode);

   var conceptAttributeEntries =
        conceptModels.getModelEntries(ConceptRepo.conceptAttributeModelCode);
   initConceptAttribute(conceptAttributeEntries);
   //conceptAttributeEntries.display();
   //conceptAttributeEntries.displayJson();
}

void main() {
  genCode();

  var conceptRepo = new ConceptRepo();
  initConceptData(conceptRepo);
}

