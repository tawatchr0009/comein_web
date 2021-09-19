import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child:
          //GestureDetector(onTap: () {}, child: Icon(Icons.login_outlined))
          Row(
        children: [
          Text("Logout"),
          IconButton(icon: Icon(Icons.logout), onPressed: () {}),
          SizedBox.fromSize(size: Size(20, 10)),
        ],
      ),
    );
  }
}
