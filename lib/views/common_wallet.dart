import 'package:flutter/material.dart';

class CommonWallet extends StatelessWidget {
  final String title;
  final List<String> images;
  final String amountOfSpending;
  double count;

  CommonWallet(
      {Key key,
      @required this.images,
      @required this.title,
      @required this.amountOfSpending})
      : super(key: key);
  bool controlHeight() {
    if (images.length < 3) {
      return false;
    } else {
      return true;
    }
  }

  bool controlLoop() {
    count = images.length / 2;
    return images.length % 2 == 0;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: controlHeight() ? height * 0.32 : height * 0.20,
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
                buildExpandedListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildExpandedListView() {
    if (images.length > 4 && controlLoop()) {
      return Expanded(
        child: ListView.builder(
          itemCount: count.toInt(),
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 38,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 38,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      );
    } else if (!controlLoop() && images.length > 4) {
      return Expanded(
        child: ListView.builder(
          itemCount: (count + 0.5).toInt(),
          itemBuilder: (context, index) {
            if ((count + 0.5).toInt() == index + 1) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 38,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 38,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 38,
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      );
    } else {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.all(0),
        ),
      );
    }
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
    if (images.length == 4) {
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
    } else if (images.length == 3) {
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
    if (images.length == 1) {
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
    } else if (images.length == 2 || images.length == 3 || images.length == 4) {
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
