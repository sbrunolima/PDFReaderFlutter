import 'package:flutter/material.dart';

class BackupRestoreBottom extends StatelessWidget {
  final List<String> text = [
    'Backups do not include your files. Be sure to copy the book and document files you want to save.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(''),
        optionsText(text[0]),
        Text(''),
        checked('Import file', true),
        Text(''),
        checked('Delete backups', false),
      ],
    );
  }

  ListTile checked(String title, bool check) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity(vertical: -4),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      trailing: check
          ? Icon(Icons.import_export_outlined, color: Colors.white)
          : Icon(Icons.delete, color: Colors.white),
    );
  }

  Widget optionsText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
