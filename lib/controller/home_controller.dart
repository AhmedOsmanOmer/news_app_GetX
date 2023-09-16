import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class HomeController extends GetxController{
  
  lastNews()async{
    //replace your restFull API here.
    String url = "https://newsapi.org/v2/everything?q=tesla&from=2023-06-6&sortBy=publishedAt&apiKey=d897474cd9c846bfa5da084e1194fc7a";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);
    print(responseData);
    if(responseData['status']=="ok"){
      return responseData;
    }
    else{
      return "error error";
    }
  }
}