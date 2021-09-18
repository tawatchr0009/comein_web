import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';
import 'component/body.dart';

class HotelMainScreen extends StatelessWidget {
  static String routeName = "/hotel/main";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
