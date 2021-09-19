import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';
import 'component/body.dart';

class HotelRegisterScreen extends StatelessWidget {
  static String routeName = "/hotel_admin/register";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
