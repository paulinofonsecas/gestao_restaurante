import 'package:flutter/material.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';

class ProdutoItemListView extends StatelessWidget {
  const ProdutoItemListView({
    required this.produto,
    super.key,
  });

  final ProdutoModel produto;

  String get getImage {
    if (produto.imagemUrl.isEmpty) {
      return 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png';
    }

    return produto.imagemUrl.first;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        produto.nome,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: Text(produto.preco.toString()),
      leading: _ImageWidget(url: getImage),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        url,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
    );
  }
}
