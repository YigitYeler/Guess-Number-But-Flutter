import 'package:flutter/material.dart';

class CommonWallet extends StatelessWidget {
  final String title;

  final String amountOfSpending;
  final int numberOfPeople;

  const CommonWallet(
      {Key key,
      @required this.title,
      @required this.amountOfSpending,
      @required this.numberOfPeople})
      : super(key: key);
  bool controlHeight() {
    if (numberOfPeople < 3) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: controlHeight() ? height * 0.42 : height * 0.27,
      width: width * 0.816,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFF2C2929),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.7,
                  child: buildListTileTop(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                buildRowCircleAvatar(),
                buildPaddingBottomCircleAvatar(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildListTileTop() {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Toplam Harcama:',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 10,
                color: Color(0xFF848589),
              ),
            ),
            Text(
              amountOfSpending,
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Color(0xFFEBEFF6),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildPaddingBottomCircleAvatar() {
    if (numberOfPeople == 4) {
      return Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 38,
              ),
            ),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 38,
              ),
            ),
          ],
        ),
      );
    } else if (numberOfPeople == 3) {
      return Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 38,
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(padding: EdgeInsets.all(0));
    }
  }

  Row buildRowCircleAvatar() {
    if (numberOfPeople == 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
            ),
          ),
        ],
      );
    } else if (numberOfPeople == 2 || numberOfPeople > 2) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
            ),
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 38,
            ),
          ),
        ],
      );
    } else {
      return Row();
    }
  }
}
