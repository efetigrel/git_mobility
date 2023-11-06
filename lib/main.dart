import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

// MAİN PAGE

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// HOME PAGE

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/images/1.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: IconButton(
                        iconSize: 25,
                        color: HexColor('#f2f2f2'),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF3042b4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFf2f2f2),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: IconButton(
                        iconSize: 25,
                        color: Color(0xFFf2f2f2),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuPage(),
                            ),
                          );
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF3042b4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFf2f2f2),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: IconButton(
                        iconSize: 25,
                        color: Color(0xFFf2f2f2),
                        onPressed: () {},
                        icon: Icon(Icons.info_outline),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF3042b4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            shadowColor: Color(0xFFf2f2f2)),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.qr_code_scanner),
                            SizedBox(width: 10),
                            Text(
                              'Start Driving',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF3042b4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFf2f2f2),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: IconButton(
                        iconSize: 25,
                        color: Color(0xFFf2f2f2),
                        onPressed: () {},
                        icon: Icon(Icons.location_on),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// MENU
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF050d22),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: IconButton(
                        iconSize: 25,
                        color: HexColor('#f2f2f2'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        iconSize: 25,
                        color: Color(0xFFf2f2f2),
                        onPressed: () {},
                        icon: Icon(Icons.notifications),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Merhaba Gökbörü Efe',
                          style: TextStyle(
                            color: Color(0xFFf2f2f2),
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.verified, color: Color(0xFF3042b4)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Git Wallet Balance',
                          style: TextStyle(
                            color: Color(0xFFf2f2f2),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Details',
                              style: TextStyle(
                                color: Color(0xFF3042b4),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Color(0xFF3042b4),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '₺ 0.00',
                          style:
                              TextStyle(fontSize: 28, color: Color(0xFFf2f2f2)),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF3042b4),
                        ),
                        child: const Row(
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
