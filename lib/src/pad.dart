import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/** pad
* @press: random color.
* @longPress: copy to clipboard.
*/
Widget pad(BuildContext context, Color color, Function setColor) {

  String hex = color.value.toRadixString(16).substring(2);
  Random rng = new Random();

  return Container(
    child: GestureDetector(
      onTap: () {
        setColor(
          color: Color.fromRGBO(
            rng.nextInt(255),
            rng.nextInt(255),
            rng.nextInt(255),
            1.0
          )
        );
      },
      onLongPress: () {
        Clipboard.setData(
          ClipboardData(text: hex)
        );
        setColor(
          color: Color.fromRGBO(
            color.red + 42,
            color.green + 42,
            color.blue + 42,
            1.0
          )
        );
      },
      onLongPressUp: () {
        setColor(
          color: Color.fromRGBO(
            color.red - 42,
            color.green - 42,
            color.blue - 42,
            1.0
          )
        );
      },
      child: Center(
        child: Text(
          hex,
          style: TextStyle(
            fontSize: 88.0,
            color: Theme.of(context).colorScheme.onPrimary
          ) 
        ) //@Text: child-end
      ) //@Center: child-end
    ),
    color: color
  );
}
