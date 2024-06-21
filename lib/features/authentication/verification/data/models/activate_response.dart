import 'package:json_annotation/json_annotation.dart';

part 'activate_response.g.dart';

@JsonSerializable()
class ActivateResponse {
  final String? message;
  final String? refreshToken;
  int? statusCode;
  ActivateResponse({
    required this.message,
    required this.refreshToken,
    this.statusCode,
  });

  factory ActivateResponse.fromJson(Map<String, dynamic> json) =>
      _$ActivateResponseFromJson(json);
}
