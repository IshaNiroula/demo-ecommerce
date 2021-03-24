import 'package:flutter/material.dart';
import 'package:junkiri/UI/Feed/Following.dart';
import 'package:junkiri/UI/Feed/Inspiration.dart';
import 'package:junkiri/UI/Feed/Live.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> with SingleTickerProviderStateMixin {
  TabController _control;
  @override
  void initState() {
    super.initState();
    _control = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final _kTabs = <Tab>[
      Tab(
        text: 'FOLLOWING',
      ),
      Tab(
        text: 'INSPIRATION',
      ),
      Tab(
        text: 'LIVE',
      ),
    ];

    final _kPages = <Widget>[
      Following(),
      Inspiration(),
      Live(),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            controller: _control,
            isScrollable: true,
            tabs: _kTabs,
          ),
          title: Text(
            "Feed",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_add,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _control,
        children: _kPages,
      ),
    );
  }
}
