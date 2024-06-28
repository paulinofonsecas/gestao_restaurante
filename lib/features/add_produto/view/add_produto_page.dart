import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/add_produto/bloc/bloc.dart';
import 'package:gestao_restaurante/features/add_produto/cubit/descricao_input_cubit.dart';
import 'package:gestao_restaurante/features/add_produto/cubit/nome_input_cubit.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/add_produto_body.dart';

/// {@template add_produto_page}
/// A description for AddProdutoPage
/// {@endtemplate}
class AddProdutoPage extends StatelessWidget {
  /// {@macro add_produto_page}
  const AddProdutoPage({super.key});

  /// The static route for AddProdutoPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const AddProdutoPage());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddProdutoBloc(),
        ),
        BlocProvider(
          create: (context) => NomeInputCubit(),
        ),
        BlocProvider(
          create: (context) => DescricaoInputCubit(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Produto'),
          actions: [
            TextButton.icon(
              icon: const Icon(Icons.save),
              onPressed: () {
                Navigator.pop(context);
              },
              label: const Text('Salvar'),
            ),
          ],
        ),
        body: const AddProdutoView(),
      ),
    );
  }
}

/// {@template add_produto_view}
/// Displays the Body of AddProdutoView
/// {@endtemplate}
class AddProdutoView extends StatelessWidget {
  /// {@macro add_produto_view}
  const AddProdutoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddProdutoBody();
  }
}
