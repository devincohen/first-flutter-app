import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String ability;

  const SecondScreen({required this.ability, super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(ability, style: TextStyle(fontSize: 20),),
              ),
              Align(alignment: Alignment.bottomCenter),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop();
                }, 
              child: Text("Back"))
          ]),
        )
      ),
    );
  }
}