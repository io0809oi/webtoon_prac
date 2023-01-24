import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ApiService{
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = 'today';

  void getTodaysToons() async{
    final url =Uri.parse('$baseUrl/$today');
    final Response = await http.get(url);
    if(Response.statusCode==200)
      {
        print(Response.body);
        return;
      }
    else{
      throw Error();
    }
  }

}

