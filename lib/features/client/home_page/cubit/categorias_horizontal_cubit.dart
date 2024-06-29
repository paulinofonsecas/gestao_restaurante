import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gestao_restaurante/dados/entidades/categoria_model.dart';
import 'package:gestao_restaurante/dados/servicos/categoria_firebase.dart';

part 'categorias_horizontal_state.dart';

class CategoriasHorizontalCubit extends Cubit<CategoriasHorizontalState> {
  CategoriasHorizontalCubit() : super(CategoriasHorizontalInitial());

  void getCategorias() {
    final cf = CategoriaFirebase();

    emit(CategoriasHorizontalLoading());

    cf
        .getCategorias()
        .then((e) => emit(CategoriasHorizontalSuccess(categorias: e)))
        .onError(
          (e, t) => emit(CategoriasHorizontalError(message: e.toString())),
        );
  }
}
