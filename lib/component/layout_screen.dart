import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  final String title;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        color: Colors.white54,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Text(
                  this.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              )),
          Card(
            elevation: 8.0,
            child: Container(width: double.infinity, child: this.content),
          )
        ]),
      ),
    );
  }
}
