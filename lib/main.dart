import 'package:flutter/material.dart';
import 'package:shopping_app/pages/homePage.dart';
import 'pages/cartPage.dart';
import 'pages/itemPage.dart';
import 'pages/welcomePage.dart';

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
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/home': (context) => Homepage(),
        '/cartPage': (context) => CartPage(),
        '/itemPage': (context) => ItemPage(),
      },
    );
  }
}


