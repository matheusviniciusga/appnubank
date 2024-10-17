import 'package:flutter/material.dart';

class Emprestimo extends StatefulWidget {
  const Emprestimo({super.key});

  @override
  State<Emprestimo> createState() => MyEmprestimo();
}

class MyEmprestimo extends State<Emprestimo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Empréstimo", style: TextStyle(fontSize: 24)),
              Icon(Icons.arrow_right)
            ],
          ),
          SizedBox(height: 10),
          Text("Tudo Certo! Você está em dia", style: TextStyle(fontSize: 18)),
          SizedBox(height: 30),
          Divider(height: 1),
          SizedBox(height: 30),
          Text("Descubra Mais", style: TextStyle(fontSize: 24)),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              title: Column(
                children: [
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQarSZg3a4rnM-i_5zv-J0FFArW3-GMx-myVQ&s'),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("Seguro de Vida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("Cuide bem de quem você ama de um jeito simples", style: TextStyle(fontSize: 18, color: Colors.black54)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
                      child: ElevatedButton(onPressed: () {}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFF8A05BE)),), child: Text("Conhecer", style: TextStyle(color: Colors.white),)),
                    )
                  ],
                ),
              )
            ),
          )
        ],
      )
    );
  }
}