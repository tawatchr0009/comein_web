import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';

import 'component/otp_form.dart';

class HotelOTPScreen extends StatelessWidget {
  static String routeName = "/hotel/otp";
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
          children: [OTPForm()],
        ),
      ),
    );
  }
}
