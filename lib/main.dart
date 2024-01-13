// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/first_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/second_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // void userTapped() {
  //   print("User tapped !");
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //WIDGETS SECTION//
      /*
      home: Scaffold(
        //backgroundColor: const Color.fromARGB(255, 131, 145, 225),
        appBar: AppBar(
            title: const Text(
              "TaskUP",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 107, 59, 238),
            elevation: 0,
            leading: const Icon(Icons.menu, color: Colors.white),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.logout),
                color: Colors.white,
              ),
            ]),

        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        //     // padding: EdgeInsets.only(left: 50, top: 50, bottom: 50, right: 50),
        //     decoration: BoxDecoration(
        //       color: const Color.fromARGB(255, 99, 28, 222),
        //       //curve the corner
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     padding: const EdgeInsets.all(25),
        //     // child: const Text(
        //     //   "TaskUP",
        //     //   style: TextStyle(
        //     //       color: Colors.white,
        //     //       fontSize: 28,
        //     //       fontWeight: FontWeight.bold),
        //     // ),
        //     child: const Icon(Icons.add_circle_outlined,
        //         color: Colors.white, size: 100),
        //   ),
        // ),

        // body: Column(
        //   //mainAxisAlignment: MainAxisAlignment.center,//vertical arrangement
        //   crossAxisAlignment:
        //       CrossAxisAlignment.center, //  horizontal arrangement
        //   children: [
        //     //1st box
        //     Expanded(
        //       //expanded widget divides the screen evenly
        //       child: Container(
        //         //height: 200,
        //         //width: 200,
        //         color: Color.fromARGB(255, 135, 92, 252),
        //       ),
        //     ),
        //     //2nd box

        //     Expanded(
        //       flex: 3,
        //       child: Container(
        //         //height: 200,
        //         //width: 200,
        //         color: const Color.fromARGB(255, 120, 57, 255),
        //       ),
        //     ),

        //     //3rd box
        //     Expanded(
        //       //fills up rest of the space in column/row
        //       child: Container(
        //         //width: 200,
        //         color: Color.fromARGB(255, 89, 35, 238),
        //       ),
        //     ),
        //   ],
        // ),

        //the rows are same as the columns but only in vertical order

        // body: ListView(
        //   //helps to create a scrolling screen
        //   scrollDirection:
        //       Axis.horizontal, //use width when direction in horizontal
        //   children: [
        //     //1st box
        //     Container(width: 350, color: Colors.deepPurple),
        //     //2nd box
        //     Container(
        //         width: 350, color: const Color.fromARGB(255, 151, 99, 241)),
        //     //3rd box
        //     Container(
        //         width: 350, color: const Color.fromARGB(255, 187, 153, 245)),
        //   ],
        // ),

        // body: ListView.builder(
        //   //to make listview on demand
        //   itemCount: names.length,
        //   itemBuilder: (context, index) => ListTile(
        //     title: Text(names[index]),
        //   ),
        // ),

        // body: GridView.builder(
        //   //makes grids like a chess board
        //   itemCount: 64,
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        //   //how many are in each row
        //   itemBuilder: (context, index) => Container(
        //     color: Colors.cyan,
        //     margin: EdgeInsets.all(2),
        //   ),
        // ),

        // body: Stack(
        //   ///makes a stack like box on top of another box
        //   alignment: Alignment.bottomRight,
        //   children: [
        //     //big
        //     Container(height: 300, width: 300, color: Colors.deepPurple),

        //     //medium
        //     Container(height: 200, width: 200, color: Colors.deepPurple[400]),
        //     //small
        //     Container(height: 100, width: 100, color: Colors.deepPurple[200]),
        //   ],
        // ),

        // body: Center(
        //   child: GestureDetector(
        //     // onTap: () {
        //     //   //do something when user tapped the container
        //     //   print("User tapped"); //comes in debug console
        //     // },
        //     onTap: userTapped,
        //     child: Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepPurple[300],
        //       child: Center(
        //         child: Text("Tap ME!"),
        //       ),
        //     ),
        //   ),
        // ),
      ),
      */

      //NAVIGATION SECTION//
      home: FirstPage(), //autoimported from pages folder
      routes: {
        //used in defining some predefined route names
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
      },
    );
  }
}



//this was a different project so follow accordingly(just a basic counter app)..It's corresponding page is counter_page.dart


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
      //home:ToDoPage(),
    );
  }
}

