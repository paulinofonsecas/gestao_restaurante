// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:gestao_restaurante/features/global_search_categoria/bloc/bloc.dart';

void main() {
  group('GlobalSearchCategoriaEvent', () {  
    group('CustomGlobalSearchCategoriaEvent', () {
      test('supports value equality', () {
        expect(
          CustomGlobalSearchCategoriaEvent(),
          equals(const CustomGlobalSearchCategoriaEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomGlobalSearchCategoriaEvent(),
          isNotNull
        );
      });
    });
  });
}
