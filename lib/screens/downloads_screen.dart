import 'package:flutter/material.dart';

import '../drawer_page.dart';
import '../poputs/downloads_popup.dart';

class DownloadsScreen extends StatelessWidget {
  static const routeName = '/download-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Downloads'),
        actions: [
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          DownloadsPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                'Books and documents from the Download filder will be here.',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
