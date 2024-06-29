// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/gestao_categoria/gestao_categoria.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GestaoCategoriaBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => GestaoCategoriaBloc(),
          child: MaterialApp(home: GestaoCategoriaBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
