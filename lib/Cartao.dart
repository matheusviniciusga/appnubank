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
              Text("Cartão de Crédito"),
              Icon(Icons.arrow_right)
            ],
          ),
          Text("Fatura Fechada"),
          Text("R\$2170,68"),
          Text("Vencimento dia 15"),
          ElevatedButton(onPressed: () {}, child: Text("Renegociar"))
        ],
      )
    );
  }
}