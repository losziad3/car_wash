// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivateRequest _$ActivateRequestFromJson(Map<String, dynamic> json) =>
    ActivateRequest(
      email: json['email'] as String?,
      verificationCode: json['verificationCode'] as String?,
    );

Map<String, dynamic> _$ActivateRequestToJson(ActivateRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'verificationCode': instance.verificationCode,
    };
