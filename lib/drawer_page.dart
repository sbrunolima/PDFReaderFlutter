import 'package:flutter/material.dart';

import 'screens/books_documents_screen.dart';
import './screens/home_screen.dart';
import 'screens/favorites_screen.dart';
import './screens/to_read_screen.dart';
import './screens/settings_screen.dart';
import './screens/have_read_screen.dart';
import './screens/authors_screen.dart';
import './screens/series_screen.dart';
import './screens/collections_screen.dart';
import './screens/formats_screen.dart';
import './screens/folders_screen.dart';
import './screens/downloads_screen.dart';
import './screens/trash_screen.dart';

class DrawerPage extends StatelessWidget {
  final String text =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';

  Widget drawerBuilder(BuildContext context, String title, IconData icon) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(BooksDocuments.routeName);
          },
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Drawer(
        backgroundColor: Colors.blueGrey[900],
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon:
                      Icon(Icons.auto_stories, color: Colors.orange, size: 32),
                  onPressed: null,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'PDF Reader',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 17, color: Colors.grey, thickness: 2),

            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.refresh, color: Colors.white, size: 30),
              title: Text(
                'Reading Now',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.local_library_rounded,
                  color: Colors.white, size: 30),
              title: Text(
                'Books & documents',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(BooksDocuments.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.star_border, color: Colors.white, size: 30),
              title: Text(
                'Favorites',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(FavoritesScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.watch_later_outlined,
                  color: Colors.white, size: 30),
              title: Text(
                'To Read',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(ToReadScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading:
                  Icon(Icons.done_all_outlined, color: Colors.white, size: 30),
              title: Text(
                'Have Read',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HaveReadScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.person, color: Colors.white, size: 30),
              title: Text(
                'Authors',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AuthorsScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading:
                  Icon(Icons.discount_rounded, color: Colors.white, size: 30),
              title: Text(
                'Series',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(SeriesScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading:
                  Icon(Icons.newspaper_rounded, color: Colors.white, size: 30),
              title: Text(
                'Collections',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(CollectionsScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading:
                  Icon(Icons.layers_rounded, color: Colors.white, size: 36),
              title: const Text(
                'Formats',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(FormatsScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.folder, color: Colors.white, size: 30),
              title: const Text(
                'Folders',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(FoldersScreen.routeName);
              },
            ),
            // drawerBuilder('Downloads', Icons.download),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.download, color: Colors.white, size: 30),
              title: const Text(
                'Downloads',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(DownloadsScreen.routeName);
              },
            ),
            // drawerBuilder('Trash', Icons.takeout_dining_rounded),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.delete, color: Colors.white, size: 30),
              title: const Text(
                'Trash',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(TrashScreen.routeName);
              },
            ),
            Divider(height: 17, color: Colors.grey, thickness: 2),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.settings, color: Colors.white, size: 34),
              title: Text(
                'Settings',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
              },
            ),
            ListTile(
              hoverColor: Colors.indigo[600],
              leading: Icon(Icons.chat, color: Colors.white, size: 30),
              title: Text(
                'Send feedback',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => alertPopup(context));
              },
            ),
          ],
        ),
      ),
    );
  }

  Center alertPopup(BuildContext context) {
    return Center(
      child: AlertDialog(
        backgroundColor: Colors.blueGrey[600],
        title: Text(
          'Feedback about PDF Reader',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        content: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 18,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          ListTile(
            hoverColor: Colors.blueGrey[400],
            title: Text(
              'Continue',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
