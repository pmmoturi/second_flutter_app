import 'package:flutter/material.dart';
import 'package:second_flutter_app/pages/first_page.dart';
import 'package:second_flutter_app/pages/second_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: const AppBarTheme(
          backgroundColor:
              Colors.green, // Or use ColorScheme.primary if available
          foregroundColor: Colors.white, // Text/icon color for contrast
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/settings': (context) => Placeholder(),
      },
    );
  }
}
