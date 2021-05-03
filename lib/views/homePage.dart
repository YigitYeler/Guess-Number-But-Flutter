import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:my_flutter_app/views/text_field_with_icon.dart';
import 'package:my_flutter_app/views/text_field_without_icon.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Deneme"),
      ),
      body: Column(
        children: [
          TextFieldWithoutIcon(
            hintText: "Şifren",
          ),
          TextFieldWithoutIcon(
            hintText: "aaaaa",
          ),
          TextFieldWithIcon(
            hintText: "Deneme2",
          ),
          TextFieldWithIcon(
            hintText: "Deneme",
          ),
          TextFieldWithIcon(
            hintText: "Deneme3",
          ),
          TextFieldWithoutIcon(
            hintText: "Şifren",
          ),
        ],
      ),
    );
  }

  Center buildCenterBody(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            elevation: 10,
            shadowColor: Colors.black26,
            child: buildTextFormFieldWithoutIcon(context),
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormFieldWithoutIcon(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        height: context.height * 0.002,
      ),
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.remove_red_eye),
        filled: true,
        fillColor: Colors.white,
        hintText: "Şifren",
        contentPadding: EdgeInsets.fromLTRB(25, 19, 25, 16),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(24),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
