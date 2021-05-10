import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MyExpansionTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String location;
  final String description;
  final String amountOfSpending;

  const MyExpansionTile(
      {Key key,
      this.imageUrl,
      @required this.title,
      @required this.date,
      @required this.location,
      @required this.description,
      @required this.amountOfSpending})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(accentColor: Colors.black),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        title: Text(title),
        children: [buildPaddingChildren(context)],
      ),
    );
  }

  Padding buildPaddingChildren(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      buildRowDetails(Icons.calendar_today, date),
                      context.emptySizedHeightBoxLow,
                      buildRowDetails(Icons.location_on, location),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  description,
                  textAlign: TextAlign.end,
                  maxLines: 3,
                ),
              ),
              Icon(Icons.wallet_membership_rounded)
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: buildRowEndDetail(),
          )
        ],
      ),
    );
  }

  Row buildRowDetails(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
        ),
        Text(text)
      ],
    );
  }

  Row buildRowEndDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.description,
          size: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Harcama Miktarı'),
        ),
        Spacer(),
        Text(amountOfSpending)
      ],
    );
  }
}
