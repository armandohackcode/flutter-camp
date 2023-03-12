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
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
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
      ),
    );
  }
}

class CardNews extends StatelessWidget {
  const CardNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const FadeInImage(
                placeholder: AssetImage("assets/img/salud.png"),
                image: NetworkImage(
                  "https://www.isdi.education/uploads/media/21-9-medium/07/557-meme_marketing_0.webp?v=1-0",
                ),
              ),
            ),
            const Text("CNN en Espeñol"),
            const Text(
              "Este es un articulo de prueba para probar el tamaño del texto",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Text("Hace 8 horas"),
          ]),
    );
  }
}
