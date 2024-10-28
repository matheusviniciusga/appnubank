import 'package:flutter/material.dart';
import 'package:flutter_application_atvnubank/pagPerfil/HomePerfil.dart';
import 'package:flutter_application_atvnubank/pagPrincipal/HomePage.dart';

class MyAppBody extends StatelessWidget {
  const MyAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8A05BE),
          leading: Builder(builder: (context) => IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePerfil())
              );
            }, icon: Icon(Icons.person_outline), color: Colors.white, style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFFBA4DE3)))),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.visibility_outlined), color: Color(0xFFF5F5F5)),
            IconButton(onPressed: () {}, icon: Icon(Icons.question_mark_rounded), color: Color(0xFFF5F5F5)),
            IconButton(onPressed: () {}, icon: Icon(Icons.mark_email_read_outlined), color: Color(0xFFF5F5F5))
          ]
        ),
        body: const HomePage()
      )
    );
  }
}