import 'package:flutter/material.dart';

import '../drawer_page.dart';
import '../poputs/favorites_popout.dart';

class HaveReadScreen extends StatelessWidget {
  static const routeName = '/have-read-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Have Read'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          FavoritesPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                'Books and documents that you added to the Have Read section will be here.',
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
      drawer: DrawerPage(),
    );
  }
}
