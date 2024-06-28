import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gestao_restaurante/app/app.dart';
import 'package:gestao_restaurante/bootstrap.dart';
import 'package:gestao_restaurante/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await bootstrap(() => const App());
}
