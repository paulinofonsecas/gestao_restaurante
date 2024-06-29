// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/global_search_categoria/bloc/bloc.dart';

void main() {
  group('GlobalSearchCategoriaState', () {
    test('supports value equality', () {
      expect(
        GlobalSearchCategoriaState(),
        equals(
          const GlobalSearchCategoriaState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const GlobalSearchCategoriaState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const globalSearchCategoriaState = GlobalSearchCategoriaState(
            customProperty: 'My property',
          );
          expect(
            globalSearchCategoriaState.copyWith(),
            equals(globalSearchCategoriaState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const globalSearchCategoriaState = GlobalSearchCategoriaState(
            customProperty: 'My property',
          );
          final otherGlobalSearchCategoriaState = GlobalSearchCategoriaState(
            customProperty: 'My property 2',
          );
          expect(globalSearchCategoriaState, isNot(equals(otherGlobalSearchCategoriaState)));

          expect(
            globalSearchCategoriaState.copyWith(
              customProperty: otherGlobalSearchCategoriaState.customProperty,
            ),
            equals(otherGlobalSearchCategoriaState),
          );
        },
      );
    });
  });
}
