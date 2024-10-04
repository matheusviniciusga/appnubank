import 'package:flutter/material.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => MyConta();
}

class MyConta extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Conta", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Icon(Icons.arrow_right)
            ],
          ),
          SizedBox(height: 10),
          Text("R\$1233,80", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.pix), padding: EdgeInsets.all(25)),
                  Text("Área Pix", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ]
              ),
              Column(
                children: [
                  IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.money), padding: EdgeInsets.all(25)),
                  Text("Pagamentos", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ]
              ),
              Column(
                children: [
                  IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.qr_code), padding: EdgeInsets.all(25)),
                  Text("QRcode", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ]
              ),
              Column(
                children: [
                  IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.attach_money), padding: EdgeInsets.all(25)),
                  Text("Transferir", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                ]
              ),
            ]
          ),
          SizedBox(height: 30),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Icon(Icons.card_giftcard),
              title: Text("Meus Cartões", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 30),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Guarde o seu dinheiro em caixinhas", style: TextStyle(color: Color(0xFF8A05BE), fontWeight: FontWeight.bold)),
              subtitle: Text("Acessando a área de planejamento"),
            ),
          )
        ],
      )
    );
  }
}