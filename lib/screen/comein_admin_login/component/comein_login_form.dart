import 'package:comein_web/component/layout_form.dart';
import 'package:flutter/material.dart';

class ComeinLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutForm(
      width: 450,
      high: 400,
      // title: Text("Register"),
      subTitle: 'Administrator - Login',
      form: Form(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          LabelBox(label: "Email"),
          LayoutEmailFeild(hint: 'Enter your email'),
          LabelBox(label: "Password"),
          LayoutPasswordFeild(hint: 'Enter your password'),
          LineBox(height: 10),
          LayoutButton(label: 'Login', icon: Icon(Icons.login), press: () {}),
        ]),
      ),
    );
  }
}
