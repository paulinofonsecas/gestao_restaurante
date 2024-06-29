// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/gestao_categoria/bloc/bloc.dart';

void main() {
  group('GestaoCategoriaEvent', () {  
    group('CustomGestaoCategoriaEvent', () {
      test('supports value equality', () {
        expect(
          CustomGestaoCategoriaEvent(),
          equals(const CustomGestaoCategoriaEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomGestaoCategoriaEvent(),
          isNotNull
        );
      });
    });
  });
}
