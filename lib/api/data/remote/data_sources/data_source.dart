
import 'package:api/api/data/remote/models/createmodel.dart';
import 'package:api/api/data/remote/models/models_entity.dart';
import 'package:api/core/network/services/services.dart';

abstract class DataSource {
  Future<List<ModelsData>> getAllUsers();

  Future<ModelsData> getUser(String id);
  Future<CreateModel>createUser(CreateModel body);
}

class RemoteDataSource implements DataSource {
  final Services _services;

  RemoteDataSource(this._services);

  @override
  Future<List<ModelsData>> getAllUsers() async {
    final result= await _services.getAllUsers();
    final user=result.data;
    return user!.map((users) => ModelsData.fromJson(users.toJson())).toList();
  }

  @override
  Future<ModelsData> getUser(String id) async{
    final result= await _services.getUser(id);
    final  user=result['data'];
    return ModelsData.fromJson(user);
  }

  @override
  Future<CreateModel> createUser(CreateModel body)async {
    return await _services.createUser(body);
  }

}
