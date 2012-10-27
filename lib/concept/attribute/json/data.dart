part of concept_attribute;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// rename dartling to yourDomainName
// rename Skeleton to YourModelName

// lib/dartling/skeleton/json/data.dart

var conceptAttributeDataJson = r'''
{
   "entries":[
      {
         "concept":"City",
         "entities":[
            {
               "oid":"1351185852457",
               "name":"Toronto",
               "code":null
            },
            {
               "oid":"1351185852462",
               "name":"Québec",
               "code":null
            },
            {
               "oid":"1351185852463",
               "name":"Montréal",
               "code":null
            }
         ]
      },
      {
         "concept":"FirstName",
         "entities":[
            {
               "oid":"1351185852472",
               "firstName":"David",
               "code":null
            },
            {
               "oid":"1351185852473",
               "firstName":"Dzenan",
               "code":null
            },
            {
               "oid":"1351185852475",
               "firstName":"Rafik",
               "code":null
            },
            {
               "oid":"1351185852476",
               "firstName":"Timur",
               "code":null
            }
         ]
      },
      {
         "concept":"LastName",
         "entities":[
            {
               "lastName":"Curtis",
               "oid":"1351185852465",
               "code":null
            },
            {
               "lastName":"Benmoussa",
               "oid":"1351185852467",
               "code":null
            },
            {
               "lastName":"Ridjanovic",
               "oid":"1351185852468",
               "code":null
            },
            {
               "lastName":"Kaba",
               "oid":"1351185852470",
               "code":null
            }
         ]
      },
      {
         "concept":"Email",
         "entities":[
            {
               "email":"david.curtis@hotmail.ca",
               "oid":"1351185852478",
               "code":null
            },
            {
               "email":"rafik.benmoussa@hotmail.ca",
               "oid":"1351185852479",
               "code":null
            },
            {
               "email":"timur.ridjanovic@gmail.ca",
               "oid":"1351185852481",
               "code":null
            },
            {
               "email":"dzenan.ridjanovic@gmail.ca",
               "oid":"1351185852482",
               "code":null
            }
         ]
      },
      {
         "concept":"About",
         "entities":[
            {
               "oid":"1351185852484",
               "about":"Student at UQTR , I love Basket ball! ",
               "code":null
            }
         ]
      }
   ],
   "domain":"Concept",
   "model":"Attribute"
}
''';