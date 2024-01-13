// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // A text editing controller is used to get access to what the user typed!
  TextEditingController myController = TextEditingController();

  //within app greeting message
  String greetingmessage = "";
  void greetingMessage() {
    String userName = myController.text;
    setState(() {
      greetingmessage = "Welcome,${userName}";
    });
  }

  //greet user Method
  // void greetUser() {
  //   print(
  //       "Welcome, ${myController.text}"); //this is string interpolation(better than string concatenation)
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          //wrapped everything in padding for professional effect ;)
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingmessage),
              //to show in app
              TextField(
                controller:
                    myController, //this helps in giving control to our text fields
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter name",
                ),
              ),
              ElevatedButton(
                //onPressed: greetUser,
                onPressed: greetingMessage,
                child: Text("Greet!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
