import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class ParentalControlScreen extends StatelessWidget {
  static const routeName = '/parental-control-screen';

  final List<String> _texts = [
    'The kids mode can be enabled in the three dot menu for the section of the library od for a book to be read',
    'Multiplication table',
    'Diaplay in the "Kids mode" only books added to the Kids collections',
    'Specify collections that contain only kids books',
  ];
  @override
  Widget build(BuildContext context) {
    final sized35 = SizedBox(height: 35);
    final sized05 = SizedBox(height: 5);
    final sized10 = SizedBox(height: 10);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Parental control'),
        leading: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          backgroundColor: Colors.blueGrey[600],
          elevation: 0,
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsScreen.routeName);
          },
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: <Widget>[
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 370,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white12,
                    Colors.white12,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Column(
                children: <Widget>[
                  optionsMenuOn('Kids mode', true),
                ],
              ),
            ),
          ),
          bottonText(_texts[0]),
          sized35,
          optionsText('Passcode'),
          sized05,
          bottonText(_texts[1]),
          sized35,
          optionsText('Content filter'),
          optionsMenuOn(_texts[2], false),
          sized35,
          optionsText('Kids collections'),
          sized05,
          bottonText(_texts[3]),
          sized10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Align(
              alignment: Alignment.topRight,
              child: RaisedButton(
                child: Text(
                  '          ADD COLLECTION          ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                color: Colors.grey,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding optionsMenuOn(String title, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: SwitchListTile(
        dense: true,
        activeColor: Colors.orange,
        contentPadding: const EdgeInsets.all(0),
        value: value,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: value == true ? FontWeight.bold : FontWeight.normal,
            color: value == true ? Colors.orange : Colors.grey,
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
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
