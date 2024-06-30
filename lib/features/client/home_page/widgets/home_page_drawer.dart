import 'package:flutter/material.dart';
import 'package:gestao_restaurante/global/login/view/login_page.dart';

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
              onTap: () => Navigator.of(context).pushReplacement(
                LoginPage.route(),
              ),
              title: const Text('Terminar Sessão'),
              trailing: const Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
    );
  }
}
