import 'package:api/generated/json/base/json_field.dart';
import 'package:api/generated/json/models_entity.g.dart';
import 'dart:convert';
export 'package:api/generated/json/models_entity.g.dart';

@JsonSerializable()
class ModelsEntity {
	int? page;
	@JSONField(name: "per_page")
	int? perPage;
	int? total;
	@JSONField(name: "total_pages")
	int? totalPages;
	List<ModelsData>? data;
	ModelsSupport? support;

	ModelsEntity();

	factory ModelsEntity.fromJson(Map<String, dynamic> json) => $ModelsEntityFromJson(json);

	Map<String, dynamic> toJson() => $ModelsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ModelsData {
	int? id;
	String? email;
	@JSONField(name: "first_name")
	String? firstName;
	@JSONField(name: "last_name")
	String? lastName;
	String? avatar;

	ModelsData();

	factory ModelsData.fromJson(Map<String, dynamic> json) => $ModelsDataFromJson(json);

	Map<String, dynamic> toJson() => $ModelsDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ModelsSupport {
	String? url;
	String? text;

	ModelsSupport();

	factory ModelsSupport.fromJson(Map<String, dynamic> json) => $ModelsSupportFromJson(json);

	Map<String, dynamic> toJson() => $ModelsSupportToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}