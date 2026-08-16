import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<t> with _$LoginState<t> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(t data) = Success<t>;
  const factory LoginState.error(String errorMessage) = Error;
}
