part of 'select_bloc.dart';

@freezed
sealed class SelectEvent<T> with _$SelectEvent<T> {
  const factory SelectEvent.select({required T value}) = Select<T>;
}