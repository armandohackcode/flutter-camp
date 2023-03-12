import 'package:flutter/material.dart';

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
