import 'package:flutter/material.dart';

class CategoriaInputField extends StatelessWidget {
  const CategoriaInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Categoria',
        border: OutlineInputBorder(),
      ),
    );
  }
}
