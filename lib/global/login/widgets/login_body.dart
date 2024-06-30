import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:gestao_restaurante/features/admin/gestao_produtos/gestao_produtos.dart';

/// {@template login_body}
/// Body of the LoginPage.
///
/// Add what it does
/// {@endtemplate}
class LoginBody extends StatelessWidget {
  /// {@macro login_body}
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      showPasswordVisibilityToggle: true,
      actions: [
        AuthStateChangeAction((context, state) {
          final user = switch (state) {
            SignedIn(user: final user) => user,
            CredentialLinked(user: final user) => user,
            UserCreated(credential: final cred) => cred.user,
            _ => null,
          };

          if (user != null) {
            Navigator.of(context).push(GestaoProdutosPage.route());
          } else {
            print('User is null');
          }
        }),
      ],
      styles: const {
        EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
      },
      headerBuilder: (context, constraints, _) {
        return Padding(
          padding: const EdgeInsets.all(32),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset('assets/logo.png'),
          ),
        );
      },
      subtitleBuilder: (context, action) {
        final actionText = switch (action) {
          AuthAction.signIn => 'Por favor, faca o login para continuar.',
          AuthAction.signUp => 'Por favor, cadastre-se para continuar.',
          _ => throw Exception('Invalid action: $action'),
        };

        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text('Bem-vindo ao app Na Garagem!\n$actionText.'),
        );
      },
      footerBuilder: (context, action) {
        final actionText = switch (action) {
          AuthAction.signIn => 'fazer login',
          AuthAction.signUp => 'se cadastrar',
          _ => throw Exception('Açao inválida: $action'),
        };

        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Ao $actionText, você concorda com os nossos termos.',
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        );
      },
    );
  }
}
