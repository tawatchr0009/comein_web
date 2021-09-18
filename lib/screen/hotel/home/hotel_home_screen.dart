import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';
import 'component/body.dart';

class HotelHomeScreen extends StatelessWidget {
  static String routeName = "/hotel/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text('Come In - Admin'),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {}, child: Icon(Icons.login_outlined))),
          SizedBox.fromSize(
            size: Size(20, 10),
          )
        ],
      ),
      body: Body(),
    );
  }
}
