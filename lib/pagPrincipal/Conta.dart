import 'package:flutter/material.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => MyConta();
}

class MyConta extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Conta", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        const SizedBox(height: 10),
        const Text("R\$1233,80", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.pix), padding: const EdgeInsets.all(25)),
                const Text("Área Pix", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ]
            ),
            Column(
              children: [
                IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.money), padding: const EdgeInsets.all(25)),
                const Text("Pagamentos", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ]
            ),
            Column(
              children: [
                IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.qr_code), padding: const EdgeInsets.all(25)),
                const Text("QRcode", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ]
            ),
            Column(
              children: [
                IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.attach_money), padding: const EdgeInsets.all(25)),
                const Text("Transferir", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ]
            ),
          ]
        ),
        const SizedBox(height: 30),
        const Card(
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Icon(Icons.card_giftcard),
            title: Text("Meus Cartões", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(height: 30),
        const Card(
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text("Guarde o seu dinheiro em caixinhas", style: TextStyle(color: Color(0xFF8A05BE), fontWeight: FontWeight.bold)),
            subtitle: Text("Acessando a área de planejamento"),
          ),
        )
      ],
    );
  }
}