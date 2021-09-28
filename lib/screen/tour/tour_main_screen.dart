import 'package:comein_web/component/top_menu.dart';
import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';
import 'component/body.dart';

class TourMainScreen extends StatelessWidget {
  static String routeName = "/tour/main";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text('Come In - Tour Agency'),
        actions: [
          TopMenu(),
        ],
      ),
      body: Body(),
    );
  }
}
