// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

//this is a stateful widget.A stateful widget is a widget that can change when the user interacts with it contrary to the stateless widget.The state can be edited through setState() function

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  /*WHEN WE DEVELOP APPS AT A HIGHER LEVEL WE NEED TO HAVE 3 THINGS
  -Variables
  -Methods
  -UI{user interface}
  */

  //variable
  int counter = 0;

  get style => null;

  //method
  void incrementCounter() {
    setState(() {
      //anytime we change a value and want it to be reflected in the app...Setstate() basically rebuilds the widget
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  //UI(user interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //to center everything
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tasbeeh: ",
              style: TextStyle(fontSize: 30),
            ),

            //counter value
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 40),
            ),

            //button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: incrementCounter,
                  child: Icon(Icons.add, color: Colors.black),
                ),
                ElevatedButton(
                  onPressed: decrementCounter,
                  child: Icon(Icons.remove, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
