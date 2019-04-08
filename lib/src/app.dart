import 'package:flutter/material.dart';
import 'package:xbatch/scaffold.dart';
import 'package:xbatch/custom/expanded_list_view.dart';
import 'package:xbatch/layout/column_list.dart';
import './list.dart';

class ColorJar extends StatefulWidget {
  const ColorJar({
      Key key,
  }) : super(key: key);
  
  @override
  _ColorJar createState() => _ColorJar();
}

class _ColorJar extends State<ColorJar> {

  MaterialColor _color = Colors.primaries[5];
  
  void _setColor(MaterialColor color) {
    setState(() {
        _color = color;
        print(color.toString());
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorjar',
      theme: ThemeData(primaryColor: _color),
      home: CustomScaffold(
        title: 'Colorjar',
        drawerTitle: 'Colors',
        body: ColumnList(
          rawList: <Widget>[ExpandedListView(list: bodyList(context, _color))]
        ),
        drawerList: ExpandedListView(list: drawerList(context, _setColor)),
      ),
    );
  }
}
