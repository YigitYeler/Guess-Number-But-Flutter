import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  final Widget routePage;
  HomeView({Key key, @required this.routePage}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String guessNumber = "0 İLE 100 ARASINDA SAYI TAHMİN ET";
  final String remainingGuess = "5 HAKKIN KALDI";
  final String upOrDown = "UP";
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.black,
    minimumSize: Size(200, 70),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(100)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCircleAvatar(context),
            buildTextInfo(context, guessNumber),
            buildTextField(),
            buildTextInfo(context, upOrDown),
            buildTextInfo(context, remainingGuess),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => widget.routePage));
              },
              child: Text('GUESS'),
              style: raisedButtonStyle,
            )
          ],
        ),
      ),
    );
  }

  TextField buildTextField() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black45,
        labelText: 'Girilecek Sayı',
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }

  Text buildTextInfo(BuildContext context, String text) {
    return Text(
      text,
      style: context.textTheme.headline6.copyWith(color: Colors.white),
    );
  }

  CircleAvatar buildCircleAvatar(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('images/killua.jpg'),
      radius: context.width * 0.3,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black87,
      title: Text("GuessNumber"),
    );
  }
}
