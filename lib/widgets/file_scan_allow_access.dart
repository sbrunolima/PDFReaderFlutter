import 'package:flutter/material.dart';

class AllowAccesWidget extends StatelessWidget {
  final List<String> textMessage = [
    'To search for books and documents the app needs permission to acces the device memory'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(''),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 370,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 2,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              children: [
                Text(''),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    textMessage[0],
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 19,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(''),
                RaisedButton(
                  child: Text(
                    'CONFIGURE PERMISSION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue[400],
                  onPressed: () {},
                ),
                Text(''),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
