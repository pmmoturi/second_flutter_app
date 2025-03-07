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
