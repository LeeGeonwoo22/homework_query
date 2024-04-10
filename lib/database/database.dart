//1. 해당 테이블을 불러온다 (데이터 베이스와 연결)
//2. 어떤 클래스를 테이블로 쓸지 정함
//3. 실제로 데이터베이스를 만들기 _$ 붙이면 상속되어 사용가능 자식이
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_db/database/models/movies.dart';

class DatabaseModel extends StatefulWidget {
  const DatabaseModel({super.key});

  @override
  State<DatabaseModel> createState() => _DatabaseModelState();
}

class _DatabaseModelState extends State<DatabaseModel> {
  late MoviesModel moviesModel;
  
  final db = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;

  final Movies = firestore.collection("movies");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final Movie1 = <String, dynamic>{
    "thumnail": "gs://fir-database-d5e3f.appspot.com/Aespa.jpeg",
    "title": "Aespa world tour",
    "subtitle": "Tour in cinema",
    "contents": "2024년 4월 10일에 개봉 예정인 aespa의 다큐멘터리 영화",
    "picture": [],
  };

  final Movie2 = <String, dynamic>{
    "thumnail": "gs://fir-database-d5e3f.appspot.com/GoldFinger.jpeg",
    "title": "Aespa world tour",
    "subtitle": "Tour in cinema",
    "contents": "2024년 4월 10일에 개봉 예정인 aespa의 다큐멘터리 영화",
    "picture": [],
  };

  final Movie3 = <String, dynamic>{
    "thumnail": "gs://fir-database-d5e3f.appspot.com/Kungpu.jpeg",
    "title": "Aespa world tour",
    "subtitle": "Tour in cinema",
    "contents": "2024년 4월 10일에 개봉 예정인 aespa의 다큐멘터리 영화",
    "picture": [],
  };

  final Movie4 = <String, dynamic>{
    "thumnail": "gs://fir-database-d5e3f.appspot.com/RobotDream.jpeg",
    "title": "Aespa world tour",
    "subtitle": "Tour in cinema",
    "contents": "2024년 4월 10일에 개봉 예정인 aespa의 다큐멘터리 영화",
    "picture": [],
  };

  final Movie5 = <String, dynamic>{
    "thumnail": "gs://fir-database-d5e3f.appspot.com/Sugar.jpeg",
    "title": "Aespa world tour",
    "subtitle": "Tour in cinema",
    "contents": "2024년 4월 10일에 개봉 예정인 aespa의 다큐멘터리 영화",
    "picture": [],
  };

  // movies.doc("onair").set(Movie1);
  // movies.doc("onair").set(Movie2);
  // movies.doc("onair").set(Movie3);
  // movies.doc("onair").set(Movie4);
  // movies.doc("onair").set(Movie5);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
