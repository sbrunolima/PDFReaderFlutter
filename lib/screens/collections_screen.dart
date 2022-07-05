import 'package:flutter/material.dart';

import '../poputs/collections_popup.dart';
import '../drawer_page.dart';

class CollectionsScreen extends StatelessWidget {
  static const routeName = '/collections-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Collections'),
        actions: [
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          CollectionsPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: Column(
        children: [
          SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 370,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey.shade500, width: 2),
                gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey.shade800,
                    Colors.blueGrey.shade800,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 2),
                  CollectionButton('Create a colleciton')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile CollectionButton(String text) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity(vertical: -4),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      trailing: Icon(Icons.add_circle_outline_outlined, color: Colors.white),
    );
  }
}
