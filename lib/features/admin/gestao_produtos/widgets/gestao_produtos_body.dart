import 'package:flutter/material.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';
import 'package:gestao_restaurante/features/admin/gestao_produtos/gestao_produtos.dart';
import 'package:gestao_restaurante/features/admin/gestao_produtos/widgets/produto_item_listview.dart';

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
    return BlocBuilder<GestaoProdutosBloc, GestaoProdutosState>(
      bloc: context.read<GestaoProdutosBloc>()
        ..add(const GetAllProdutosEvent()),
      builder: (context, state) {
        if (state is GetAllProdutosLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is GetAllProdutosError) {
          return Center(child: Text(state.message));
        }

        if (state is GetAllProdutosEmpty) {
          return const Center(child: Text('Sem produtos cadastrados'));
        }

        if (state is GetAllProdutosSuccess) {
          return _buildProdutosList(state.produtos);
        }

        return const Placeholder();
      },
    );
  }

  ListView _buildProdutosList(List<ProdutoModel> fakeProdutos) {
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