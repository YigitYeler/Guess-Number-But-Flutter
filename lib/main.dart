import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/homePage.dart';

void main() => runApp(MyApp());

//C:/Users/Yiğit Yeler/AppData/Local/Android/Sdk
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
