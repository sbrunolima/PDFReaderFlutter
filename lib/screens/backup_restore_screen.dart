import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';
import '../widgets/backup_restore_decoration.dart';
import '../widgets/backup_restore_bottom.dart';

class BackupRestore extends StatelessWidget {
  static const routeName = '/backup-restore';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text('Backup & Restore'),
        leading: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          backgroundColor: Colors.blueGrey[600],
          elevation: 0,
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(SettingsScreen.routeName);
          },
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: <Widget>[
          BackupRestoreDecoration(),
          BackupRestoreBottom(),
        ],
      ),
    );
  }
}
