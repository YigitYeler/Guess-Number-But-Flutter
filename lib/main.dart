import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/homePage.dart';
import 'package:my_flutter_app/views/home_view.dart';

void main() => runApp(MyApp());

//C:/Users/Yiğit Yeler/AppData/Local/Android/Sdk
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}
