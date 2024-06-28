// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/add_produto/add_produto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddProdutoPage', () {
    group('route', () {
      test('is routable', () {
        expect(AddProdutoPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders AddProdutoView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: AddProdutoPage()));
      expect(find.byType(AddProdutoView), findsOneWidget);
    });
  });
}
