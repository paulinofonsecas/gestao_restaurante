// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/global/authentication/bloc/bloc.dart';

void main() {
  group('AuthenticationState', () {
    test('supports value equality', () {
      expect(
        AuthenticationState(),
        equals(
          const AuthenticationState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const AuthenticationState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const authenticationState = AuthenticationState(
            customProperty: 'My property',
          );
          expect(
            authenticationState.copyWith(),
            equals(authenticationState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const authenticationState = AuthenticationState(
            customProperty: 'My property',
          );
          final otherAuthenticationState = AuthenticationState(
            customProperty: 'My property 2',
          );
          expect(authenticationState, isNot(equals(otherAuthenticationState)));

          expect(
            authenticationState.copyWith(
              customProperty: otherAuthenticationState.customProperty,
            ),
            equals(otherAuthenticationState),
          );
        },
      );
    });
  });
}
