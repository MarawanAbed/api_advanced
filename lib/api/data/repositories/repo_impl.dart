import 'package:api/api/data/remote/data_sources/data_source.dart';
import 'package:api/api/data/remote/models/createmodel.dart';
import 'package:api/api/data/remote/models/models_entity.dart';
import 'package:api/api/domain/repositories/repo.dart';
import 'package:api/core/exceptions/expections.dart';
import 'package:api/core/network/api_result.dart';

class RepoImpl implements Repo {
  final DataSource _dataSource;

  RepoImpl(this._dataSource);

  @override
  Future<ApiResult<CreateModel>> createUser(CreateModel body)async {
    try {
      var result =await _dataSource.createUser(body);
      return ApiResult.success(result);
    } catch (error) {
     return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<ApiResult<List<ModelsData>>> getAllUsers() async{
    try {
      var result =await _dataSource.getAllUsers();
      return ApiResult.success(result);
    } catch ( error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<ApiResult<ModelsData>> getUser(String id)async {
    try {
      var result =await _dataSource.getUser(id);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }


}
