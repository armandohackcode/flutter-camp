import 'package:app_fluttercamp/constants.dart';
import 'package:app_fluttercamp/screens/home_sreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: StyleApp.primaryColor,
          scaffoldBackgroundColor: StyleApp.backgroundColor,
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              color: StyleApp.primaryColor,
              fontFamily: "Nunito",
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          fontFamily: "monserrat",
        ),
        home: const HomeScreen());
  }
}
