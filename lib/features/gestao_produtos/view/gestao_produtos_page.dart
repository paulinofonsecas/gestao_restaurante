import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/add_produto/view/add_produto_page.dart';
import 'package:gestao_restaurante/features/gestao_produtos/bloc/bloc.dart';
import 'package:gestao_restaurante/features/gestao_produtos/widgets/gestao_produtos_body.dart';

/// {@template gestao_produtos_page}
/// A description for GestaoProdutosPage
/// {@endtemplate}
class GestaoProdutosPage extends StatelessWidget {
  /// {@macro gestao_produtos_page}
  const GestaoProdutosPage({super.key});

  /// The static route for GestaoProdutosPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const GestaoProdutosPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GestaoProdutosBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Gestão de Produtos'),
          // actions: [
          //   TextButton.icon(
          //     onPressed: () {
          //       populateProducts().then((v) {
          //         print('Dados criado com sucess!');
          //       });
          //     },
          //     label: const Text('Generate'),
          //     icon: const Icon(Icons.refresh),
          //   ),
          // ],
        ),
        body: const GestaoProdutosView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, AddProdutoPage.route());
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

/// {@template gestao_produtos_view}
/// Displays the Body of GestaoProdutosView
/// {@endtemplate}
class GestaoProdutosView extends StatelessWidget {
  /// {@macro gestao_produtos_view}
  const GestaoProdutosView({super.key});

  @override
  Widget build(BuildContext context) {
    return const GestaoProdutosBody();
  }
}
