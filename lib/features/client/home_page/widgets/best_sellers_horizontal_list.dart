import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/best_seller_horizontal_listitem.dart';
import 'package:gestao_restaurante/global/widgets/padding_widget.dart';

class BestSallersHorizontalList extends StatelessWidget {
  const BestSallersHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    final products = List.generate(10, (index) => ProdutoModel.fake());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PadWid(
          child: Text(
            'Mais vendidos',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const GutterTiny(),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BestSellerHorizontalListItem(
              produto: products[index],
            ),
          ),
        ),
      ],
    );
  }
}
