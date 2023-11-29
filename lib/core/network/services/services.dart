import 'package:api/api/data/remote/models/createmodel.dart';
import 'package:api/api/data/remote/models/models_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'services.g.dart';

@RestApi(baseUrl: "https://reqres.in/api/")
abstract class Services {
  factory Services(Dio dio, {String baseUrl}) = _Services;

  @GET('users')
  Future<ModelsEntity> getAllUsers();

  @GET('users/{id}')
  Future<Map<String, dynamic>> getUser(@Path('id') String id);

  @POST('users')
  Future<CreateModel> createUser(@Body() CreateModel body);

//  @POST("users")
//   Future<User> createNewUser(
//       @Body() User newuser, @Header('Authorization') String token);
//
//   @DELETE("users/{id}")
//   Future<HttpResponse> deleteUser(@Path() String id, @Header('Authorization') String token);
}
