import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/best_sellers_horizontal_list.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/categorias_horizontal_list.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/produtos_por_categoria_list.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/promocoes_widget.dart';

/// {@template home_page_body}
/// Body of the HomePagePage.
///
/// Add what it does
/// {@endtemplate}
class HomePageBody extends StatelessWidget {
  /// {@macro home_page_body}
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // InitialMessage(),
          Gutter(),
          PromocoesWidget(),
          Gutter(),
          BestSallersHorizontalList(),
          Gutter(),
          CategoriasHorizontalList(),
          Gutter(),
          ProdutosPorCategoriaGrid(),
        ],
      ),
    );
  }
}
