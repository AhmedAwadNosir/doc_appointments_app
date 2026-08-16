import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<t> with _$SignUpState<t> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success(t data) = Success<t>;
  const factory SignUpState.error(String errorMessage) = Error;
}
