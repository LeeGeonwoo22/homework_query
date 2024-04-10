import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

// 컬렉션 접근
CollectionReference product = FirebaseFirestore.instance.collection('movies');

Widget _bodyWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14),
    child: GridView.builder(
        shrinkWrap: true,
        // padding: EdgeInsets.only(left: 30, right: 15),
        itemCount: 8,
        // datas.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
          childAspectRatio: 1 / 1, //item 의 가로 1, 세로 1 의 비율
          mainAxisSpacing: 6, //수평 Padding
          crossAxisSpacing: 6, //수직 Padding
        ),
        clipBehavior: Clip.hardEdge,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '제목',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '부제',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text(
                            '내용',
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
  );
}

AppBar _appBar() {
  return AppBar(
    title: Text(
      '영화 게시판',
      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
    ),
    centerTitle: true,
  );
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: SafeArea(child: _bodyWidget()));
  }
}
