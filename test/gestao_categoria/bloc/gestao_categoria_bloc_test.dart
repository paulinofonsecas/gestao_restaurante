// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/gestao_categoria/bloc/bloc.dart';

void main() {
  group('GestaoCategoriaBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          GestaoCategoriaBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final gestaoCategoriaBloc = GestaoCategoriaBloc();
      expect(gestaoCategoriaBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<GestaoCategoriaBloc, GestaoCategoriaState>(
      'CustomGestaoCategoriaEvent emits nothing',
      build: GestaoCategoriaBloc.new,
      act: (bloc) => bloc.add(const CustomGestaoCategoriaEvent()),
      expect: () => <GestaoCategoriaState>[],
    );
  });
}
