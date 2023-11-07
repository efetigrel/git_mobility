import 'package:flutter/material.dart';
import 'package:git/constants.dart';
import 'colors.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              buildIconsTop(context),
              buildCardBalance(),
            ],
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

  Widget buildCardBalance() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Hello Gökbörü Efe',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 26,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.verified,
                  color: secondaryColor,
                ),
              ],
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            color: primaryColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Git Wallet Balance',
                            style: TextStyle(
                              color: whiteColor,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(
                                  color: secondaryColor,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: secondaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '₺ 0.00',
                            style: TextStyle(fontSize: 28, color: whiteColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Add balance',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
