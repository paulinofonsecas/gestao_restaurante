// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/add_produto/bloc/bloc.dart';

void main() {
  group('AddProdutoState', () {
    test('supports value equality', () {
      expect(
        AddProdutoState(),
        equals(
          const AddProdutoState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const AddProdutoState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const addProdutoState = AddProdutoState(
            customProperty: 'My property',
          );
          expect(
            addProdutoState.copyWith(),
            equals(addProdutoState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const addProdutoState = AddProdutoState(
            customProperty: 'My property',
          );
          final otherAddProdutoState = AddProdutoState(
            customProperty: 'My property 2',
          );
          expect(addProdutoState, isNot(equals(otherAddProdutoState)));

          expect(
            addProdutoState.copyWith(
              customProperty: otherAddProdutoState.customProperty,
            ),
            equals(otherAddProdutoState),
          );
        },
      );
    });
  });
}
