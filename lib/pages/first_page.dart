// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/second_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

// to convert a stateless Widget into a Statefull Widget then do 'ALT + ENTER' or click on bulb icon after clicking on 'STATELESS WIDGET',and click 'convert to statefull widget'
class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void navigateBottomBar(int index) {
    //we can only use setstate in stateful widgets
    setState(() {
      this.index = index;
    });
  }

  int index = 0;

  final List _pages = [
    //home page
    SecondPage(),
    //profile page
    ProfilePage(),
    //settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 204, 88),
      appBar: AppBar(
        title: const Text(
          "APP BAR",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 189, 214),
      ),
      // body: Container(
      //   alignment: Alignment.bottomRight,
      //   margin: const EdgeInsets.all(25),
      //   child: ElevatedButton(
      //     child: const Icon(Icons.arrow_forward_ios),
      //     onPressed: () {
      //       //navigate to second page
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondPage(),
      //       //   ),
      //       // );
      //       Navigator.pushNamed(context,
      //           '/secondpage'); //only done if 'routes' file is done in main.dart
      //     },
      //   ),
      // ),

      //another easy way to handle navigations is to make ' a menu ' using drawer wo teen horizontonal linon wali cheez

      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 41, 220, 244),
        child: Column(
          children: [
            //common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.edit_note_rounded,
                size: 100,
                color: Colors.white,
              ),
            ),

            //home page Listtile
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              onTap: () {
                //pop the drawer first
                Navigator.pop(context);
                //go to home page
                Navigator.pushNamed(context, '/secondpage');
              },
            ),

            //setting page Listtile

            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              onTap: () {
                //pop the drawer first(to close the drawer section after we return back to the previous screen)
                Navigator.pop(context);
                // go to settings page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),

            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              onTap: () {
                //pop the drawer first(to close the drawer section after we return back to the previous screen)
                Navigator.pop(context);
                // go to settings page
                Navigator.pushNamed(context, '/profilepage');
              },
            ),
          ],
        ),
      ),

//used just like a drawer but the options come as a bottom navigation bar

      body: _pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 7, 202, 227),

        //update index for navigation
        currentIndex: index,
        onTap: navigateBottomBar, //calling method
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'HOME',
          ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'PROFILE',
          ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'SETTINGS',
          ),
        ],
      ),
    );
  }
}
