import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myIndex = 0;
  int _counter = 0;

  List<Widget> widgetList = [
    Text('Home', style: TextStyle(fontSize: 40)),
    Text('Search', style: TextStyle(fontSize: 40)),
    Text('Notification', style: TextStyle(fontSize: 40)),
    Text('Profile', style: TextStyle(fontSize: 40)),
  ];



  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Center(
        child: widgetList[myIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: Colors.deepPurple, // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        showSelectedLabels: false,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home'
          ),
              BottomNavigationBarItem(
              icon: Icon(Icons.search),
            label: 'Search'
          ),
              BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
            label: 'Notification'
          ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: 'Profile'
          ),

        ],
      ),
    );
  }
}
