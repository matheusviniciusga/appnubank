import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  const Historico ({super.key});

  @override
  State<Historico > createState() => MyHistorico ();
}

class MyHistorico  extends State<Historico > {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: Icon(Icons.handshake_outlined),
              title: Text("Até R\$50.000,00 disponíveis para empréstimo"),
            ),
          ),
          SizedBox(height: 10),
          Text("Histórico")
        ],
      ),
    );
  }
}