import'package:json_annotation/json_annotation.dart';
part 'register_request.g.dart';
@JsonSerializable()
class RegisterRequest {
  final String? email;
  final String? phone;
  final String? password;

  RegisterRequest({required this.email,required this.phone,required this.password});
  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}