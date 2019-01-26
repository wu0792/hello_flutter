import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key key, this.titles, this.tabViews}) : super(key: key);

  final List<String> titles;
  final List<Widget> tabViews;

  @override
  _TabsState createState() => _TabsState(titles, tabViews);
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  _TabsState(List<String> titles, List<Widget> views) {
    tabTitles = titles.map((String item) {
      return Tab(text: item);
    }).toList();
    tabViews = views;
  }

  List<Tab> tabTitles = [];
  List<Widget> tabViews = [];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabTitles.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Scaffold(
        body: Container(
          child: Flex(direction: Axis.vertical, children: <Widget>[
            Container(
              color: Colors.blue[200],
              child: TabBar(
                controller: _tabController,
                tabs: tabTitles,
                labelColor: Colors.black,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  child: TabBarView(
                controller: _tabController,
                children: tabViews,
              )),
            )
          ]),
        ),
      ),
    );
  }
}
