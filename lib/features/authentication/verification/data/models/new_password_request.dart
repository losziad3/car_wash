import 'package:json_annotation/json_annotation.dart';
part  'new_password_request.g.dart';
@JsonSerializable()
class NewPasswordRequest {
  String? token;
  String? newPassword;
  NewPasswordRequest(
      {required this.token, required this.newPassword});
  Map<String, dynamic> toJson() => _$NewPasswordRequestToJson(this);
}
