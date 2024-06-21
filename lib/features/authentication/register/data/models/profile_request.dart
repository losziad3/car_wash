import 'package:json_annotation/json_annotation.dart';
part 'profile_request.g.dart';
@JsonSerializable()
class ProfileRequest{
  @JsonKey(name: 'username')
  final String? userName;
  final String? gender;
  final int? latitude;
  final int? longitude;

  ProfileRequest({this.userName, this.gender, this.latitude, this.longitude});

  Map<String, dynamic> toJson() => _$ProfileRequestToJson(this);
}