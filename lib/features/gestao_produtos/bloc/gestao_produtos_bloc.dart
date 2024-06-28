import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'gestao_produtos_event.dart';
part 'gestao_produtos_state.dart';

class GestaoProdutosBloc extends Bloc<GestaoProdutosEvent, GestaoProdutosState> {
  GestaoProdutosBloc() : super(const GestaoProdutosInitial()) {
    on<CustomGestaoProdutosEvent>(_onCustomGestaoProdutosEvent);
  }

  FutureOr<void> _onCustomGestaoProdutosEvent(
    CustomGestaoProdutosEvent event,
    Emitter<GestaoProdutosState> emit,
  ) {
    // TODO: Add Logic
  }
}
