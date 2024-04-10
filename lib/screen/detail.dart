import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  const Movie({super.key});

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HeroDetail Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hero animation이 작동이 됐습니다."),
            //Hero를 위한 코드는
            Hero(
              tag: "flutter",
              child: FlutterLogo(
                size: MediaQuery.of(context).size.width,
              ),
            )
            //여기가 전부입니다!!
          ],
        ),
      ),
    );
  }
}
