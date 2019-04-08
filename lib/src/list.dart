import 'package:flutter/material.dart';

List<Widget> bodyList(BuildContext context, MaterialColor color) {
  return List<Widget>.generate(9, (int index) => Container(
      child: Text(
        color[(index + 1) * 100].toString().substring(6,16).toUpperCase(),
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.subhead.fontSize,
          color: Theme.of(context).colorScheme.onPrimary
        )
      ),
      padding: EdgeInsets.only(top: 32.0, left: 16.0),
      decoration: BoxDecoration(
        color: color[100 * (index + 1)],
        border: Border.all(width: 0.0)
      ),
    ),
  );
}

List<Widget> drawerList(BuildContext context, Function setColor) {
  return List<Widget>.generate(Colors.primaries.length, (int index) => GestureDetector(
      onTap: () => setColor(Colors.primaries[index]),
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Text(
          Colors.primaries[index].toString().substring(35,45).toUpperCase(),
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.subhead.fontSize,
            color: Theme.of(context).colorScheme.onPrimary
          )
        ),
        padding: EdgeInsets.only(top: 32.0, left: 16.0),
        decoration: BoxDecoration(
          color: Colors.primaries[index],
          border: Border.all(width: 0.0),          
        ),
      ),
    )
  );
}
