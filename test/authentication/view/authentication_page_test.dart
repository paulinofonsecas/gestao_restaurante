// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestao_restaurante/global/authentication/authentication.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthenticationPage', () {
    group('route', () {
      test('is routable', () {
        expect(AuthenticationPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders AuthenticationView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: AuthenticationPage()));
      expect(find.byType(AuthenticationView), findsOneWidget);
    });
  });
}
