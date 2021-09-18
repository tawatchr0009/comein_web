import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';
import 'component/body.dart';

class HotelAdminLoginScreen extends StatelessWidget {
  static String routeName = "/hotel_admin/login";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
