import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:gestao_restaurante/global/authentication/widgets/login_form_widget.dart';

class AuthenticationBody extends StatelessWidget {
  /// {@macro authentication_body}
  const AuthenticationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/imgs/login_auth_banner.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const Gutter(),
            Text(
              'Na Garagem',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
            const Gutter(),
            const AuthFormWidget(),
            const Gutter(),
          ],
        ),
      ),
    );
  }
}
