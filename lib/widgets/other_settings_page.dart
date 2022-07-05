import 'package:flutter/material.dart';

class OtherSettings extends StatelessWidget {
  final List<String> text = [
    'Show files and folders with names which start with a dot'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('\n'),
        titleText('Other settings'),
        Text(''),
        optionsText('Scan exclusions'),
        bottonText('Excluded(0)'),
        Text('\n'),
        optionsText('TXT files discovery'),
        bottonText('Enabled'),
        Text('\n'),
        optionsText('Hidden files'),
        optionsMenu(text[0], false),
        Text('\n'),
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

  Padding optionsMenu(String title, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SwitchListTile(
        dense: true,
        activeColor: Colors.orange,
        contentPadding: const EdgeInsets.all(0),
        value: value,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
        onChanged: (val) {},
      ),
    );
  }

  Widget optionsText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
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
