import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:gestao_restaurante/dados/entidades/categoria_model.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/categoria_horizontal_listitem.dart';
import 'package:gestao_restaurante/global/widgets/padding_widget.dart';

class CategoriasHorizontalList extends StatelessWidget {
  const CategoriasHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    final categorias = List.generate(10, (index) => CategoriaModel.fake());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PadWid(
          child: Text(
            'Categorias',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const GutterTiny(),
        SizedBox(
          height: 45,
          child: ListView.builder(
            itemCount: categorias.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CategoriaHorizontalListItem(
              categoria: categorias[index],
            ),
          ),
        ),
      ],
    );
  }
}
