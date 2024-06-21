import 'package:json_annotation/json_annotation.dart';
part  'reset_password_response.g.dart';
@JsonSerializable()
class ResetPasswordResponse {
  String? token;
  int? statusCode;
  final String? message;

  ResetPasswordResponse(this.message, this.statusCode,
      {required this.token });
  Map<String, dynamic> toJson() => _$ResetPasswordResponseToJson(this);
  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);
}
