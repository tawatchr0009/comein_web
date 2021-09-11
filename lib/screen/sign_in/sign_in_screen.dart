import 'package:flutter/material.dart';
//import 'package:shop_app/size_config.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Body(),
    );
  }
}
