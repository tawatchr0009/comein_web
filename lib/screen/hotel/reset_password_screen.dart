import 'package:comein_web/screen/hotel/component/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';

class HotelResetPasswordScreen extends StatelessWidget {
  static String routeName = "/hotel/reset_password";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ResetPasswordForm()],
        ),
      ),
    );
  }
}
