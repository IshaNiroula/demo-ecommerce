import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:junkiri/UI/Home/Menu/Categories/FormalAttire.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

final formatCurrency = new NumberFormat.simpleCurrency();

class CatProd extends StatefulWidget {
  @override
  _CatProdState createState() => _CatProdState();
}

class _CatProdState extends State<CatProd> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  Widget imageSlider = Container(
    color: Colors.black,
    height: 200,
    width: 50,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('Images/coat.jpg'),
          AssetImage('Images/jwell watch.jpg'),
          AssetImage('Images/shoes.jpg'),
          AssetImage('Images/sundress.jpg'),
          AssetImage('Images/chandelier.jpg'),
        ],
        autoplay: false,
        indicatorBgPadding: 1.0,
        dotSize: 2.0,
        dotBgColor: Colors.transparent,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "MultiKart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Formal())),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Product Name",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Vendor Name",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          RatingBar(
                            initialRating: 1,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          imageSlider,
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Price:",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Spacer(),
                RatingBar(
                  initialRating: 1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20.0,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: TabBar(
              controller: _controller,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.android,
                  ),
                  text: 'Product Details',
                ),
                Tab(
                  icon: Icon(
                    Icons.android,
                  ),
                  text: 'Specifications',
                )
              ],
            ),
          ),
          Container(
            height: 100.0,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Card(
                  child: Container(
                    height: 50.0,
                    child: Text(
                        "Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,"),
                  ),
                ),
                Card(
                  child: Container(
                    height: 50.0,
                    child: Text(
                        "Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Text(
                    "Availability: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Text(
                    "Brand: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Text(
                    "Color: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Text(
                    "Quantity",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Plus(),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.orangeAccent,
                ),
                SizedBox(
                  width: 40,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}

class Plus extends StatefulWidget {
  @override
  _PlusState createState() => _PlusState();
}

class _PlusState extends State<Plus> {
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 15.0,
            ),
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: _decreSub,
              tooltip: "Decrement",
              child: Icon(
                Icons.remove,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 25.0,
            ),
            Text(
              '$_add',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: _increAdd,
              tooltip: "Increment",
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
