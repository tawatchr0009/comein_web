import 'package:comein_web/screen/hotel_admin_login/component/login_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginForm(),
            SeparatorBox(),
            // LoginForm(),
            // SeparatorBox(),
          ],
        ),
      ),
    );
  }
}

class SeparatorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(60, 20),
    );
  }
}
