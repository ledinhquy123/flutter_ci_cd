part of 'select_bloc.dart';

@freezed
sealed class SelectState<T> with _$SelectState<T> {
  const factory SelectState({T? value}) = _SelectState<T>;
}
