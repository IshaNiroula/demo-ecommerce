import 'package:flutter/material.dart';
//import 'package:junkiri/Menu.dart';

class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        child: ListView(
          children: <Widget>[
            _showfeed(),
            // SizedBox(
            //   height: 10,
            //   child: Container(
            //     color: Colors.grey.withOpacity(0.2),
            //   ),
            // ),
            _showfeed(),
          ],
        ),
      ),
    );
  }

  Widget _showfeed() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            ListTile(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Menu()));
              },
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("Images/lights.jpg"),
              ),
              title: Text("NAME"),
              subtitle: Text("name"),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.red,
                      child: Text(
                        "+ FOLLOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 70,
              left: 10,
              child: Column(
                children: <Widget>[
                  Text(
                    "LoreumImnkvjdhfiihncfjskvuhsnruuik",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Positioned(
              top: 90,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 10,
              child: Column(
                children: <Widget>[
                  Text(
                    "LoreumImnkvjdhfiihncfjskvuhsnruuik",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              left: 10,
              child: Column(
                children: <Widget>[
                  Text(
                    "LoreumImnkvjdhfiihncfjskvuhsnruuik ",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.comment,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
