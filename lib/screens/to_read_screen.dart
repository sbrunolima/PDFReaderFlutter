import 'package:flutter/material.dart';

import '../drawer_page.dart';
import '../poputs/favorites_popout.dart';

class ToReadScreen extends StatelessWidget {
  static const routeName = '/to-read';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('To Read'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          FavoritesPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Text(
            'Books and documents that you added to the To Read section will be here.',
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
