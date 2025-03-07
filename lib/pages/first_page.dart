import 'package:flutter/material.dart';
import 'package:second_flutter_app/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _pages[index]),
    );
  }

  final List _pages = [
    FirstPage(),
    SecondPage(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary),
                  )),
              ListTile(
                title: Text('First Page'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/first');
                },
              ),
              ListTile(
                title: Text('Second Page'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('First Page'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text("Go to Second Page")),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(onTap: _onItemTapped, items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second Page',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ]));
  }
}
