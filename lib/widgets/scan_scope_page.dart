import 'package:flutter/material.dart';

class ScanScope extends StatelessWidget {
  final List<String> text = [
    'Specify the desired search area for boks and documents oin your device.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('\n'),
        titleText('Scan scope'),
        Text(''),
        bottonText(text[0]),
        Text(''),
        checked('Eveywhere on the device', true),
        checked('In downloads', true),
        checked('Eveywhere on the device', false),
      ],
    );
  }

  Widget titleText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  ListTile checked(String title, bool check) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity(vertical: -4),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      trailing: check
          ? Icon(Icons.check_box, color: Colors.blue[300])
          : Icon(Icons.check_box_outline_blank, color: Colors.grey),
    );
  }

  Widget bottonText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
