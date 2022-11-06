import 'package:freezed_annotation/freezed_annotation.dart';

class StringOrNumConverter extends JsonConverter<String, num> {
  const StringOrNumConverter();

  @override
  String fromJson(num json) => json.toString();

  @override
  num toJson(String object) => num.parse(object);
}
