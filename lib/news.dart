import 'package:flutter/material.dart';

class New extends StatelessWidget {
  final String imgUrl;
  final String news;
  const New({super.key, required this.imgUrl, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightBlue,
        ),
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
            child:imgUrl=='null'?Image.asset('images/news.jpg'): Image.network(imgUrl)),
            const SizedBox(height: 20),
            Text(news,style: const TextStyle(fontSize: 22,color: Colors.white,),textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}