import 'package:flutter/material.dart';

import '../drawer_page.dart';
import '../poputs/authors_poput.dart';

class SeriesScreen extends StatelessWidget {
  static const routeName = '/series-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Series'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          AuthorsPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Text(
            'All series of books and documents found on the device will be here.',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 22,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
