// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateModel _$CreateModelFromJson(Map<String, dynamic> json) => CreateModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      job: json['job'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$CreateModelToJson(CreateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'job': instance.job,
      'createdAt': instance.createdAt,
    };
