import 'package:flutter/material.dart';

class Cartao extends StatefulWidget {
  const Cartao({super.key});

  @override
  State<Cartao> createState() => MyCartao();
}

class MyCartao extends State<Cartao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cartão de Crédito", style: TextStyle(fontSize: 24)),
              Icon(Icons.arrow_right)
            ],
          ),
          SizedBox(height: 10),
          Text("Fatura Fechada", style: TextStyle(fontSize: 18, color: Colors.black54)),
          SizedBox(height: 10),
          Text("R\$2170,68", style: TextStyle(fontSize: 24)),
          SizedBox(height: 15),
          Text("Vencimento dia 15", style: TextStyle(fontSize: 18, color: Colors.black54)),
          SizedBox(height: 15),
          ElevatedButton(onPressed: () {}, child: Text("Renegociar", style: TextStyle(fontSize: 18, color: Colors.black)))
        ],
      )
    );
  }
}