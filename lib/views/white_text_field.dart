import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/*
WhiteTextField(isWithIcon: true , hintText : "Şifren")
WhiteTextField(isWithIcon: false , hintText : "İsim")
isWithIcon: Eğer true verirseniz ikonlu false verirseniz ikonsuz çağıracak.
hintText: TextField'in içinde gözüken yazı.
*/

class WhiteTextField extends StatelessWidget {
  final String hintText;
  final bool isWithIcon;

  WhiteTextField({Key key, @required this.isWithIcon, @required this.hintText})
      : super(key: key);
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
          child: buildTextFormFieldWithoutIcon(context, hintText, isWithIcon),
        ),
      ),
    );
  }
}

TextFormField buildTextFormFieldWithoutIcon(
    BuildContext context, String hintText, bool isWithIcon) {
  return TextFormField(
    style: TextStyle(
      height: context.height * 0.002,
    ),
    decoration: InputDecoration(
      suffixIcon: isWithIcon ? Icon(Icons.remove_red_eye) : null,
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
