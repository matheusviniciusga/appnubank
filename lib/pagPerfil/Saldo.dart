import 'package:flutter/material.dart';

class Saldo extends StatefulWidget {
  const Saldo({super.key});

  @override
  State<Saldo> createState() => MySaldo();
}

class MySaldo extends State<Saldo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Saldo Disponível", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text("R\$19.503,23", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text("3 opções"),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  botoesOp(Icons.move_down_rounded, "Depositar"),
                  botoesOp(Icons.payment_outlined, "Pagar"),
                  botoesOp(Icons.replay_outlined, "Débito Automático"),
                  botoesOp(Icons.handshake_outlined, "Empréstimo"),
                  botoesOp(Icons.wallet_rounded, "Investir"),
                  botoesOp(Icons.savings, "Poupança"),
                ]
              ),
            ),
          )
        ]
      ),
    );
  }
}

Widget botoesOp(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(icon), padding: const EdgeInsets.all(25),),
        Text(text, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
      ],
    ),
  );
}