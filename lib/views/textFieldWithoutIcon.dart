import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TextFieldWithoutIcon1 extends StatelessWidget {
  final String hintText;

  TextFieldWithoutIcon1({Key key, @required this.hintText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          elevation: 10,
          shadowColor: Colors.black26,
          child: buildTextFormFieldWithoutIcon(context, hintText),
        ),
      ),
    );
  }
}

TextFormField buildTextFormFieldWithoutIcon(
    BuildContext context, String hintText) {
  return TextFormField(
    style: TextStyle(
      height: context.height * 0.002,
    ),
    decoration: InputDecoration(
      suffixIcon: Icon(Icons.remove_red_eye),
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
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
