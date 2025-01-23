import 'package:flutter/material.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) :  super( key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          child: Text("Go to next screen")
          ),
      )
      
    );
  }
}