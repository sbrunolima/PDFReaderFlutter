import 'package:flutter/material.dart';

import '../drawer_page.dart';
import '../poputs/favorites_popout.dart';

class FoldersScreen extends StatelessWidget {
  static const routeName = '/folders-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Folders'),
        actions: [
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          FavoritesPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: Column(
        children: <Widget>[
          SizedBox(height: 2),
          Submenus(0),
          Submenus(1),
        ],
      ),
    );
  }

  Padding Submenus(int index) {
    return index == 0
        ? Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
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
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(vertical: -4),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
                leading: Icon(Icons.sd_card, color: Colors.white),
                title: Text(
                  'Storage:/strage/emulated/0',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
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
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(vertical: -4),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                trailing: Icon(Icons.add_circle_outline_outlined,
                    color: Colors.white),
                title: Text(
                  'Attach folder',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
  }
}
