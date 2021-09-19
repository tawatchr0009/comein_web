import 'package:comein_web/component/top_menu.dart';
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
          TopMenu(),
        ],
      ),
      body: Body(),
    );
  }
}
