import 'package:flutter/material.dart';
import 'package:second_flutter_app/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              child: Text("Go to First Page"),
            ),
            SizedBox(height: 20),
            Text('XXXX 888888 xxxxxx'),
          ],
        ),
      ),
    );
  }
}
