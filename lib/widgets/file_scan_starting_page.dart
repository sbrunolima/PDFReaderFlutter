import 'package:flutter/material.dart';

class ScanStarting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('\n'),
        titleText('Scan starting'),
        Text(''),
        optionsText('Autostart'),
        optionsMenu('Allow auto-start scanning', true),
        optionsNumber('Total documents:', '0   '),
        optionsNumber('Total authors:', '0   '),
        optionsNumber('Total series:', '0   '),
        optionsNumber('Backgroung tasks:', '0   '),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Align(
            alignment: Alignment.topRight,
            child: RaisedButton(
              child: Text(
                '               START SCAN               ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey,
              onPressed: () {},
            ),
          ),
        ),
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

  ListTile optionsNumber(String title, String value) {
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
      trailing: Text(
        value,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16,
        ),
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
}
