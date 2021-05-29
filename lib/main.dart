import 'package:flutter/material.dart';

import 'views/get_value_from_textfield.dart';

void main() => runApp(MyApp());

//C:/Users/Yiğit Yeler/AppData/Local/Android/Sdk
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: GetValueFromTextField(),
    );
  }
}
