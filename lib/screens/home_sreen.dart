import 'package:app_fluttercamp/app_repository/app_repository.dart';
import 'package:app_fluttercamp/models/info_server.dart';
import 'package:app_fluttercamp/widgets/home_screen/card_news.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  InfoServer? info;
  bool loading = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      setState(() {
        loading = true;
      });
      var res = await AppRepository.getData();
      setState(() {
        info = res;
        loading = false;
      });
    });
    super.initState();
  }

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
      body: (loading)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: info!.articles.length,
              itemBuilder: (BuildContext context, int index) {
                var exp = RegExp(r"\bhttps?:\/\/\S+\.mp4\b");
                if (exp
                    .allMatches(info!.articles[index].urlToImage!)
                    .isNotEmpty) {
                  return Container();
                }
                return CardNews(
                  article: info!.articles[index],
                );
              },
            ),
    );
  }
}
