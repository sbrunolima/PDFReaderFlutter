import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

import '../poputs/sortby_popup.dart';

class DownloadsPopup extends StatelessWidget {
  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result == null) return;
    final file = result.files.first;

    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.grey[900],
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Open single file',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              _pickFile();
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Create folder',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Sort by',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.arrow_right, color: Colors.white, size: 30),
          ),
          onTap: () {
            SortByPopup();
          },
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Filter',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Hide deleted',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Share the reader',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Go to Premium',
              style: TextStyle(color: Colors.orange[900]),
            ),
            onTap: () {},
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text(
              'Kids mode',
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(Icons.cruelty_free, color: Colors.white, size: 25),
          ),
        ),
      ],
    );
  }
}
