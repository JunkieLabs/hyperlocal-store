// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cns_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CnsType _$CnsTypeFromJson(Map<String, dynamic> json) => CnsType(
      url: json['url'] as String?,
      type: json['type'] as int,
      mime: json['mime'] as String?,
      path: json['path'] as String?,
      thPath: json['thPath'] as String?,
      thUrl: json['thUrl'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$CnsTypeToJson(CnsType instance) => <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
      'mime': instance.mime,
      'path': instance.path,
      'thPath': instance.thPath,
      'thUrl': instance.thUrl,
      'assetPath': instance.assetPath,
    };
