import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class Formal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _leadingicon() {
      return IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: _leadingicon(),
        title: Text(
          "Formal",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: attire.length,
          itemBuilder: (context, index) => Row(
            children: [
              Column(
                children: [
                  attire[index],
                ],
              ),
              Column(
                children: [
                  //attire[index]
                  reversedattire[index],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Attire> attire = [
  Attire("Images/chandelier.jpg", "Chandelier", 10),
  Attire("Images/coat.jpg", "Coat", 10),
  Attire("Images/jwellwatch.jpg", "Watch", 10),
  Attire("Images/shoes.jpg", "Shoes", 10),
  Attire("Images/sundress.jpg", "Dress", 10),
  Attire("Images/chandelier.jpg", "Chandelier", 10),
  Attire("Images/coat.jpg", "Coat", 10),
  Attire("Images/jwellwatch.jpg", "Watch", 10),
  Attire("Images/shoes.jpg", "Shoes", 10),
  Attire("Images/sundress.jpg", "Dress", 10),
];
List<Attire> reversedattire = attire.reversed.toList();

final formatCurrency = new NumberFormat.simpleCurrency();

class Attire extends StatelessWidget {
  final String ipath, name;
  final int price;

  Attire(this.ipath, this.name, this.price);
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
      padding: const EdgeInsets.all(14.0),
      child: InkWell(
        // onTap: () => Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Brand())),
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
            ),
            Container(
              height: 160,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ipath,
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
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${formatCurrency.format(price)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
