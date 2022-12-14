import 'package:flutter/material.dart';
import 'package:new_test/providers/shopping_card_provider.dart';
import 'package:provider/provider.dart';
import 'package:new_test/screens/first_screen.dart';
import 'package:new_test/screens/second_screen.dart';
import '../providers/counter_provider.dart';

void main() {
  runApp(
      MultiProvider(providers:[
        ChangeNotifierProvider(create:(_) => Counter()),
        ChangeNotifierProvider(create:(_) => ShoppingCart()),
      ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyFirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}


