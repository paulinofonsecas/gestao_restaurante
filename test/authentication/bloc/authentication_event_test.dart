// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/global/authentication/bloc/bloc.dart';

void main() {
  group('AuthenticationEvent', () {
    group('CustomAuthenticationEvent', () {
      test('supports value equality', () {
        expect(
          SignUpEvent(),
          equals(const SignUpEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const SignUpEvent(),
          isNotNull,
        );
      });
    });
  });
}
