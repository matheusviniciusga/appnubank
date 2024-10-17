import 'package:flutter/material.dart';

class HomePerfil extends StatefulWidget {
  const HomePerfil({super.key});

  @override
  State<HomePerfil> createState() => MyPerfilApp();
}

class MyPerfilApp extends State<HomePerfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Text("Teste");
            ]
          ),
        ]
      ),
    );
  }
}