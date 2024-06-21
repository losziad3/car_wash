import 'package:json_annotation/json_annotation.dart';

part 'activate_request.g.dart';

@JsonSerializable()
class ActivateRequest {
  final String? email;
  final String? verificationCode;

  ActivateRequest({
    required this.email,
    required this.verificationCode,
  });

  factory ActivateRequest.fromJson(Map<String, dynamic> json) =>
      _$ActivateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ActivateRequestToJson(this);
}
