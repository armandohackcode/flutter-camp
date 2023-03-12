import 'package:app_fluttercamp/models/info_server.dart';
import 'package:flutter/material.dart';

class CardNews extends StatelessWidget {
  final Article article;
  const CardNews({
    required this.article,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.urlToImage != null && article.urlToImage != "")
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage(
                  placeholder: const AssetImage("assets/img/salud.png"),
                  image: NetworkImage(article.urlToImage!),
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Text(
              article.source.name,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              article.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(article.publishedAt.toIso8601String()),
          ]),
    );
  }
}
