part of concept_attribute;

String categoriesInJson() {
  var json = '''
[
{"category" : "Programming language", "subcategory" : ["Dart", "Java", "Javascript", "Python", "Ruby"]},
{"category" : "Database", "subcategory" : ["Relationnal", "MySQL", "Oracle", "Postgre", "NoSQL"]},
{"category" : "Android", "subcategory" : ["Java", "android-layout", "eclipse", "android-listview", "android-emulator"]},
{"category" : "Sharepoint", "subcategory" : ["sharepoint-designer", "sharepoint-workflow", "sharepoint-api", "sharepoint 2007", "sharepoint 2010"]},
{"category" : "Browser", "subcategory" : ["Google Chrome", "Firefox", "Opera", "Safari", "Internet Explorer"]},
{"category" : "Mobile", "subcategory" : ["Iphone", "Android", "ios", "Blackberry", "Smartphone"]},
{"category" : "Web", "subcategory" : ["CSS", "Javascript", "HTML5", "JQuery", "web-applications"]},
{"category" : "Git", "subcategory" : ["Linux", "Github", "Bash", "Repo", "SSH-keys"]},
{"category" : "CMS", "subcategory" : ["Wordpress", "Joomla", "Drupal", "Blogs", "Themes"]},
{"category" : "Google", "subcategory" : ["google-api", "google-analytics", "google-app-engine", "google-maps", "android"]}
]
  ''';
  return json;
}

