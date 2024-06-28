import 'package:flutter/material.dart';

class DisponibilidadeInputField extends StatelessWidget {
  const DisponibilidadeInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: true,
      onChanged: (_) {},
      title: const Text('Disponível'),
    );
  }
}
