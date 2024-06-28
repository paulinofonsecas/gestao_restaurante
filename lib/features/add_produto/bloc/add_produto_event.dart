part of 'add_produto_bloc.dart';

abstract class AddProdutoEvent  extends Equatable {
  const AddProdutoEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_add_produto_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomAddProdutoEvent extends AddProdutoEvent {
  /// {@macro custom_add_produto_event}
  const CustomAddProdutoEvent();
}
