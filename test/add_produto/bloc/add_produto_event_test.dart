// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/add_produto/bloc/bloc.dart';

void main() {
  group('AddProdutoEvent', () {
    group('CustomAddProdutoEvent', () {
      test('supports value equality', () {
        expect(
          AddNewProdutoEvent(),
          equals(const AddNewProdutoEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const AddNewProdutoEvent(),
          isNotNull,
        );
      });
    });
  });
}
