import 'package:flutter/material.dart';
import 'package:gestao_restaurante/dados/servicos/login_firebase.dart';
import 'package:gestao_restaurante/global/authentication/view/authentication_page.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.infinity,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
            ),
            const ListTile(
              title: Text('Item 1'),
            ),
            const ListTile(
              title: Text('Item 2'),
            ),
            const Divider(),
            ListTile(
              onTap: () async {
                await LoginFirebase.instance
                    .logout()
                    .then(
                      (value) => Navigator.of(context)
                          .pushReplacement(AuthenticationPage.route()),
                    )
                    .onError((e, t) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Erro ao encerrar sessão'),
                    ),
                  );
                });
              },
              title: const Text('Terminar Sessão'),
              trailing: const Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
    );
  }
}
