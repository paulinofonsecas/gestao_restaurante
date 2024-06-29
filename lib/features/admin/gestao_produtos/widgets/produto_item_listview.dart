import 'package:flutter/material.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';
import 'package:gestao_restaurante/global/widgets/global_image_network_widget.dart';

class ProdutoItemListView extends StatelessWidget {
  const ProdutoItemListView({
    required this.produto,
    super.key,
  });

  final ProdutoModel produto;

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
      leading: _ImageWidget(
        url: produto.imagemUrl.firstOrNull ?? '',
      ),
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
      child: GlobalImageNetworkWidget(
        url,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
    );
  }
}
