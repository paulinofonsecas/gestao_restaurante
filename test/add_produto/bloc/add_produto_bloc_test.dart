// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/add_produto/bloc/bloc.dart';

void main() {
  group('AddProdutoBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AddProdutoBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final addProdutoBloc = AddProdutoBloc();
      expect(addProdutoBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<AddProdutoBloc, AddProdutoState>(
      'CustomAddProdutoEvent emits nothing',
      build: AddProdutoBloc.new,
      act: (bloc) => bloc.add(const AddNewProdutoEvent()),
      expect: () => <AddProdutoState>[],
    );
  });
}
