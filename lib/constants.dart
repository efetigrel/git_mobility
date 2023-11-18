import 'package:flutter/material.dart';
import 'package:git/home_page.dart';
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
    padding: const EdgeInsets.all(20),
    child: Container(
      decoration: const BoxDecoration(
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

Widget customIconTextButton(context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Container(
      height: 40,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          shadowColor: secondaryColor,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StartDriving(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.qr_code_scanner, color: secondaryColor),
            const SizedBox(width: 10),
            Text(
              'Start Driving',
              style: TextStyle(color: secondaryColor, fontSize: 18),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget menuItems({Function()? onTap, Widget? leading, String title = 'Title'}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: whiteColor,
        width: 0.1,
        style: BorderStyle.solid,
      ),
    ),
    child: ListTile(
      iconColor: whiteColor,
      leading: leading ?? const Icon(Icons.input),
      title: Text(
        title,
        style: TextStyle(color: whiteColor),
      ),
      onTap: onTap,
    ),
  );
}
