import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/client/home_page/bloc/bloc.dart';

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
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
