import 'package:comein_web/screen/hotel_register/component/register_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterForm(),
            //SeparatorBox(),
            //HotelRegister(),
            // LoginForm(),
            // SeparatorBox(),
          ],
        ),
      ),
    );
  }
}
