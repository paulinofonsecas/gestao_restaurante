part of 'gestao_produtos_bloc.dart';

abstract class GestaoProdutosEvent  extends Equatable {
  const GestaoProdutosEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_gestao_produtos_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomGestaoProdutosEvent extends GestaoProdutosEvent {
  /// {@macro custom_gestao_produtos_event}
  const CustomGestaoProdutosEvent();
}
