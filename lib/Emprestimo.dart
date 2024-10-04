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
            children: [
              Text("Empréstimo"),
              Icon(Icons.arrow_right)
            ],
          ),
          Text("Tudo Certo! Você está em dia"),
          Divider(height: 1),
          Text("Descubra Mais"),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              title: Column(
                children: [
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQarSZg3a4rnM-i_5zv-J0FFArW3-GMx-myVQ&s'),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(onPressed: () {}, child: Text("Conhecer")),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}