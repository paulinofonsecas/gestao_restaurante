// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/global_search_categoria/global_search_categoria.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GlobalSearchCategoriaPage', () {
    group('route', () {
      test('is routable', () {
        expect(GlobalSearchCategoriaPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders GlobalSearchCategoriaView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: GlobalSearchCategoriaPage()));
      expect(find.byType(GlobalSearchCategoriaView), findsOneWidget);
    });
  });
}
