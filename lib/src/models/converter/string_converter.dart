import 'package:freezed_annotation/freezed_annotation.dart';

class NumOrStringConverter extends JsonConverter<num, String> {
  const NumOrStringConverter();

  @override
  num fromJson(String json) => num.parse(json);

  @override
  String toJson(num object) => object.toString();
}
