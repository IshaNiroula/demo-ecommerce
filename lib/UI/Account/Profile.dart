import 'package:flutter/material.dart';
import 'package:junkiri/UI/Account/ShippingAddress.dart';
import 'package:junkiri/UI/Account/Wallet.dart';
import 'package:junkiri/UI/Account/settings.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.1),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 0.60),
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        15.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Wish List",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_border,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.access_time,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Viewed",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.card_giftcard,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Coupons",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 100,
              child: Image.asset(
                "Images/yellow.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.confirmation_number,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Text(
                "Orders",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            onTap: () {},
            title: Text("Unpaid"),
          ),
          ListTile(
            onTap: () {},
            title: Text("To be Shipped"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Shipped"),
          ),
          ListTile(
            onTap: () {},
            title: Text("To be received"),
          ),
          ListTile(
            onTap: () {},
            title: Text("In dispute"),
          ),
          SizedBox(
            height: 15.0,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Wallet()));
            },
            leading: Icon(
              Icons.account_balance_wallet,
              color: Colors.black,
            ),
            title: Text("Wallet"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShippingAddress()));
            },
            leading: Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            title: Text("Shipping Address"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.share,
              color: Colors.black,
            ),
            title: Text("Invite Friends"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.confirmation_number,
              color: Colors.black,
            ),
            title: Text("Redeem Invite Code"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.message,
              color: Colors.black,
            ),
            title: Text("Questions and Answers"),
          ),
          SizedBox(
            height: 15.0,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));
            },
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text("Settings"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.border_color,
              color: Colors.black,
            ),
            title: Text("App Suggestion"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.headset_mic,
              color: Colors.black,
            ),
            title: Text("Help Center"),
          ),
          SizedBox(
            height: 15.0,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
    // body: AnnotatedRegion<SystemUiOverlayStyle>(
    //   value: SystemUiOverlayStyle.light,
    //   child: Container(
    //     child: Stack(
    //       children: <Widget>[
    //         Container(
    //           height: double.infinity,
    //           width: double.infinity,
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //           ),
    //         ),
    //         Container(
    //           height: MediaQuery.of(context).size.height / 3.5,
    //           width: MediaQuery.of(context).size.width,
    //           color: Colors.black.withOpacity(0.1),
    //           child: Row(
    //             children: <Widget>[
    //               Padding(
    //                 padding: const EdgeInsets.all(12.0),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Text(
    //                     "SIGN IN",
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.black,
    //                       fontSize: 22.0,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               Spacer(),
    //               Padding(
    //                 padding: const EdgeInsets.all(12.0),
    //                 child: CircleAvatar(
    //                   radius: 40,
    //                   backgroundColor: Colors.grey,
    //                   child: IconButton(
    //                     onPressed: () {},
    //                     icon: Icon(
    //                       Icons.person,
    //                       size: 30,
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Positioned(
    //           top: 120,
    //           left: 5,
    //           right: 5,
    //           child: Padding(
    //             padding: const EdgeInsets.all(20.0),
    //             child: Container(
    //               height: 70,
    //               decoration: BoxDecoration(
    //                 color: Colors.white,
    //                 boxShadow: <BoxShadow>[
    //                   BoxShadow(
    //                       color: Colors.black54,
    //                       blurRadius: 5.0,
    //                       offset: Offset(0.0, 0.60))
    //                 ],
    //                 borderRadius: BorderRadius.all(
    //                   Radius.circular(
    //                     15.0,
    //                   ),
    //                 ),
    //               ),
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                 children: <Widget>[
    //                   Column(
    //                     children: <Widget>[
    //                       IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(
    //                           Icons.favorite_border,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                       Text(
    //                         "Wish List",
    //                         style: TextStyle(
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   Column(
    //                     children: <Widget>[
    //                       IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(
    //                           Icons.star_border,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                       Text(
    //                         "Follow",
    //                         style: TextStyle(
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   Column(
    //                     children: <Widget>[
    //                       IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(
    //                           Icons.access_time,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                       Text(
    //                         "Viewed",
    //                         style: TextStyle(
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   Column(
    //                     children: <Widget>[
    //                       IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(
    //                           Icons.blur_linear,
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                       Text(
    //                         "Coupons",
    //                         style: TextStyle(
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
    // );
  }
}

// class Profile extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           toppart(),
//         ],
//       ),
//     );
//   }
// }

// class toppart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light,
//         child: Container(
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                 ),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height / 3.5,
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.black.withOpacity(0.1),
//                 child: Row(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Text(
//                         "SIGN IN",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                           fontSize: 22.0,
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                     Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: CircleAvatar(
//                         radius: 40,
//                         backgroundColor: Colors.grey,
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.person,
//                             size: 30,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 top: 120,
//                 left: 5,
//                 right: 5,
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Container(
//                     height: 70,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: <BoxShadow>[
//                         BoxShadow(
//                             color: Colors.black54,
//                             blurRadius: 5.0,
//                             offset: Offset(0.0, 0.60))
//                       ],
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(
//                           15.0,
//                         ),
//                       ),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: <Widget>[
//                         Column(
//                           children: <Widget>[
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.favorite_border,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             Text(
//                               "Wish List",
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: <Widget>[
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.star_border,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             Text(
//                               "Follow",
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: <Widget>[
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.access_time,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             Text(
//                               "Viewed",
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: <Widget>[
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.blur_linear,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             Text(
//                               "Coupons",
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
