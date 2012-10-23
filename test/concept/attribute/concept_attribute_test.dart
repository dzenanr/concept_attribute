// test/concept/attribute/concept_attribute_test.dart

import 'package:unittest/unittest.dart';

import 'package:dartling/dartling.dart';

import 'package:concept_attribute/concept_attribute.dart';

testConceptAttribute(Repo repo, String domainCode, String modelCode) {
  var models;
  var session;
  var entries;
  group("Testing ${domainCode}.${modelCode}", () {
    setUp(() {
      models = repo.getDomainModels(domainCode);
      session = models.newSession();
      entries = models.getModelEntries(modelCode);
      expect(entries, isNotNull);


    });
    tearDown(() {
      entries.clear();
    });
    test("Empty Entries Test", () {
      expect(entries.empty, isTrue);
    });

  });
}

testConceptData(ConceptRepo conceptRepo) {
  testConceptAttribute(conceptRepo, ConceptRepo.conceptDomainCode,
      ConceptRepo.conceptAttributeModelCode);
}

void main() {
  var conceptRepo = new ConceptRepo();
  testConceptData(conceptRepo);
}

