import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
//import 'package:junkiri/Details.dart';
//import 'package:junkiri/products.dart';

final formatCurrency = new NumberFormat.simpleCurrency();

class Brand extends StatefulWidget {
  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  Widget _written() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem,",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: "Verdana",
        ),
      ),
    );
  }

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

  Widget _shoppingcart() {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
    );
  }

  Widget _wishlist() {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.favorite,
        color: Colors.white,
      ),
    );
  }

  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: false,
            floating: true,
            snap: true,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: Text(
              "Detail",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: <Widget>[
              _shoppingcart(),
              _wishlist(),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: Image.asset(
                        "Images/coat.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: Image.asset("Images/sundress.jpg"),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: Image.asset("Images/lights.jpg"),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: Image.asset("Images/yellow.jpg"),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: Image.asset("Images/coat.jpg"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "SALE",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "US ${formatCurrency.format(10)}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    _rating(),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Container(
          //     height: 275.0,
          //     width: MediaQuery.of(context).size.width,
          //     child: ListView(
          //         ),
          //   ),
          // ),
          SizedBox(
            height: 15.0,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
          _written(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: nested(),
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

// class Brand extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(children: [
//       Stack(children: [
//         Container(
//           height: 400.0,
//           decoration: BoxDecoration(
//               borderRadius:
//                   BorderRadius.only(bottomLeft: Radius.circular(50.0)),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     blurRadius: 12.0,
//                     spreadRadius: 7.0)
//               ]),
//         ),
//         Positioned(
//             top: 15.0,
//             child: Container(
//               padding: EdgeInsets.only(left: 15.0, right: 15.0),
//               width: MediaQuery.of(context).size.width,
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.search,
//                       color: Colors.grey,
//                     ),
//                     Icon(
//                       Icons.notifications,
//                       color: Colors.grey,
//                     ),
//                   ]),
//             )),
//         Positioned(
//             top: 15.0,
//             right: 15.0,
//             child: Container(
//               height: 10.0,
//               width: 10.0,
//               decoration: BoxDecoration(
//                   color: Colors.red, borderRadius: BorderRadius.circular(5.0)),
//               child: Center(
//                   child: Text('1',
//                       style: TextStyle(fontSize: 7.0, color: Colors.white))),
//             )),
//         Positioned(
//           top: 45.0,
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             padding: EdgeInsets.only(left: 15.0, right: 15.0),
//             child: Column(
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text('Boutique',
//                         style: TextStyle(
//                             fontFamily: 'AbrilFatFace', fontSize: 25.0)),
//                     Text('More',
//                         style: TextStyle(color: Colors.grey, fontSize: 12.0))
//                   ],
//                 ),
//                 SizedBox(height: 10.0),
//                 Container(
//                     height: 275.0,
//                     width: MediaQuery.of(context).size.width,
//                     child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         children: products.map((wine) {
//                           return _buildCard(wine);
//                         }).toList()))
//               ],
//             ),
//           ),
//         ),
//       ]),
//       Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Text('Recommend',
//                 style: TextStyle(fontFamily: 'AbrilFatFace', fontSize: 25.0)),
//             Text('More', style: TextStyle(color: Colors.grey, fontSize: 12.0))
//           ],
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Container(
//           height: 275.0,
//           width: MediaQuery.of(context).size.width,
//           child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: recommended.map((wine) {
//                 return _buildCard(wine);
//               }).toList()),
//         ),
//       )
//     ]));
//   }

//   Widget _buildCard(wine) {
//     return Padding(
//         padding: EdgeInsets.all(10.0),
//         child: InkWell(
//             onTap: () {},
//             child: Container(
//                 width: 200.0,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 4.0,
//                           spreadRadius: 5.0,
//                           color: Colors.grey.withOpacity(0.1))
//                     ]),
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                         height: 250.0,
//                         width: 200.0,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.0),
//                             color: Colors.white)),
//                     Container(
//                       height: 160.0,
//                       width: 200.0,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(10.0),
//                               topRight: Radius.circular(10.0)),
//                           color: wine.bgColor),
//                     ),
//                     Padding(
//                         padding: EdgeInsets.only(top: 20.0),
//                         child: Hero(
//                             tag: wine.imgPath,
//                             child: Container(
//                                 height: 125.0,
//                                 width: 200.0,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: AssetImage(wine.imgPath),
//                                         fit: BoxFit.contain),
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(10.0),
//                                         topRight: Radius.circular(10.0)))))),
//                     Positioned(
//                       top: 7.0,
//                       left: 7.0,
//                       child: Text(wine.price,
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14.0,
//                               fontWeight: FontWeight.bold)),
//                     ),
//                     Positioned(
//                         top: 7.0,
//                         right: 10.0,
//                         child: Icon(Icons.shopping_cart,
//                             color: Colors.white, size: 15.0)),
//                     Positioned(
//                         top: 175.0,
//                         left: 10.0,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text(wine.title,
//                                 style: TextStyle(
//                                   fontFamily: 'AbrilFatFace',
//                                   fontSize: 14.0,
//                                 )),
//                             SizedBox(height: 5.0),
//                             Text(wine.subTitle,
//                                 style: TextStyle(
//                                     fontSize: 11.0, color: Colors.grey)),
//                             SizedBox(height: 5.0),
//                           ],
//                         ))
//                   ],
//                 ))));
//   }
// }
