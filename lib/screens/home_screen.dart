import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

import '../drawer_page.dart';
import '../poputs/reading_now_popup.dart';
import '../screens/reader_screen.dart';
import '../widgets/books_list.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Reading Now'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ReadingNowPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(height: 10),
          BooksList(0),
          BooksList(1),
          BooksList(2),
          BooksList(0),
          BooksList(1),
          BooksList(2),
        ]),
      ),
    );
  }
}
