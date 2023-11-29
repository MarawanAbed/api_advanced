import 'package:api/api/data/remote/models/createmodel.dart';
import 'package:api/api/data/remote/models/models_entity.dart';
import 'package:api/api/domain/repositories/repo.dart';
import 'package:api/api/presentation/manager/api_state.dart';
import 'package:api/core/exceptions/expections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit(this._repo) : super(const ApiState.initial());
  final Repo _repo;

  void getAllUsers() async {
    emit(const ApiState.loading());

    final users = await _repo.getAllUsers();
    users.when(
        success: (user) {
      emit(ApiState.loaded(user));
    },
        failure: ( networkExceptions) {
      emit(ApiState.fail(networkExceptions));
    }
    );
  }


// void getUser(String id) async {
//   emit(ApiLoading());
//   try {
//     final user = await _repo.getUser(id);
//     emit(ApiSingleLoaded(user));
//   } catch (e) {
//     emit(ApiError(e.toString()));
//   }
// }
//
// void createUser() async {
//   emit(ApiLoading());
//   try {
//     final body = CreateModel(name: 'morpheus', job: 'morpheus');
//     final user = await _repo.createUser(body);
//     emit(ApiCreatePostLoaded(user));
//   } catch (e) {
//     emit(ApiError(e.toString()));
//   }
// }
//
// @override
// void onChange(Change<ApiState> change) {
//   print(change);
//   super.onChange(change);
// }

}

