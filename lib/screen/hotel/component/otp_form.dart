import 'package:comein_web/component/layout_form.dart';
import 'package:comein_web/screen/hotel_admin_login/hotel_admin_login_screen.dart';
import 'package:flutter/material.dart';

class OTPForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double box_high = 20;
    double box_width = 50;
    return LayoutForm(
      width: 450,
      high: 400,
      // title: Text("Register"),
      subTitle: 'Hotel - OTP',
      form: Form(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          LabelBox(label: "OTP"),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: box_width,
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    style: TextStyle(fontSize: box_high),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    // onChanged: (value) {
                    //   nextField(value, pin2FocusNode);
                    // },
                  ),
                ),
                SizedBox(
                  width: box_width,
                  child: TextFormField(
                    //focusNode: pin2FocusNode,
                    obscureText: true,
                    style: TextStyle(fontSize: box_high),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    // onChanged: (value) => nextField(value, pin3FocusNode),
                  ),
                ),
                SizedBox(
                  width: box_width,
                  child: TextFormField(
                    //   focusNode: pin3FocusNode,
                    obscureText: true,
                    style: TextStyle(fontSize: box_high),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    // onChanged: (value) => nextField(value, pin4FocusNode),
                  ),
                ),
                SizedBox(
                  width: box_width,
                  child: TextFormField(
                    //focusNode: pin4FocusNode,
                    obscureText: true,
                    style: TextStyle(fontSize: box_high),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    // onChanged: (value) => nextField(value, pin5FocusNode),
                    // onChanged: (value) {
                    //   if (value.length == 1) {
                    //     pin4FocusNode.unfocus();
                    //     // Then you need to check is the code is correct or not
                    //   }
                    // },
                  ),
                ),
                SizedBox(
                  width: box_width,
                  child: TextFormField(
                    // focusNode: pin5FocusNode,
                    obscureText: true,
                    style: TextStyle(fontSize: box_high),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    // onChanged: (value) {
                    //   nextField(value, pin6FocusNode);
                    //},
                  ),
                ),
                SizedBox(
                  width: box_width,
                  child: TextFormField(
                    // focusNode: pin6FocusNode,
                    obscureText: true,
                    style: TextStyle(fontSize: box_high),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    // onChanged: (value) {
                    //   if (value.length == 1) {
                    //     pin6FocusNode.unfocus();
                    //     // Then you need to check is the code is correct or not
                    //   }
                    // },
                  ),
                ),
              ],
            ),
          ),
          LineBox(height: 30),
          LayoutButton(
              label: 'Confirm',
              icon: Icon(Icons.confirmation_number),
              press: () {
                Navigator.pushNamed(context, HotelAdminLoginScreen.routeName);
              }),
        ]),
      ),
    );
  }
}

final otpInputDecoration = InputDecoration(
  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
);
