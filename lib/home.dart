// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:flutter_application_1/controller/search.dart';
import 'package:flutter_application_1/news.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: (){
            showSearch(context: context, delegate: CustomSearchDelegate());
          }, icon: Icon(Icons.search,color: Colors.white,))],
          title: const Center(child: Text("News",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
          backgroundColor: Colors.lightBlue,
        ),
        body: FutureBuilder(
            future: homeController.lastNews(),
            builder: (ctx, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                  semanticsLabel: "Loading",
                ));
              } else if (snapshot.hasError) {                return Text('Error: ${snapshot.error}');
              } else {
                return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {

                          if(snapshot.data!['articles'][index]
                                  ['urlToImage']==null){
                                     Get.to(New(
                              imgUrl: 'null',
                              news: snapshot.data!['articles'][index]
                                  ['description']));
                                  }
                                  else{
                          Get.to(New(
                              imgUrl: snapshot.data!['articles'][index]
                                  ['urlToImage'],
                              news: snapshot.data!['articles'][index]
                                  ['description']));
                        }},
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(15)),
                            margin: const EdgeInsets.only(bottom: 10, top: 10,left: 8,right: 8),
                            padding: const EdgeInsets.all(15),
                            child: Column(children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child:snapshot.data!['articles'][index]
                                  ['urlToImage']==null?Image.asset('images/news.jpg'): Image.network(
                                    snapshot.data!['articles'][index]
                                        ['urlToImage'],
                                    fit: BoxFit.fill,
                                    width: 400,
                                    height: 200,
                                  )),
                              const SizedBox(height: 15),
                              Text(
                                snapshot.data!['articles'][index]
                                    ['description'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                maxLines: 2,
                              )
                            ])),
                      );
                    });
                /*  */
              }
            }));
  }
}
