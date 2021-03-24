import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
          "Settings",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {},
            title: Text("Profile"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Shipping Address"),
          ),
          ListTile(
            onTap: () {},
            title: Text("My Interests"),
          ),
          SizedBox(
            height: 5,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Ship to"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Currency"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Language"),
          ),
          SizedBox(
            height: 5,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Notification Settings"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Viewed"),
          ),
          ListTile(
            onTap: () {},
            title: Text("App Image Quality"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Clear Cache"),
          ),
          SizedBox(
            height: 5,
            child: Container(
              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 5.0,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text("Rate App"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Privacy Policy"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Legal Information"),
          ),
          ListTile(
            onTap: () {},
            title: Text("Version"),
          ),
        ],
      ),
    );
  }
}
