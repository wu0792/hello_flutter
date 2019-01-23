import 'package:flutter/material.dart';

class TopSearch extends StatefulWidget {
  TopSearch({Key key}) : super(key: key);

  @override
  _TopSearchState createState() => _TopSearchState();
}

class _TopSearchState extends State<TopSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.all(3),
          child: Column(
            children: <Widget>[
              Flex(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                        decoration: InputDecoration(hintText: '出发城市'),
                        onFieldSubmitted: (value) {}),
                  ),
                  IconButton(
                    icon: Icon(Icons.cached),
                    onPressed: () {},
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                        decoration: InputDecoration(hintText: '到达城市'),
                        onFieldSubmitted: (value) {}),
                  ),
                ],
                direction: Axis.horizontal,
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      child: Text('查 询'),
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
