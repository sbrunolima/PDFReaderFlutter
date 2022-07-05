import 'package:flutter/material.dart';

import '../drawer_page.dart';
import '../poputs/collections_popup.dart';

class TrashScreen extends StatelessWidget {
  static const routeName = '/trash-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Trash'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.delete_sharp), onPressed: () {}),
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          CollectionsPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Text(
            'Trash bin is  empty.\n\nBooks and documents that you put in the Trash bin will be here.',
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
