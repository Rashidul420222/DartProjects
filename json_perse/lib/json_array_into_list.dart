import 'dart:convert';

void main() {
  String arrayText = '{ "tags" : ["dart", "flutter", "json"]}';

  var tagsJson = jsonDecode(arrayText)['tags'];

  List<String>? tags = tagsJson != null ? List.from(tagsJson) : null;

  print(tags);
}
