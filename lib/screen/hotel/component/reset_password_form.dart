import 'package:comein_web/component/layout_form.dart';
import 'package:comein_web/screen/hotel/otp_screen.dart';
import 'package:flutter/material.dart';

class ResetPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutForm(
      width: 450,
      high: 400,
      // title: Text("Register"),
      subTitle: 'Hotel - Reset Password',
      form: Form(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          LabelBox(label: "Email"),
          LayoutEmailFeild(hint: 'Enter your email'),
          LabelBox(label: "Password"),
          LayoutPasswordFeild(hint: 'Enter your password'),
          LabelBox(label: "Confirm Password"),
          LayoutPasswordFeild(hint: 'Enter your confirm password'),
          LineBox(height: 10),
          LayoutButton(
              label: 'Next',
              icon: Icon(Icons.navigate_next),
              press: () {
                Navigator.pushNamed(context, HotelOTPScreen.routeName);
              }),
        ]),
      ),
    );
  }
}
