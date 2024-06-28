import 'package:flutter/material.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';
import 'package:gestao_restaurante/features/gestao_produtos/widgets/produto_item_listview.dart';

/// {@template gestao_produtos_body}
/// Body of the GestaoProdutosPage.
///
/// Add what it does
/// {@endtemplate}
class GestaoProdutosBody extends StatelessWidget {
  /// {@macro gestao_produtos_body}
  const GestaoProdutosBody({super.key});

  @override
  Widget build(BuildContext context) {
    final fakeProdutos = List.generate(
      50,
      (index) => ProdutoModel.fake(),
    );
    return ListView(
      children: fakeProdutos
          .map(
            (produto) => ProdutoItemListView(
              produto: produto,
            ),
          )
          .toList(),
    );
  }
}
