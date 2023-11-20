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
            buildCardBalance(context),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Notifications(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildCardBalance(context) {
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
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
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
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Details',
                                  style: TextStyle(color: secondaryColor),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddBalance(),
                        ),
                      );
                    },
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
                        SizedBox(width: 5),
                        Text(
                          'Add Balance',
                          style: TextStyle(fontSize: 18),
                        )
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

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: null,
      body: Padding(
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
            Text(
              'Notification',
              style: TextStyle(fontSize: 22, color: secondaryColor),
            ),
            const Padding(
              padding: const EdgeInsets.only(right: 75),
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class AddBalance extends StatefulWidget {
  const AddBalance({Key? key}) : super(key: key);

  @override
  _AddBalanceState createState() => _AddBalanceState();
}

class _AddBalanceState extends State<AddBalance> {
  bool isChecked = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customIconButtonBack(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  Icons.arrow_back_ios_new,
                ),
                Text(
                  'Add Balance',
                  style: TextStyle(fontSize: 22, color: secondaryColor),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 75),
                  child: SizedBox(),
                ),
              ],
            ),
            const Text('Balance'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                '₺0.00',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Text('Select amount to reload Git Wallet'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 35, horizontal: 35),
                    child: Text(
                      '₺50',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                ),
                Card(
                  color: secondaryColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 28, horizontal: 25),
                    child: Column(
                      children: [
                        Text(
                          'Most Popular',
                          style: TextStyle(color: whiteColor),
                        ),
                        Text(
                          '₺100',
                          style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 35, horizontal: 35),
                    child: Text(
                      '₺200',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  children: [
                    Icon(Icons.credit_card, size: 45, color: Colors.black54),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text('GÖKBÖRÜ EFE TIĞREL'),
                        Text('**** **** **** 1234')
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.zero,
                    child: Text(
                      'Change',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'I confirm that I ve read and agree to',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.zero,
                        child: Text(
                          'Wallet Agreement',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Auto Relaod'),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
