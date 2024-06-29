// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/global_search_categoria/bloc/bloc.dart';

void main() {
  group('GlobalSearchCategoriaBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          GlobalSearchCategoriaBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final globalSearchCategoriaBloc = GlobalSearchCategoriaBloc();
      expect(globalSearchCategoriaBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<GlobalSearchCategoriaBloc, GlobalSearchCategoriaState>(
      'CustomGlobalSearchCategoriaEvent emits nothing',
      build: GlobalSearchCategoriaBloc.new,
      act: (bloc) => bloc.add(const CustomGlobalSearchCategoriaEvent()),
      expect: () => <GlobalSearchCategoriaState>[],
    );
  });
}
