
// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// rename dartling to yourDomainName
// rename Skeleton to YourModelName
// do not change model or Model

// lib/dartling/skeleton/json/model.dart

var conceptAttributeModelJson = @'''
{
   "width":990,
   "lines":[

   ],
   "height":580,
   "boxes":[
      {
         "name":"City",
         "x":201,
         "height":80,
         "y":277,
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
         "x":417,
         "height":80,
         "y":449,
         "entry":true,
         "width":80,
         "items":[
            {
               "sequence":10,
               "name":"firstname",
               "category":"attribute",
               "type":"String",
               "init":""
            }
         ]
      }
   ]
}
''';