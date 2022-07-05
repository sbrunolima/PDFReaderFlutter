import 'package:flutter/material.dart';

import '../screens/reader_screen.dart';

class BooksList extends StatelessWidget {
  int index;
  BooksList(this.index);

  final List<String> _booksData = [
    'Basic sample PDF file for testing. it’s a small file with normal text in it. Here you can directly download and use it in your tools or anywhere it is free for all to use and modify files for reuse.',
    'A sample PDF file that size is approx 10 MB. you can use that file for validating and other conditions for size > 10 MB. This PDF contains text and images in it. You can reuse this file and change it.',
    'Sample PDF with images is content images within the PDF. So, You can use this PDF for testing PDF with images. its size is around 4 MB so, you can also use a sample PDF of 4 MB.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueGrey.shade500, width: 2),
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey.shade800,
                Colors.blueGrey.shade800,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                ListTile(
                  //dense: true,
                  leading: Image.asset(
                    'assets/sample1.png',
                    height: 100,
                    width: 100,
                  ),
                  //visualDensity: VisualDensity(vertical: -4),

                  title: Text(
                    _booksData[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainPage(index)));
                  },
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
