import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class FlippingIndicatorScreen extends StatelessWidget {
  static const routeName = '/flipping-indicator-screen';

  final List<String> _texts = [
    'Show animations when flipping pages by using volume buttons and by touch',
    'Use the volume buttons to flip pages',
    'Line with curent position',
    'Scheme 1',
    'Dont show',
    'Disable',
  ];

  @override
  Widget build(BuildContext context) {
    final sized25 = SizedBox(height: 25);
    final sized35 = SizedBox(height: 35);
    final sized10 = SizedBox(height: 10);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flipping & Indicator of pages'),
        backgroundColor: Colors.blueGrey[600],
        leading: FloatingActionButton(
          backgroundColor: Colors.blueGrey[600],
          elevation: 0,
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsScreen.routeName);
          },
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: <Widget>[
          sized25,
          titleText('All flipping modes'),
          sized25,
          optionsText('Flipping animation'),
          optionsMenuOn(_texts[0], true),
          sized25,
          optionsText('Volume buttons'),
          optionsMenuOn(_texts[1], true),
          sized25,
          titleText('Horizontal flipping'),
          sized25,
          optionsText('Indicator of pages'),
          sized10,
          bottonText(_texts[2]),
          sized35,
          optionsText('Flipping by touch'),
          sized10,
          bottonText(_texts[3]),
          sized35,
          titleText('Vertical flipping'),
          sized25,
          optionsText('Indicator of pages'),
          sized10,
          bottonText(_texts[4]),
          sized35,
          optionsText('Flipping by touch'),
          sized10,
          bottonText(_texts[5]),
        ],
      ),
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

  Padding optionsMenuOn(String title, bool value) {
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
