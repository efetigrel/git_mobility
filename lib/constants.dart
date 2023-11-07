import 'package:flutter/material.dart';
import 'colors.dart';

Widget customIconButton(IconData icon, {required Function() onPressed}) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: secondaryColor,
            blurRadius: 1,
          ),
        ],
      ),
      child: IconButton(
        iconSize: 25,
        color: secondaryColor,
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    ),
  );
}

Widget customIconButtonBack(IconData icon, {required Function() onPressed}) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: IconButton(
        iconSize: 25,
        color: secondaryColor,
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    ),
  );
}
