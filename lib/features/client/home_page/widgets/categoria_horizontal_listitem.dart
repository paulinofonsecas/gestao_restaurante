import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:gestao_restaurante/dados/entidades/categoria_model.dart';

class CategoriaHorizontalListItem extends StatelessWidget {
  const CategoriaHorizontalListItem({
    required this.categoria,
    super.key,
  });

  final CategoriaModel categoria;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.orange.withOpacity(0.1),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.fastfood,
              color: Colors.orange,
              size: 14,
            ),
            const GutterSmall(),
            Text(
              categoria.descricao,
              style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
