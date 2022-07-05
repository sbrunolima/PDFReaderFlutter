import 'package:flutter/material.dart';

class BackupRestoreDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(''),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 370,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white12,
                  Colors.white12,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3),
                ),
                optionsMenu('Auto Backup', false),
                optionsText('Disabled'),
                Text(''),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 370,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white12,
                  Colors.white12,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Column(
              children: <Widget>[
                Text(''),
                checked('Create a backup'),
                Text(''),
              ],
            ),
          ),
        ),
      ],
    );
  }

  SwitchListTile optionsMenu(String title, bool value) {
    return SwitchListTile(
      dense: true,
      visualDensity: VisualDensity(vertical: -4),
      activeColor: Colors.orange,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      value: value,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
      onChanged: (val) {},
    );
  }

  ListTile checked(String title) {
    return ListTile(
      dense: true,
      visualDensity: VisualDensity(vertical: -4),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      trailing: Icon(Icons.add_circle_outline_outlined, color: Colors.white),
    );
  }

  Widget optionsText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
