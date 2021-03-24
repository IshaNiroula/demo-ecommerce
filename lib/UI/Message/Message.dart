// import 'dart:convert';
// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// class Message extends StatefulWidget {
//   @override
//   _MessageState createState() => _MessageState();
// }

// class _MessageState extends State<Message> {
//   final String url = "http://192.168.1.110/api/Category";
//   List data;

//   @override
//   void initState() {
//     super.initState();
//     this._apidoit();
//   }

//   Future<String> _apidoit() async {
//     var response = await http.get(
//       Uri.encodeFull(url),
//       headers: {"accept": "application/json"},
//     );

//     //print(response.body);

//     setState(() {
//       var convertDataToJson = json.decode(response.body);
//       data = convertDataToJson;
//     });

//     return 'Success';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _apidoit(),
//         builder: (context, snapshot) {
//           if (snapshot.data != null) {
//             return Container(
//               height: MediaQuery.of(context).size.height,
//               child: ListView.builder(
//                 itemCount: data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Card(
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.red,
//                           child: Card(
//                             child: Center(
//                               child: Text(
//                                 data[index]['categoryName'],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.red,
//                           child: Card(
//                             child: Center(
//                               child: Text(
//                                 data[index]['priceRanges'],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.red,
//                           child: Card(
//                             child: Center(
//                               child: Text(
//                                 data[index]['metaTitle'],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.red,
//                           child: Card(
//                             child: Center(
//                               child: Text(
//                                 data[index]['metaKeywords'],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.red,
//                           child: Card(
//                             child: Text(
//                               data[index]['pageSizeOptions'],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.red,
//                           child: Card(
//                             child: Center(
//                               child: Text(
//                                 data[index]['metaDescription'],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 50,
//                           color: Colors.red,
//                           child: Card(
//                             child: Center(
//                               child: Text(
//                                 data[index]['metaDescription'],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             );
//           } else {
//             return Container(
//               child: Center(
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height / 2,
//                     ),
//                     CircularProgressIndicator(),
//                   ],
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
