import 'package:flutter/material.dart';
import 'package:hello_flutter/common/tabs.dart';

class TopSearch extends StatefulWidget {
  TopSearch({Key key}) : super(key: key);

  @override
  _TopSearchState createState() => _TopSearchState();
}

class _TopSearchState extends State<TopSearch> {
  @override
  Widget build(BuildContext context) {
    var owPanel = Column(
      children: <Widget>[
        Flex(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextField(decoration: InputDecoration(hintText: '出发城市')),
            ),
            IconButton(
              icon: Icon(Icons.cached),
              onPressed: () {},
            ),
            Expanded(
              flex: 1,
              child: TextField(decoration: InputDecoration(hintText: '到达城市')),
            ),
          ],
          direction: Axis.horizontal,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '出发日期',
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text('头等舱/公务舱'),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text('1成人 0儿童 0婴儿'),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Text('搜索'),
                textColor: Colors.white,
                color: Color.fromARGB(100, 254, 90, 0),
                onPressed: () {},
              ),
            )
          ],
        )
      ],
    );

    return Tabs(
      titles: ['单程', '往返', '多程'].toList(),
      tabViews: [
        owPanel,
        Text('往返'),
        Text('多程'),
      ].toList(),
    );
  }
}
