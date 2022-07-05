import 'package:flutter/material.dart';

class FormatsDocumentsTypes extends StatelessWidget {
  final String text;

  FormatsDocumentsTypes(this.text);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          width: 370,
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
          child: Column(
            children: <Widget>[
              SizedBox(height: 2),
              ListTile(
                dense: true,
                visualDensity: VisualDensity(vertical: -4),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                title: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
