import 'package:flutter/material.dart';

import './drawer_page.dart';
import './screens/books_documents_screen.dart';
import './screens/home_screen.dart';
import 'screens/favorites_screen.dart';
import './screens/to_read_screen.dart';
import './screens/settings_screen.dart';
import './screens/have_read_screen.dart';
import 'screens/file_scan_screen.dart';
import './screens/backup_restore_screen.dart';
import './screens/authors_screen.dart';
import './screens/series_screen.dart';
import './screens/collections_screen.dart';
import './screens/formats_screen.dart';
import './screens/folders_screen.dart';
import './screens/downloads_screen.dart';
import './screens/trash_screen.dart';
import './screens/flipping_indicator_screen.dart';
import './screens/parental_control_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        BooksDocuments.routeName: (ctx) => BooksDocuments(),
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(),
        ToReadScreen.routeName: (ctx) => ToReadScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        HaveReadScreen.routeName: (ctx) => HaveReadScreen(),
        FileScanScreen.routeName: (ctx) => FileScanScreen(),
        BackupRestore.routeName: (ctx) => BackupRestore(),
        AuthorsScreen.routeName: (ctx) => AuthorsScreen(),
        SeriesScreen.routeName: (ctx) => SeriesScreen(),
        CollectionsScreen.routeName: (ctx) => CollectionsScreen(),
        FormatsScreen.routeName: (ctx) => FormatsScreen(),
        FoldersScreen.routeName: (ctx) => FoldersScreen(),
        DownloadsScreen.routeName: (ctx) => DownloadsScreen(),
        TrashScreen.routeName: (ctx) => TrashScreen(),
        FlippingIndicatorScreen.routeName: (ctx) => FlippingIndicatorScreen(),
        ParentalControlScreen.routeName: (ctx) => ParentalControlScreen(),
      },
    );
  }
}
