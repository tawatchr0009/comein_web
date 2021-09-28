import 'package:comein_web/screen/comein_admin_login/component/comein_login_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ComeinLoginForm()],
        ),
      ),
    );
  }
}
