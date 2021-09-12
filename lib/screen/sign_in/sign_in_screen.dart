import 'package:flutter/material.dart';
import 'package:comein_web/size_config.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Come In",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}
