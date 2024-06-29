// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/gestao_categoria/gestao_categoria.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GestaoCategoriaPage', () {
    group('route', () {
      test('is routable', () {
        expect(GestaoCategoriaPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders GestaoCategoriaView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: GestaoCategoriaPage()));
      expect(find.byType(GestaoCategoriaView), findsOneWidget);
    });
  });
}
