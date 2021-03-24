//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:junkiri/UI/Home/Menu/Categories/FormalAttire.dart';
import 'package:junkiri/UI/Home/Search.dart';
import 'package:junkiri/UI/Message/Message.dart';

//import 'dart:async';
//import 'package:http/http.dart' as http;

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Widget _leadicon() {
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

  Widget _search() {
    return FlatButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Search())),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            "Search",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _cart() {
    return IconButton(
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.black,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Message())));
  }

  Widget _notifications() {
    return IconButton(
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Message())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          60.0,
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: _leadicon(),
          title: Container(
            child: _search(),
          ),
          actions: <Widget>[
            _cart(),
            _notifications(),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                height: 50.0,
                color: Colors.grey[200],
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "All Categories",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Formal())),
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Apparel Accessories',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Apparel for Men',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Apparel for Women',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Automobiles & Motorcycles',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Beauty & Health',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Cellphones & Telecommunications',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Computer & Office',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Consumer Electronics',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Education & Office Supplies',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Electronic Components & Supplies',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Food',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Furniture',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Hair Extensions & Wigs',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Home & Garden',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Home Appliances',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Home Improvement',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Jwellery & Accessories',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Lights & Lighting',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Luggage & Bags',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Mother & Kids',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Novelty & Special Use',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Shoes',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Sports & Entertainment',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Tools',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Toys & Hobbies',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Sleepweares',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Watches',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset("Images/coat.jpg"),
                title: Text(
                  'Weddings & Events',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
