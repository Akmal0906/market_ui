import 'package:flutter/material.dart';
import 'package:market_ui/pages/home_page.dart';
import 'package:market_ui/pages/market_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MarketPage(),
      routes: {
        MarketPage.id:(context)=>const MarketPage(),
        HomePage.id:(context)=>const HomePage(),
      },
    );
  }
}
