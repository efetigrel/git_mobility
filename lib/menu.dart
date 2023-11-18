import 'package:flutter/material.dart';
import 'package:git/constants.dart';
import 'colors.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(
          children: [
            buildIconsTop(context),
            buildCardBalance(),
            buildMenuItems(),
            buildVersion()
          ],
        ),
      ),
    );
  }

  Widget buildIconsTop(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
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
      ),
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
                const SizedBox(width: 5),
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

  Widget buildMenuItems() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          color: primaryColor,
          child: ListView(
            children: [
              menuItems(
                leading: const Icon(Icons.perm_phone_msg),
                title: 'Contact Us',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.wallet),
                title: 'Git Wallet',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.announcement),
                title: 'Promos',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.card_giftcard),
                title: 'Invite to TAG, Get Discount!',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.money),
                title: 'Send Git Balance to Friend',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.history),
                title: 'Ride History',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.verified),
                title: 'Ride Guidelines',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.question_mark),
                title: 'FAQ',
                onTap: () {},
              ),
              menuItems(
                leading: const Icon(Icons.settings),
                title: 'Settings',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildVersion() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        'Git v1.0.0',
        style: TextStyle(color: whiteColor),
      ),
    );
  }
}
