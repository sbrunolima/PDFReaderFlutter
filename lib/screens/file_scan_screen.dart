import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';
import '../widgets/file_scan_allow_access.dart';
import '../widgets/file_scan_starting_page.dart';
import '../widgets/scan_scope_page.dart';
import '../widgets/other_settings_page.dart';

class FileScanScreen extends StatelessWidget {
  static const routeName = '/file-scan-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Scan'),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AllowAccesWidget(),
            ScanStarting(),
            ScanScope(),
            OtherSettings(),
          ],
        ),
      ),
    );
  }
}
