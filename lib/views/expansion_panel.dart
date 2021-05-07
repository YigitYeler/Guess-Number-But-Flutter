import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class MyExpansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(accentColor: Colors.black),
      child: ExpansionTile(
        leading: CircleAvatar(),
        title: Text("Elektrik Faturası"),
        children: [
          Padding(
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
                            buildRowDetails(Icons.calendar_today, '18.10.2002'),
                            context.emptySizedHeightBoxLow,
                            buildRowDetails(Icons.location_on, 'Migros'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Şubat ayında toplam 1200 tl harcandı",
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
        Text("-129 TL")
      ],
    );
  }
}
