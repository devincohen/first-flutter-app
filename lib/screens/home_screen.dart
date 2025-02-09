import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //return Scaffold(
      
    //   appBar: AppBar(
    //     backgroundColor: Colors.red,
    //     centerTitle: false,
    //     leading: Builder(
    //       builder: (context) {
    //         return IconButton(
    //           onPressed: Scaffold.of(context).openDrawer, 
    //           icon: Icon(Icons.abc_sharp));
    //       }),
    //     // leading: Icon(
    //     //     Icons.abc_sharp
    //     // )
    //     title: Text("BetterLove"),
        
    //   ),
    //   drawer: NavigationDrawer(
    //     backgroundColor: Colors.green,
    //     children: []
    //   ),
    //   body: Center(
    //     child: Column(
    //       children: [
    //         Text("Test 1"),
    //         Text("Test 2"),
    //         Expanded(child: Center(
    //           child: Text("Test 3"),
    //           ),
    //           ),
              
    //       ]
    //     )
    //     // child: ElevatedButton(
    //     //   onPressed: () async {
    //     //     var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/ditto');
    //     //     var response = await http.get(url);
    //     //     print('Response status: ${response.statusCode}');
    //     //     var data = jsonDecode(response.body);
    //     //     print(data['abilities'][0]['ability']['name']);
    //     //     String ability = data['abilities'][0]['ability']['name'];
    //     //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(ability: ability)));
    //     //   },
    //     //   child: Text("Go to next screen")
    //     //   ),
    //   ),
    //   bottomNavigationBar: NavigationBar(
    //       indicatorColor: Colors.amber,
    //       backgroundColor: const Color.fromARGB(255, 128, 118, 100),
    //       selectedIndex: 1,
    //       onDestinationSelected: (int index){
            
    //       },
    //       destinations: const <Widget>[
    //         NavigationDestination(
    //           icon: Icon(Icons.home), 
    //           label: 'Home'),
    //         NavigationDestination(
    //           selectedIcon: Icon(Icons.message_outlined),
    //           icon: Icon(Icons.message), 
    //           label: 'Messages'),
    //         NavigationDestination(
    //           icon: Icon(Icons.fire_truck), 
    //           label: 'Emergency'),
    //         NavigationDestination(
    //           icon: Icon(Icons.tour_outlined), 
    //           label: 'Resources')
    //       ],
    //     ),
    // );
    return MaterialApp(
      home: const BottomBarMoves()
    );
  }
}

//stateful widget gets implanted into stateless widget
class BottomBarMoves extends StatefulWidget{
  const BottomBarMoves({super.key});

  @override
  State<BottomBarMoves> createState() => _BottomBarMovesState();
}


//state gets implanted into stateful widget
class _BottomBarMovesState extends State<BottomBarMoves>{
  int page = 0;
  NavigationDestinationLabelBehavior labelBehavior = NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext build){
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.amber,
        labelBehavior: labelBehavior,
        selectedIndex: page,
        onDestinationSelected: (int index) {
          setState(() => page = index);
        },
        destinations: const<Widget>[
          NavigationDestination(
            icon: Icon(Icons.home), 
            label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.message), 
            label: 'Messages'),
          NavigationDestination(
            icon: Icon(Icons.favorite), 
            label: 'Favorite'),
          NavigationDestination(
            icon: Icon(Icons.flag), 
            label: 'Resources')
        ],
      ),
      body: <Widget>[
        Text('Home'),
        Text('Messages'),
        Text('Favorites'),
        Text('Resources')
      ][page],

    );
  }
}

