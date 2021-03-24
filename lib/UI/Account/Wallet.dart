import 'package:flutter/material.dart';
import 'package:junkiri/UI/Cart/Cart.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Wallet'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Cart()));
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {},
            title: Text("Coins"),
          ),
          ListTile(
            onTap: () {},
            title: Text("My Pocket"),
          ),
          ListTile(
            onTap: () {},
            title: Text("My Credit/Debit Cards"),
          ),
        ],
      ),
    );
  }
}
