import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gestao_restaurante/dados/entidades/categoria_model.dart';
import 'package:gestao_restaurante/dados/servicos/categoria_firebase.dart';

part 'categoria_field_state.dart';

class CategoriaFieldCubit extends Cubit<CategoriaFieldState> {
  CategoriaFieldCubit() : super(CategoriaFieldInitial());

  void changeValue(CategoriaModel value) {
    emit(CategoriaFieldChange(value));
  }

  Future<List<CategoriaModel>> getCategorias() {
    return CategoriaFirebase().getCategorias().then((value) {
      // value.add(CategoriaModel.fake('Teste'));
      return value;
    });
  }
}