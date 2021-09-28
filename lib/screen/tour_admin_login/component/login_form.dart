import 'package:comein_web/component/layout_form.dart';
import 'package:comein_web/screen/tour/tour_main_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutForm(
      width: 450,
      high: 400,
      // title: Text("Register"),
      subTitle: 'Tour - Login',
      form: Form(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          LabelBox(label: "Email"),
          LayoutEmailFeild(hint: 'Enter your email'),
          LabelBox(label: "Password"),
          LayoutPasswordFeild(hint: 'Enter your password'),
          LineBox(height: 10),
          LayoutButton(
              label: 'Login',
              icon: Icon(Icons.login),
              press: () {
                Navigator.pushNamed(context, TourMainScreen.routeName);
              }),
        ]),
      ),
    );
  }
}
