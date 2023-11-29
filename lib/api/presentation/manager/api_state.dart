import 'package:api/core/exceptions/expections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_state.freezed.dart';


@freezed
class ApiState<T> with _$ApiState<T> {
  const factory ApiState.initial() = Initial<T>;
  const factory ApiState.loading() = Loading<T>;
  const factory ApiState.loaded(T data) = Loaded<T>;
  const factory ApiState.fail(NetworkExceptions message) = Error<T>;
}
