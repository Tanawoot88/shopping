import 'package:flutter/material.dart';
import 'package:flutter_food/models/shop_details.dart';
import 'package:flutter_food/pages/home/home_page.dart';
import 'first_pages/login.dart';
import 'first_pages/register_pages.dart';
import 'first_pages/start_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      //home: LoginPage(),
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        Register.routeName : (context) => Register(),
        Start.routeName : (context) => Start(),
        HomePage.routeName: (context) => const HomePage(),
        ShopDetails.routeName :(context) => const ShopDetails(),
      },
      initialRoute: '/start',
    );
  }
}
