import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:junkiri/UI/Home/Brand.dart';
//import 'package:junkiri/Brand.dart';
import 'package:junkiri/UI/Cart/Cart.dart';
import 'package:junkiri/UI/Home/Menu/Categories/FormalAttire.dart';
import 'package:junkiri/UI/Home/Menu/Freebies/Freebies.dart';
//import 'package:junkiri/Details.dart';
import 'package:junkiri/UI/Home/Search.dart';
import 'package:junkiri/UI/Home/Menu/Categories/Menu.dart';
import 'package:junkiri/UI/Message/Message.dart';
import 'package:junkiri/ViewAll.dart';
//import 'package:junkiri/products.dart';

class Content extends StatefulWidget {
  final String image;
  final String text;

  Content({this.image, this.text});

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        2.0,
      ),
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(
            widget.image,
            width: 30.0,
            height: 25.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10.0,
                letterSpacing: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _topapp() {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.landscape,
        color: Colors.black,
        size: 30.0,
      ),
    );
  }

  Widget _appbarcart() {
    return IconButton(
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.black,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Cart())));
  }

  Widget _appbarnotifications() {
    return IconButton(
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Message())));
  }

  Widget _freeshipping() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.airport_shuttle,
              color: Colors.black,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Free Shipping",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("For orders from ${formatCurrency.format(50)}"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _callus() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.call,
              color: Colors.black,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Support 24/7",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Call us anytime"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hotoffers() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.tag_faces,
              color: Colors.black,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hot Offers",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Discount upto 90%",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _safety() {
    return FlatButton(
      onPressed: () {},
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.lock_outline,
              color: Colors.black,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "100% Safety",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Only secure Payments"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categories() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Menu()));
      },
      child: Content(
        image: "Images/category.png",
        text: "Categories",
      ),
    );
  }

  Widget _coins() {
    return InkWell(
      onTap: () {},
      child: Content(
        image: "Images/star.png",
        text: "Coins",
      ),
    );
  }

  Widget _freebies() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Freebies()));
      },
      child: Content(
        image: "Images/freebies.jpg",
        text: "Freebies",
      ),
    );
  }

  Widget _flashdeals() {
    return InkWell(
      onTap: () {},
      child: Content(
        image: "Images/flash.png",
        text: "Flash Deals",
      ),
    );
  }

  Widget _topselection() {
    return InkWell(
      onTap: () {},
      child: Content(
        image: "Images/topselection.png",
        text: "Top Selection",
      ),
    );
  }

  Widget _viewall() {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ViewAll()));
      },
      child: Text(
        "View All->",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.red,
        ),
      ),
    );
  }

  Widget _searchbar() {
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



  @override
  Widget build(BuildContext context) {
    Widget _imageSlider = Container(
      height: 150,
      child: InkWell(
        child: Carousel(
          boxFit: BoxFit.contain,
          images: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Menu()));
              },
              child: Image.asset('Images/coat.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Formal()));
              },
              child: Image.asset('Images/jwellwatch.jpg'),
            ),
            //AssetImage('Images/jwellwatch.jpg'),
            AssetImage('Images/shoes.jpg'),
            AssetImage('Images/sundress.jpg'),
            AssetImage('Images/chandelier.jpg'),
          ],
          autoplay: true,
          indicatorBgPadding: 1.0,
          animationCurve: Curves.ease,
          dotSize: 3.0,
          dotBgColor: Colors.transparent,
          dotColor: Colors.indigo[300],
          borderRadius: true,
          overlayShadow: true,
          overlayShadowColors: Colors.white,
          overlayShadowSize: 0.7,
        ),
      ),
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: _topapp(),
          actions: <Widget>[
            _appbarcart(),
            _appbarnotifications(),
          ],
          title: Container(
            child: _searchbar(),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          _imageSlider,
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 90.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        _freeshipping(),
                        _callus(),
                        _safety(),
                        _hotoffers(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.0,
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
              ),
              Text(
                "Menu",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _categories(),
                _coins(),
                _freebies(),
                _flashdeals(),
                _topselection(),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                ),
                Text(
                  "Week Promotion",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                _viewall(),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: prods,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                ),
                Text(
                  "Festiv Offer",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                _viewall(),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: prods,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                ),
                Text(
                  "Festiv Offer",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                _viewall(),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: prods,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                ),
                Text(
                  "More to Love",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 100,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              //reverse: true,
              itemCount: prods.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Column(
                    children: [
                      prods[index],
                    ],
                  ),
                  Column(
                    children: [
                      reversedprods[index],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Prods> prods = [
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
  Prods("Images/chandelier.jpg", "Chandelier", 9),
  Prods("Images/coat.jpg", "Coat", 9),
  Prods("Images/jwellwatch.jpg", "Watch", 9),
  Prods("Images/shoes.jpg", "Shoes", 9),
  Prods("Images/sundress.jpg", "Dress", 9),
];

List<Prods> reversedprods = prods.reversed.toList();

final formatCurrency = new NumberFormat.simpleCurrency();

class Prods extends StatelessWidget {
  final String path, prodName;
  final int newPrice;
  Prods(this.path, this.prodName, this.newPrice);
  @override
  Widget build(BuildContext context) {
    Widget _rating() {
      return RatingBar(
        initialRating: 1,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 15.0,
        //itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Brand()));
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
            ),
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    path,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              top: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    prodName,
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    '${formatCurrency.format(newPrice)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  _rating(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
