import 'package:flutter/material.dart';
import 'package:xbatch/scaffold.dart';
import 'package:xbatch/custom/expanded_list_view.dart';
import 'package:xbatch/layout/column_list.dart';
import './list.dart';

class ColorBook extends StatefulWidget {
  const ColorBook({
      Key key,
  }) : super(key: key);
  
  @override
  _ColorBook createState() => _ColorBook();
}

class _ColorBook extends State<ColorBook> {

  Color _color = Colors.blue[900];
  
  void _setColor(Color color) {
    setState(() {
        _color = color;
        print(color.toString());
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorbook',
      theme: ThemeData(primaryColor: _color),
      home: CustomScaffold(
        title: 'Colorbook',
        drawerTitle: 'Colors',
        body: ColumnList(
          rawList: <Widget>[ExpandedListView(list: bodyList(context, _color))]
        ),
        drawerList: ExpandedListView(list: drawerList(context, _setColor)),
      ),
    );
  }
}
