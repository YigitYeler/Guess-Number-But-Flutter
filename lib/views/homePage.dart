import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'common_wallet.dart';
import 'expansion_panel.dart';
import 'grey_mini_container.dart';
import 'setting_section.dart';
import 'white_text_field.dart';

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
          Center(child: GreyMiniContainer.large())
          //Center(child: CommonWallet())
          /*MyExpansionTile(
            title: 'Elektrik Faturası',
            date: '18.10.2002',
            amountOfSpending: '-129TL',
            description: 'Şubat ayında toplam 1220 TL harcandı',
            location: 'Migros',
          )*/
          /*SettingSection(
            text: 'Hesap Ayarları',
            icon: Icons.person,
          ),
          SettingSection(
            text: 'Güvenlik & Şifre',
            icon: Icons.lock,
          ),
          SettingSection(
            text: 'Bildirim Ayarları',
            icon: Icons.notifications,
          ),
          SettingSection(
            text: 'Bize puan verin',
            icon: Icons.star,
          ),*/
        ],
      ),
    );
  }

  /*Center buildCenterBody(BuildContext context) {
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
}*/
}
