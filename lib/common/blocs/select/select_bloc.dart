import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_event.dart';
part 'select_state.dart';
part 'select_bloc.freezed.dart';

class SelectBloc<T> extends Bloc<SelectEvent<T>, SelectState<T>> {
  SelectBloc() : super(_SelectState<T>()) {
    on<Select<T>>((event, emit) => emit(state.copyWith(value: event.value)));
  }
}
