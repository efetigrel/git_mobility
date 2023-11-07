import 'package:flutter/material.dart';
import 'package:gez/constants.dart';
import 'colors.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                buildIconsTop(context),
                buildUserGreeting(),
                buildBalanceSection(),
                buildAddBalanceButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIconsTop(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customIconButtonBack(
          onPressed: () {
            Navigator.pop(context);
          },
          Icons.arrow_back_ios_new,
        ),
        customIconButton(
          Icons.notifications,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildUserGreeting() {
    return Row(
      children: [
        Text(
          'Merhaba Gökbörü Efe',
          style: TextStyle(
            color: secondaryColor,
            fontSize: 26,
          ),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.verified,
          color: primaryColor,
        ),
      ],
    );
  }

  Widget buildBalanceSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Git Wallet Balance',
              style: TextStyle(
                color: secondaryColor,
              ),
            ),
            Row(
              children: [
                Text(
                  'Details',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: primaryColor,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '₺ 0.00',
              style: TextStyle(fontSize: 28, color: secondaryColor),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildAddBalanceButton() {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.plus_one),
            SizedBox(
              width: 5,
            ),
            Text('Add balance'),
          ],
        ),
      ),
    );
  }
}
