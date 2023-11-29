import 'package:json_annotation/json_annotation.dart';

part 'createmodel.g.dart';
@JsonSerializable()
class CreateModel{
  final String? id;
  final String? name;
  final String? job;

  final String? createdAt;

  CreateModel({
     this.id,
     this.name,
     this.job,
     this.createdAt,
  });

  factory CreateModel.fromJson(Map<String, dynamic> json) => _$CreateModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateModelToJson(this);
}