import 'package:flutter/material.dart';
import 'package:scaffold/screens/flipping_indicator_screen.dart';

import 'file_scan_screen.dart';
import '../screens/home_screen.dart';
import '../screens/backup_restore_screen.dart';
import '../screens/parental_control_screen.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  final List<String> settingsText = [
    'Continue reading the last book or document on the app startup',
    'Hide status bar and navigation bar',
    'Adjust btightness by swiping up and down on the left side of the screen',
    'Switching color modes by touching the upper left corner',
    'Open books and documents in a new window. Switching between documents via the "Active app" system button',
    'Keep the screen on for 10 minutes longer than your current system setting',
    'Help to improve the app by automatically sending anonymous statistics about its usage',
    'Version 222.222.222.222'
  ];

  bool valueOne = true;
  bool valueTwo = false;

  @override
  Widget build(BuildContext context) {
    final sizedBoxZero = SizedBox(height: 2);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Settings'),
        leading: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          backgroundColor: Colors.blueGrey[600],
          elevation: 0,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(''),
            titleText('General'),
            sizedBoxZero,
            //optionsText('File scan'),
            ListTile(
              title: Text(
                'File scan',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(FileScanScreen.routeName);
              },
            ),
            ListTile(
              title: Text(
                'Backup & Restore',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(BackupRestore.routeName);
              },
            ),
            Text(''),
            optionsText('Read book when start'),
            optionsMenuOn(settingsText[0], valueOne),
            Text('\n'),
            titleText('Reading'),
            ListTile(
              title: Text(
                'Flipping & Indicator of pages',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(FlippingIndicatorScreen.routeName);
              },
            ),
            Text(''),
            optionsText('Full-screen mode'),
            optionsMenuOn(settingsText[1], valueTwo),
            Text('\n'),
            optionsText('Brightness by swipe'),
            optionsMenuOn(settingsText[2], valueOne),
            Text('\n'),
            optionsText('Day-Night by touch'),
            optionsMenuOn(settingsText[3], valueOne),
            Text('\n'),
            optionsText('Multi-document mode'),
            optionsMenuOn(settingsText[4], valueTwo),
            Text('\n'),
            optionsText('Screen on'),
            optionsMenuOn(settingsText[5], valueOne),
            Text('\n'),
            titleText('Other'),
            Text(''),
            optionsText('Interface language'),
            Text(''),
            ListTile(
              title: Text(
                'Parental control',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(ParentalControlScreen.routeName);
              },
            ),
            Text(''),
            optionsText('Usage statistics'),
            optionsMenuOn(settingsText[6], valueOne),
            Text('\n'),
            optionsText('About & Version'),
            SizedBox(height: 8),
            bottonText(settingsText[7]),
            SizedBox(height: 30)
          ],
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
