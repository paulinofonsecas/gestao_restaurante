// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/add_produto/add_produto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddProdutoBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => AddProdutoBloc(),
          child: MaterialApp(home: AddProdutoBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
