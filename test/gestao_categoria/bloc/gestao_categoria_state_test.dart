// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/gestao_categoria/bloc/bloc.dart';

void main() {
  group('GestaoCategoriaState', () {
    test('supports value equality', () {
      expect(
        GestaoCategoriaState(),
        equals(
          const GestaoCategoriaState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const GestaoCategoriaState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const gestaoCategoriaState = GestaoCategoriaState(
            customProperty: 'My property',
          );
          expect(
            gestaoCategoriaState.copyWith(),
            equals(gestaoCategoriaState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const gestaoCategoriaState = GestaoCategoriaState(
            customProperty: 'My property',
          );
          final otherGestaoCategoriaState = GestaoCategoriaState(
            customProperty: 'My property 2',
          );
          expect(gestaoCategoriaState, isNot(equals(otherGestaoCategoriaState)));

          expect(
            gestaoCategoriaState.copyWith(
              customProperty: otherGestaoCategoriaState.customProperty,
            ),
            equals(otherGestaoCategoriaState),
          );
        },
      );
    });
  });
}
