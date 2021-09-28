import 'package:comein_web/component/layout_form.dart';
import 'package:comein_web/screen/hotel/reset_password_screen.dart';
import 'package:comein_web/screen/hotel_admin_login/hotel_admin_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
//import 'package:adaptive_dialog/adaptive_dialog.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutForm(
      width: 600,
      high: 400,
      // title: Text("Register"),
      subTitle: 'Hotel Registration',
      form: Form(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          LabelBox(
            label: "Email",
          ),
          LayoutEmailFeild(hint: 'enter your email'),
          // emailFormField(),
          LabelBox(
            label: "Hotel Name",
          ),
          LayoutTextFeild(hint: 'enter your hotel-name'),
          LabelBox(
            label: "Contact Name",
          ),
          LayoutTextFeild(hint: 'enter your name - surname'),
          LabelBox(
            label: "Address",
          ),
          LayoutTextAreaFeild(hint: 'enter your address'),
          LayoutButton(
            label: 'Save',
            icon: Icon(Icons.save_rounded),
            press: () {
              print('click');

              AwesomeDialog(
                width: 400,
                context: context,
                dialogType: DialogType.SUCCES,
                animType: AnimType.BOTTOMSLIDE,
                title: 'Register Success',
                desc: 'save succes.',
                btnCancelOnPress: () {},
                btnOkOnPress: () {
                  //Navigator.pushNamed(context, HotelAdminLoginScreen.routeName);
                  Navigator.pushNamed(
                      context, HotelResetPasswordScreen.routeName);
                },
              ).show();
              // Future<OkCancelResult> result = showOkCancelAlertDialog(
              //     context: context,
              //     title: 'Confirm to save',
              //     onWillPop: () async {} );
              //result == OkCancelResult.ok ? print('OK') : print('cancel');
            },
          )
        ]),
      ),
    );
  }
}
