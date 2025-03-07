import 'package:flutter/material.dart';
import 'package:second_flutter_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                )),
            ListTile(
              title: Text('First Page'),
              onTap: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            ListTile(
              title: Text('Second Page'),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text("Go to Second Page")),
      ),
    );
  }
}
