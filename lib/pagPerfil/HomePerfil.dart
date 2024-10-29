import 'package:flutter/material.dart';
import 'package:flutter_application_atvnubank/pagPerfil/Historico.dart';
import 'package:flutter_application_atvnubank/pagPerfil/Saldo.dart';

class HomePerfil extends StatefulWidget {
  const HomePerfil({super.key});

  @override
  State<HomePerfil> createState() => MyPerfilApp();
}

class MyPerfilApp extends State<HomePerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_outlined), color: Colors.white, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFFBA4DE3)))),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark_rounded), color: const Color(0xFFF5F5F5)),
        ]
      ),
      body: ListView(
        children: const [
          Saldo(),
          SizedBox(height: 30),
          Divider(height: 1),
          Historico()
        ],
      ),
    );
  }
}