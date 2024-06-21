// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivateResponse _$ActivateResponseFromJson(Map<String, dynamic> json) =>
    ActivateResponse(
      message: json['message'] as String?,
      refreshToken: json['refreshToken'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ActivateResponseToJson(ActivateResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'refreshToken': instance.refreshToken,
      'statusCode': instance.statusCode,
    };
