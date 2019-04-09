import 'package:flutter/material.dart';
import './pad.dart';

class ColorJar extends StatefulWidget {
  const ColorJar({
      Key key,
  }) : super(key: key);

  @override
  _ColorJar createState() => _ColorJar();
}

class _ColorJar extends State<ColorJar> {
  // TODO: Store the last setting.
  Color _color = Color.fromRGBO(10, 10, 10, 1.0);

  void _setColor({Color color, int r, int b, int g}) {
    setState(() {
        // TODO: How to optimize?
        if (color != null) {
          _color = color;
        } else if (r != null) {
          _color = _color.withRed(r);
        } else if (g != null) {
          _color = _color.withGreen(g);
        } else if (b != null) {
          _color = _color.withBlue(b);
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorjar',
      theme: ThemeData(primaryColor: _color),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ColorJar'),
        ),
        body: pad(context, _color, _setColor),
      ),
    );
  }
}
