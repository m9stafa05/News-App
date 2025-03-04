// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

// flutter build web --release && firebase init hosting && firebase deploy --only hosting -m 'V 1.0.0'
// firebase deploy --only hosting -m "V 1.0.0"
// To Update firebase 
// flutter build web --release && firebase deploy --only hosting -m "V 1.0.1"
void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViews(),
    );
  }
}
