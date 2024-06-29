// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/global_search_categoria/global_search_categoria.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GlobalSearchCategoriaBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => GlobalSearchCategoriaBloc(),
          child: MaterialApp(home: GlobalSearchCategoriaBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
