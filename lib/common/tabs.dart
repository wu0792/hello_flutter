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
    });
    tabViews = views;
  }

  List<Tab> tabTitles = [];
  List<Tab> tabViews = [];

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
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: tabTitles,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabViews,
      ),
    );
  }
}
