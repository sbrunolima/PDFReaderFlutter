import 'package:flutter/material.dart';
import 'package:scaffold/drawer_page.dart';

import '../poputs/collections_popup.dart';
import '../widgets/formats_documents_types.dart';

class FormatsScreen extends StatelessWidget {
  static const routeName = '/formats-screen';

  final List<String> text = [
    'The book reader PDF Reader allows reading books, magazines, articles and docments of all formats for free in one app. \n\nFiles of diferent formats found on the device: 0',
    'PDF',
    'EPUB',
    'WORD',
    'DOC',
    'DOCX',
    'MOBI',
    'TXT',
    'DJAVU',
    'CHM',
    'RTF',
    'ODT',
    'FB2',
    'AZW',
    'COMIC',
    'CBR',
    'CBZ',
  ];

  MenuFormator() {
    for (int i = 1; i < 17; i++) {
      FormatsDocumentsTypes(text[1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: const Text('Formats'),
        actions: [
          IconButton(icon: Icon(Icons.diamond_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          CollectionsPopup(),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      drawer: DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 4),
            TopTextBox(),
            FormatsDocumentsTypes(text[1]),
            FormatsDocumentsTypes(text[2]),
            FormatsDocumentsTypes(text[3]),
            FormatsDocumentsTypes(text[4]),
            FormatsDocumentsTypes(text[5]),
            FormatsDocumentsTypes(text[6]),
            FormatsDocumentsTypes(text[7]),
            FormatsDocumentsTypes(text[8]),
            FormatsDocumentsTypes(text[9]),
            FormatsDocumentsTypes(text[10]),
            FormatsDocumentsTypes(text[11]),
            FormatsDocumentsTypes(text[12]),
            FormatsDocumentsTypes(text[13]),
            FormatsDocumentsTypes(text[14]),
            FormatsDocumentsTypes(text[15]),
            FormatsDocumentsTypes(text[16]),
          ],
        ),
      ),
    );
  }

  Align TopTextBox() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          width: 370,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey.shade500, width: 1.3),
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                dense: true,
                visualDensity: VisualDensity(vertical: -4),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 25),
                title: Text(
                  text[0],
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
