import 'package:api/api/data/remote/models/createmodel.dart';
import 'package:api/api/data/remote/models/models_entity.dart';
import 'package:api/core/network/api_result.dart';

abstract class Repo{
  Future<ApiResult<List<ModelsData>>> getAllUsers();

  Future<ApiResult<ModelsData>> getUser(String id);

  Future<ApiResult<CreateModel>> createUser(CreateModel body);
}