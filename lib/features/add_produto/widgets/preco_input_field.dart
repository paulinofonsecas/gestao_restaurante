import 'package:flutter/material.dart';

class PrecoInputField extends StatelessWidget {
  const PrecoInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Preço',
        hintText: '2.500,00',
        border: OutlineInputBorder(),
      ),
    );
  }
}
