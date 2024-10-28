import 'package:flutter/material.dart';
import 'package:flutter_application_atvnubank/pagPerfil/HomePerfil.dart';
import 'package:flutter_application_atvnubank/pagPrincipal/HomePage.dart';

import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> main() async {
  const keyApplicationId = '4MFaZJXEqrvNVHETj945bfA880DqKGunLDyIiW0T';
  const keyClientKey = '6C425wQELGS0iP1BF4wmZHI2ePAaANMQp3dluue8';
  const keyParseServerUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey, debug: true
  );

  runApp(const MyApp());
}

/*void main() {
  runApp(const MyApp());
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/profile': (context) => const HomePerfil()
      },
    );
  }
}
