import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: Scaffold.of(context).openDrawer, 
              icon: Icon(Icons.abc_sharp));
          }),
        // leading: Icon(
        //     Icons.abc_sharp
        // )
        title: Text("BetterLove"),
        
      ),
      drawer: NavigationDrawer(
        backgroundColor: Colors.green,
        children: []
      ),
      body: Center(
        child: Column(
          children: [
            Text("Test 1"),
            Text("Test 2"),
            Expanded(child: Center(
              child: Text("Test 3"),
              ),
              ),
              
          ]
        )
        // child: ElevatedButton(
        //   onPressed: () async {
        //     var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/ditto');
        //     var response = await http.get(url);
        //     print('Response status: ${response.statusCode}');
        //     var data = jsonDecode(response.body);
        //     print(data['abilities'][0]['ability']['name']);
        //     String ability = data['abilities'][0]['ability']['name'];
        //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(ability: ability)));
        //   },
        //   child: Text("Go to next screen")
        //   ),
      ),
      
    );
  }
}