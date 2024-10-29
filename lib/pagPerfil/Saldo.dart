import 'package:flutter/material.dart';

class Saldo extends StatefulWidget {
  const Saldo({super.key});

  @override
  State<Saldo> createState() => MySaldo();
}

class MySaldo extends State<Saldo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: ListTile(
          title: Text("Saldo Disponível"),
          subtitle: Text("R\$19.503,23")
        )),
        const SizedBox(height: 10),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: ListTile(
          title: Text("Saldo Separado"),
          subtitle: Text("R\$17.544,89"),
          leading: Icon(Icons.wallet_rounded),
          trailing: Icon(Icons.keyboard_arrow_right)
        ),),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: ListTile(
          title: Text("Gastos Previstos"),
          subtitle: Text("R\$298,88"),
          leading: Icon(Icons.monitor_heart_outlined),
          trailing: Icon(Icons.keyboard_arrow_right_rounded)
        ),),
        const Padding(padding: EdgeInsets.all(0), child: ListTile(
          title: Text("Meus Investimentos"),
          subtitle: Text("Organize e conquiste objetivos"),
          leading: Icon(Icons.attach_money_rounded),
          trailing: Icon(Icons.keyboard_arrow_right_rounded)
        ),),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
    );
  }
}

Widget botoesOp(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        IconButton.filledTonal(onPressed: () {}, icon: Icon(icon), padding: const EdgeInsets.all(25),),
        Text(text, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
      ],
    ),
  );
}