import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';
import 'package:gestao_restaurante/dados/servicos/produto_firebase.dart';

part 'best_sallers_horizontal_state.dart';

class BestSallersHorizontalCubit extends Cubit<BestSallersHorizontalState> {
  BestSallersHorizontalCubit() : super(BestSallersHorizontalInitial());

  Future<void> getBestSellerProducts() async {
    final produtoFirebase = ProdutoFirebase();

    emit(BestSallersHorizontalLoading());

    await produtoFirebase
        .getProdutos()
        .then(
          (e) => emit(
            BestSallersHorizontalSuccess(
              bestSallers: e
                  .take(
                    e.length > 5 ? 5 : e.length,
                  )
                  .toList(),
            ),
          ),
        )
        .onError(
          (e, t) => emit(BestSallersHorizontalError(message: e.toString())),
        );
  }
}