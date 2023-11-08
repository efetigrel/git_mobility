import 'package:flutter/material.dart';
import 'package:git/constants.dart';
import 'package:git/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customIconButtonBack(
                    onPressed: () {},
                    Icons.arrow_back_ios_new,
                  ),
                  customIconButton(
                    Icons.menu,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customIconButton(
                  Icons.info_outline,
                  onPressed: () {
                    _showCustomBottomSheet(context);
                  },
                ),
                customIconTextButton(context),
                customIconButton(
                  Icons.location_on,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50),
                  Image.asset(
                    'lib/assets/images/git_logo_pink.png',
                    width: 150,
                  ),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Which type Git would you like to see more in your location ?",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  _showCustomBottomSheet2(context);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.electric_scooter,
                      size: 30,
                      color: Color(0xFFbe72bd),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Git",
                      style: TextStyle(fontSize: 26, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 0.5,
                color: Colors.black.withOpacity(0.5),
                width: 200,
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  void _showCustomBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50),
                  Image.asset(
                    'lib/assets/images/git_logo_pink.png',
                    width: 150,
                  ),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              const Text(
                'Thank You',
                style: TextStyle(color: Color(0xFFbe72bd), fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Thank you! We are working to make it easier to find a Git nearby.",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

class startDriving extends StatelessWidget {
  const startDriving({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'lib/assets/images/git_logo_pink.png',
                width: 300,
              ),
              Container(
                child: Text('QR CODE HERE'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
