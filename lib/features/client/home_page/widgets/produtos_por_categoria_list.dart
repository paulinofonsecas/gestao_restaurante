import 'package:flutter/material.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/produto_por_categoria_listitem.dart';

class ProdutosPorCategoriaGrid extends StatelessWidget {
  const ProdutosPorCategoriaGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = List.generate(10, (index) => ProdutoModel.fake());

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        childAspectRatio: 0.7,
      ),
      shrinkWrap: true,
      itemCount: produtos.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ProdutoPorCategoriaListItem(
        produto: produtos[index],
      ),
    );
  }
}
