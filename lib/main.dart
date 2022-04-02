import 'package:flutter/material.dart';
import 'package:pets_app/screens/HomeScreen/home.dart';
import 'package:pets_app/screens/SearchScreen/search.dart';
import 'package:pets_app/screens/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigation(),
    );
  }
}
