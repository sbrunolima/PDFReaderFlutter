import 'package:flutter/material.dart';

class SortByPopup extends StatelessWidget {
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
          onTap: () {},
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
              'Retrieve all covers',
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
