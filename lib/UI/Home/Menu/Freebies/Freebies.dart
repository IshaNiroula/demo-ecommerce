import 'package:flutter/material.dart';
import 'package:junkiri/UI/Home/Menu/Freebies/Freebies1.dart';
import 'package:junkiri/UI/Home/Menu/Freebies/Freebies2.dart';
import 'package:junkiri/UI/Home/Menu/Freebies/Freebies3.dart';

class Freebies extends StatefulWidget {
  @override
  _FreebiesState createState() => _FreebiesState();
}

class _FreebiesState extends State<Freebies> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    Widget _leading() {
      return IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      );
    }

    Widget _search() {
      return IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {},
      );
    }

    Widget _cart() {
      return IconButton(
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        onPressed: () {},
      );
    }

    Widget _popup() {
      return PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: Text("Home"),
            ),
            PopupMenuItem(
              child: Text("Account"),
            ),
            PopupMenuItem(
              child: Text("Wish List"),
            ),
            PopupMenuItem(
              child: Text("Messages"),
            ),
            PopupMenuItem(
              child: Text("Settings"),
            ),
          ];
        },
      );
    }

    final _kTabPage = <Widget>[
      Freebies1(),
      Freebies2(),
      Freebies3(),
    ];
    final itemstyle = Colors.greenAccent;

    final _kBottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.card_giftcard,
          color: itemstyle,
        ),
        title: Text(
          "Freebies",
          style: TextStyle(
            color: itemstyle,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.open_with,
        ),
        title: Text("Freebies Review"),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
        ),
        title: Text("My Freebies"),
      ),
    ];
    assert(_kTabPage.length == _kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottomNavBarItems,
      currentIndex: selectedPage,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          selectedPage = index;
        });
      },
    );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: _leading(),
        title: Text(
          "MultiKart",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          _search(),
          _cart(),
          _popup(),
        ],
      ),
      body: _kTabPage[selectedPage],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
