import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  var prodoncart = [
    {
      "name": "Coat",
      "picture": "Images/coat.jpg",
      "price": 15,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Sundress",
      "picture": "Images/sundress.jpg",
      "price": 20,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Shoes",
      "picture": "Images/shoes.jpg",
      "price": 25,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Coat",
      "picture": "Images/coat.jpg",
      "price": 5,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Sundress",
      "picture": "Images/sundress.jpg",
      "price": 25,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Shoes",
      "picture": "Images/shoes.jpg",
      "price": 25,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Coat",
      "picture": "Images/coat.jpg",
      "price": 15,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Sundress",
      "picture": "Images/sundress.jpg",
      "price": 20,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Shoes",
      "picture": "Images/shoes.jpg",
      "price": 25,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Coat",
      "picture": "Images/coat.jpg",
      "price": 5,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Sundress",
      "picture": "Images/sundress.jpg",
      "price": 25,
      "quantity": 2,
      "total": 50,
    },
    {
      "name": "Shoes",
      "picture": "Images/shoes.jpg",
      "price": 25,
      "quantity": 2,
      "total": 50,
    }
  ];

  Widget _leadingappbar() {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    );
  }

  Widget _cart() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 150.0,
        width: 30.0,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => Cart()));
          },
          child: Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
              prodoncart.length == 0
                  ? Container()
                  : Positioned(
                      child: Stack(
                        children: <Widget>[
                          Icon(Icons.brightness_1,
                              size: 20.0, color: Colors.green[800]),
                          Positioned(
                            top: 4.0,
                            right: 4.0,
                            child: Center(
                              child: Text(
                                prodoncart.length.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          _cart(),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: _leadingappbar(),
        title: Text(
          "Cart",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: prodoncart.length,
              itemBuilder: (context, index) {
                return cartItems(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget cartItems(index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        height: 130,
        child: Row(
          children: <Widget>[
            Container(
              width: 130,
              child: Image.asset(
                prodoncart[index]['picture'],
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            prodoncart[index]['name'],
                            overflow: TextOverflow.fade,
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 50,
                          child: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {},
                            color: Colors.red,
                            iconSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Price: "),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          prodoncart[index]['price'].toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Qty: "),
                        Spacer(),
                        Qty(),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Qty extends StatefulWidget {
  @override
  _QtyState createState() => _QtyState();
}

class _QtyState extends State<Qty> {
  int _add = 1;
  void _increAdd() {
    setState(() {
      _add++;
    });
  }

  void _decreSub() {
    setState(() {
      if (_add != 0) {
        _add--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: _decreSub,
            splashColor: Colors.red,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_add',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          InkWell(
            onTap: _increAdd,
            splashColor: Colors.red,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
