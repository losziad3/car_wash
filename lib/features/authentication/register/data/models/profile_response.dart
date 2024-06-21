import 'package:json_annotation/json_annotation.dart';
part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  final String message;
  final ProfileData data;

  ProfileResponse({required this.message, required this.data});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

}
@JsonSerializable()
class ProfileData {
  final String? phone;
  final String? city;
  final String? gender;
  final String? gov;
  final String? username;

  ProfileData({
    required this.phone,
    required this.city,
    required this.gender,
    required this.gov,
    required this.username,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}