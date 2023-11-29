import 'package:api/generated/json/base/json_convert_content.dart';
import 'package:api/api/data/remote/models/models_entity.dart';

ModelsEntity $ModelsEntityFromJson(Map<String, dynamic> json) {
  final ModelsEntity modelsEntity = ModelsEntity();
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    modelsEntity.page = page;
  }
  final int? perPage = jsonConvert.convert<int>(json['per_page']);
  if (perPage != null) {
    modelsEntity.perPage = perPage;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    modelsEntity.total = total;
  }
  final int? totalPages = jsonConvert.convert<int>(json['total_pages']);
  if (totalPages != null) {
    modelsEntity.totalPages = totalPages;
  }
  final List<ModelsData>? data = (json['data'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<ModelsData>(e) as ModelsData).toList();
  if (data != null) {
    modelsEntity.data = data;
  }
  final ModelsSupport? support = jsonConvert.convert<ModelsSupport>(
      json['support']);
  if (support != null) {
    modelsEntity.support = support;
  }
  return modelsEntity;
}

Map<String, dynamic> $ModelsEntityToJson(ModelsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['page'] = entity.page;
  data['per_page'] = entity.perPage;
  data['total'] = entity.total;
  data['total_pages'] = entity.totalPages;
  data['data'] = entity.data?.map((v) => v.toJson()).toList();
  data['support'] = entity.support?.toJson();
  return data;
}

extension ModelsEntityExtension on ModelsEntity {
  ModelsEntity copyWith({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<ModelsData>? data,
    ModelsSupport? support,
  }) {
    return ModelsEntity()
      ..page = page ?? this.page
      ..perPage = perPage ?? this.perPage
      ..total = total ?? this.total
      ..totalPages = totalPages ?? this.totalPages
      ..data = data ?? this.data
      ..support = support ?? this.support;
  }
}

ModelsData $ModelsDataFromJson(Map<String, dynamic> json) {
  final ModelsData modelsData = ModelsData();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    modelsData.id = id;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    modelsData.email = email;
  }
  final String? firstName = jsonConvert.convert<String>(json['first_name']);
  if (firstName != null) {
    modelsData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['last_name']);
  if (lastName != null) {
    modelsData.lastName = lastName;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    modelsData.avatar = avatar;
  }
  return modelsData;
}

Map<String, dynamic> $ModelsDataToJson(ModelsData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['email'] = entity.email;
  data['first_name'] = entity.firstName;
  data['last_name'] = entity.lastName;
  data['avatar'] = entity.avatar;
  return data;
}

extension ModelsDataExtension on ModelsData {
  ModelsData copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? avatar,
  }) {
    return ModelsData()
      ..id = id ?? this.id
      ..email = email ?? this.email
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..avatar = avatar ?? this.avatar;
  }
}

ModelsSupport $ModelsSupportFromJson(Map<String, dynamic> json) {
  final ModelsSupport modelsSupport = ModelsSupport();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    modelsSupport.url = url;
  }
  final String? text = jsonConvert.convert<String>(json['text']);
  if (text != null) {
    modelsSupport.text = text;
  }
  return modelsSupport;
}

Map<String, dynamic> $ModelsSupportToJson(ModelsSupport entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['text'] = entity.text;
  return data;
}

extension ModelsSupportExtension on ModelsSupport {
  ModelsSupport copyWith({
    String? url,
    String? text,
  }) {
    return ModelsSupport()
      ..url = url ?? this.url
      ..text = text ?? this.text;
  }
}