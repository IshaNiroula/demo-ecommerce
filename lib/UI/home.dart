import 'package:flutter/material.dart';
import 'package:junkiri/UI/Cart/Cart.dart';
//import 'package:junkiri/Details.dart';
import 'package:junkiri/UI/Feed/Feed.dart';
import 'package:junkiri/UI/Home/HomePage.dart';
import 'package:junkiri/UI/Account/Profile.dart';
import 'package:junkiri/UI/Message/Message.dart';

class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  int selectedPage = 0;

  Widget _pageOptions(int current) {
    switch (current) {
      case 0:
        return HomePage();
        break;
      case 1:
        return Feed();
        break;
      case 2:
        return Message();
        break;
      case 3:
        return Cart();
        break;
      case 4:
        return Profile();
        break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        body: _pageOptions(selectedPage),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedPage,
          onTap: (value) {
            setState(() {
              selectedPage = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 23.0,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wifi,
                color: Colors.black,
              ),
              title: Text(
                "Feed",
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                size: 23.0,
                color: Colors.black,
              ),
              title: Text('Messaage',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 23.0,
                color: Colors.black,
              ),
              title: Text('Cart',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 23.0,
                color: Colors.black,
              ),
              title: Text('Account',
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
