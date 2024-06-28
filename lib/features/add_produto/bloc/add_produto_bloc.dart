import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'add_produto_event.dart';
part 'add_produto_state.dart';

class AddProdutoBloc extends Bloc<AddProdutoEvent, AddProdutoState> {
  AddProdutoBloc() : super(const AddProdutoInitial()) {
    on<CustomAddProdutoEvent>(_onCustomAddProdutoEvent);
  }

  FutureOr<void> _onCustomAddProdutoEvent(
    CustomAddProdutoEvent event,
    Emitter<AddProdutoState> emit,
  ) {
    // TODO: Add Logic
  }
}
