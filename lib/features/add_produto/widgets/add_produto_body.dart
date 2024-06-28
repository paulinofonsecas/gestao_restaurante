import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:gestao_restaurante/constants.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/categoria_input_field.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/descricao_input_field.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/disponibilidade_input_field.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/imagem_input_field.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/ingrediente_input_field.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/nome_input_field.dart';
import 'package:gestao_restaurante/features/add_produto/widgets/preco_input_field.dart';

/// {@template add_produto_body}
/// Body of the AddProdutoPage.
///
/// Add what it does
/// {@endtemplate}
class AddProdutoBody extends StatefulWidget {
  /// {@macro add_produto_body}
  const AddProdutoBody({super.key});

  @override
  State<AddProdutoBody> createState() => _AddProdutoBodyState();
}

class _AddProdutoBodyState extends State<AddProdutoBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            NomeInputField(),
            Gutter(),
            DescricaoInputField(),
            Gutter(),
            PrecoInputField(),
            Gutter(),
            CategoriaInputField(),
            Gutter(),
            IngredienteInputField(),
            Gutter(),
            DisponibilidadeInputField(),
            Gutter(),
            ImagemInputField(),
          ],
        ),
      ),
    );
  }
}
