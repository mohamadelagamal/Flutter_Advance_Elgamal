import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';
// this use to ignore create toJson and fromJson manually
@JsonSerializable() // This allows the model to be converted to JSON
class ApiErrorModel {
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'code')
  final int? code;

  ApiErrorModel({required this.message, required this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

