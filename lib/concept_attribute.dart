// lib/concept_attribute.dart

/*
http://opensource.org/licenses/

http://en.wikipedia.org/wiki/BSD_license
3-clause license ("New BSD License" or "Modified BSD License")

Copyright (c) 2012, Dartling project authors
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Dartling nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/


library concept_attribute;

import "dart:json";
import "dart:math";

import "package:dartling/dartling.dart";

part "concept/attribute/json/data.dart";
part "concept/attribute/json/model.dart";

part "concept/attribute/json/categories.dart";
part "concept/attribute/json/cities.dart";
part "concept/attribute/json/emails.dart";
part "concept/attribute/json/people.dart";
part "concept/attribute/json/texts.dart";

part "concept/attribute/init.dart";

part "concept/attribute/cities.dart";
part "concept/attribute/first_names.dart";
part "concept/attribute/last_names.dart";
part "concept/attribute/emails.dart";
part "concept/attribute/abouts.dart";
part "concept/attribute/categories.dart";
part "concept/attribute/descriptions.dart";
part "concept/attribute/texts.dart";

part "gen/concept/attribute/entries.dart";
part "gen/concept/attribute/cities.dart";
part "gen/concept/attribute/first_names.dart";
part "gen/concept/attribute/last_names.dart";
part "gen/concept/attribute/emails.dart";
part "gen/concept/attribute/abouts.dart";
part "gen/concept/attribute/categories.dart";
part "gen/concept/attribute/descriptions.dart";
part "gen/concept/attribute/texts.dart";

part "gen/concept/models.dart";
part "gen/concept/repository.dart";
