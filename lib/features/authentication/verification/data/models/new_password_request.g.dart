// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewPasswordRequest _$NewPasswordRequestFromJson(Map<String, dynamic> json) =>
    NewPasswordRequest(
      token: json['token'] as String?,
      newPassword: json['newPassword'] as String?,
    );

Map<String, dynamic> _$NewPasswordRequestToJson(NewPasswordRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'newPassword': instance.newPassword,
    };
