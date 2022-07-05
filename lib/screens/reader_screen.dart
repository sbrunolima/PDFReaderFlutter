import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

class MainPage extends StatefulWidget {
  int index;

  MainPage(this.index);

  List<String> _pdfFile = [
    'assets/sample.pdf',
    'assets/sample1.pdf',
    'assets/sample2.pdf'
  ];

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('PDF Reader'),
        centerTitle: true,
      ),
      body: Container(
        child: SfPdfViewer.asset(
          widget._pdfFile[widget.index],
          key: _pdfViewerKey,
        ),
      ),
    );
  }
}
