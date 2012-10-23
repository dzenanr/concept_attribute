part of concept_attribute;

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
            "entry":true,
            "name":"City",
            "x":49,
            "y":94,
            "width":80,
            "height":80,
            "items":[
                {
                    "sequence":10,
                    "category":"identifier",
                    "name":"name",
                    "type":"String",
                    "init":""
                }
            ]
        },
        {
            "entry":true,
            "name":"FirstName",
            "x":190,
            "y":95,
            "width":80,
            "height":80,
            "items":[
                {
                    "sequence":10,
                    "category":"identifier",
                    "name":"firstName",
                    "type":"String",
                    "init":""
                }
            ]
        },
        {
            "entry":true,
            "name":"LastName",
            "x":318,
            "y":92,
            "width":80,
            "height":80,
            "items":[
                {
                    "sequence":10,
                    "category":"identifier",
                    "name":"lastName",
                    "type":"String",
                    "init":""
                }
            ]
        },
        {
            "entry":true,
            "name":"Email",
            "x":48,
            "y":192,
            "width":80,
            "height":80,
            "items":[
                {
                    "sequence":10,
                    "category":"identifier",
                    "name":"email",
                    "type":"Email",
                    "init":""
                }
            ]
        },
        {
            "entry":true,
            "name":"About",
            "x":192,
            "y":190,
            "width":80,
            "height":80,
            "items":[
                {
                    "sequence":10,
                    "category":"identifier",
                    "name":"about",
                    "type":"String",
                    "init":""
                }
            ]
        }
    ]
}
''';