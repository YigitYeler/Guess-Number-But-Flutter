import 'package:flutter/material.dart';

class SettingSection extends StatefulWidget {
  final String text;
  final IconData icon;

  const SettingSection({Key key, @required this.icon, @required this.text})
      : super(key: key);

  @override
  _SettingSectionState createState() => _SettingSectionState();
}

class _SettingSectionState extends State<SettingSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 7, 30, 7),
        //child: buildRowItems(),
        child: ListTile(
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.text),
            ],
          ),
          leading: buildPaddingContainerIcon(),
          trailing: buildIconRightArrow(),
        ),
      ),
    );
  }

  Icon buildIconRightArrow() {
    return Icon(
      Icons.arrow_right_rounded,
      size: 40,
      color: Colors.black,
    );
  }

  Widget buildPaddingContainerIcon() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: Colors.white,
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      height: 34,
      width: 34,
    );
  }
}
