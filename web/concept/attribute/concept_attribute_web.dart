// web/concept/attribute/concept_attribute_web.dart

import 'dart:html';

import 'package:dartling/dartling.dart';
import 'package:dartling_default_app/dartling_default_app.dart';

import 'package:concept_attribute/concept_attribute.dart';

initConceptData(ConceptRepo conceptRepo) {
   var conceptModels =
       conceptRepo.getDomainModels(ConceptRepo.conceptDomainCode);

   var conceptAttributeEntries =
       conceptModels.getModelEntries(ConceptRepo.conceptAttributeModelCode);
   initConceptAttribute(conceptAttributeEntries);
   //conceptAttributeEntries.display();
   //conceptAttributeEntries.displayJson();
}

showConceptData(ConceptRepo conceptRepo) {
   var mainView = new View(document, "main");
   mainView.repo = conceptRepo;
   new RepoMainSection(mainView);
}

void main() {
  var conceptRepo = new ConceptRepo();
  initConceptData(conceptRepo);
  showConceptData(conceptRepo);
}

