import 'package:flutter/material.dart';
import 'package:gestao_restaurante/global/widgets/padding_widget.dart';

class InitialMessage extends StatelessWidget {
  const InitialMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return PadWid(
      child: Text(
        'Escolhas os pratos que deseja',
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
