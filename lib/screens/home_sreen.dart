import 'package:app_fluttercamp/widgets/home_screen/card_news.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
        title: Image.asset(
          "assets/img/logo-line.png",
          width: 160,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              color: Colors.grey,
              size: 32,
            ),
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return const CardNews();
        },
      ),
    );
  }
}
