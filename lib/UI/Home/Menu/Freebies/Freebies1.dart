import 'package:flutter/material.dart';

class Freebies1 extends StatefulWidget {
  @override
  _Freebies1State createState() => _Freebies1State();
}

class _Freebies1State extends State<Freebies1>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = <String>[
      "Featured",
      "Popular",
      "Latest",
    ];

    return Material(
      child: Scaffold(
        body: DefaultTabController(
          length: _tabs.length,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  child: SliverSafeArea(
                    top: false,
                    //bottom: Platform.isIOS ? false : true,
                    sliver: SliverAppBar(
                      expandedHeight: 200,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          child: Image.asset(
                            "Images/lights.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      floating: true,
                      automaticallyImplyLeading: false,
                      pinned: true,
                      snap: true,
                      forceElevated: innerBoxIsScrolled,
                      bottom: TabBar(
                        tabs: _tabs
                            .map((String name) => Tab(text: name))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: _tabs.map((String name) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: Builder(
                    builder: (BuildContext context) {
                      return NotificationListener<ScrollNotification>(
                        onNotification: (scrollNotification) {
                          return true;
                        },
                        child: CustomScrollView(
                          key: PageStorageKey<String>(name),
                          slivers: <Widget>[
                            SliverOverlapInjector(
                              handle: NestedScrollView
                                  .sliverOverlapAbsorberHandleFor(context),
                            ),
                            SliverPadding(
                              padding: const EdgeInsets.all(8.0),
                              sliver: SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    return Column(
                                      children: <Widget>[
                                        Container(
                                          height: 150,
                                          width: double.infinity,
                                          color: Colors.blueGrey,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text('$name $index')
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        )
                                      ],
                                    );
                                  },
                                  childCount: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
    // Scaffold(
    //   body: ListView(
    //     children: <Widget>[
    //       Container(
    //         height: 120,
    //         child: Image.asset(
    //           "Images/lights.jpg",
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       Container(
    //         decoration: BoxDecoration(color: Theme.of(context).primaryColor),
    //         child: TabBar(
    //           isScrollable: true,
    //           controller: _controller,
    //           tabs: [
    //             Tab(
    //               text: 'Address',
    //             ),
    //             Tab(
    //               text: 'Location',
    //             ),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         height: MediaQuery.of(context).size.height,
    //         child: TabBarView(
    //           controller: _controller,
    //           children: <Widget>[
    //             Profile(),
    //             Profile(),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
