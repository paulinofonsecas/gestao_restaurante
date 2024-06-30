import 'package:flutter/material.dart';
import 'package:gestao_restaurante/constants.dart';

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({
    required this.titleAuthButton,
    required this.onTap,
    super.key,
  });

  final String titleAuthButton;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(45),
        ),
        child: Text(titleAuthButton),
      ),
    );
  }
}
