
// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// rename dartling to yourDomainName
// rename Skeleton to YourModelName
// do not change model or Model

// lib/dartling/skeleton/json/model.dart

var conceptAttributeModelJson = r'''
{
   "width":990,
   "lines":[

   ],
   "height":580,
   "boxes":[
      {
         "name":"City",
         "x":49,
         "height":80,
         "y":94,
         "entry":true,
         "width":80,
         "items":[
            {
               "sequence":10,
               "name":"name",
               "category":"identifier",
               "type":"String",
               "init":""
            }
         ]
      },
      {
         "name":"FirstName",
         "x":190,
         "height":80,
         "y":95,
         "entry":true,
         "width":80,
         "items":[
            {
               "sequence":10,
               "name":"firstName",
               "category":"identifier",
               "type":"String",
               "init":""
            }
         ]
      },
      {
         "name":"LastName",
         "x":318,
         "height":80,
         "y":92,
         "entry":true,
         "width":80,
         "items":[
            {
               "sequence":10,
               "name":"lastName",
               "category":"identifier",
               "type":"String",
               "init":""
            }
         ]
      },
      {
         "name":"Email",
         "x":48,
         "height":80,
         "y":192,
         "entry":true,
         "width":80,
         "items":[
            {
               "sequence":10,
               "name":"emailaddress",
               "category":"identifier",
               "type":"Email",
               "init":""
            }
         ]
      },
      {
         "name":"About",
         "x":192,
         "height":80,
         "y":190,
         "entry":true,
         "width":80,
         "items":[
            {
               "sequence":10,
               "name":"about",
               "category":"identifier",
               "type":"String",
               "init":""
            }
         ]
      }
   ]
}
''';