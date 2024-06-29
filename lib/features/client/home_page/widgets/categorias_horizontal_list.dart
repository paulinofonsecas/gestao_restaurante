import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:gestao_restaurante/features/client/home_page/cubit/categorias_horizontal_cubit.dart';
import 'package:gestao_restaurante/features/client/home_page/cubit/produto_por_categoria_horizontal_cubit.dart';
import 'package:gestao_restaurante/features/client/home_page/widgets/categoria_horizontal_listitem.dart';
import 'package:gestao_restaurante/global/widgets/padding_widget.dart';

class CategoriasHorizontalList extends StatelessWidget {
  const CategoriasHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
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
        BlocConsumer<CategoriasHorizontalCubit, CategoriasHorizontalState>(
          bloc: context.read<CategoriasHorizontalCubit>()..getCategorias(),
          listener: (context, state) {
            if (state is CategoriasHorizontalError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is CategoriasHorizontalLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is CategoriasHorizontalEmpty) {
              return const Center(
                child: Text('Nenhum item encontrado'),
              );
            }

            if (state is CategoriasHorizontalSuccess) {
              final categorias = state.categorias;

              return SizedBox(
                height: 45,
                child: ListView.builder(
                  itemCount: categorias.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoriaHorizontalListItem(
                    isActive: index == 0,
                    categoria: categorias[index],
                    onTap: () {
                      context
                          .read<ProdutoPorCategoriaHorizontalCubit>()
                          .getProdutosPorCategoria(
                            categoria: categorias[index],
                          );
                    },
                  ),
                ),
              );
            }

            return const Placeholder();
          },
        ),
      ],
    );
  }
}
