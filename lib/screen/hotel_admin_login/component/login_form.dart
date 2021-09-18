import 'package:comein_web/screen/hotel/home/hotel_home_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Container(
        width: 600,
        height: 600,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
        color: Colors.white54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('images/comein_logo.png'),
            LineBox(height: 20),
            // Text(
            //   "Come In - Admin",
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold),
            // ),
            //LineBox(height: 10),
            Text(
              "enter your email and password to acess admin panel",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
            Form(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                LineBox(height: 50),
                // Text("Email"),
                LineBox(height: 10),
                buildEmailFormField(),
                LineBox(height: 20),
                buildEmailFormField(),
                LineBox(height: 20),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, HotelHomeScreen.routeName);
                    },
                    label: Text('Login'),
                    icon: Icon(Icons.login_rounded),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 25),
                    ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class LineBox extends StatelessWidget {
  const LineBox({required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(10, this.height),
    );
  }
}

TextFormField buildEmailFormField() {
  return TextFormField(
    style: TextStyle(color: Colors.black),
    keyboardType: TextInputType.emailAddress,
    // onSaved: (newValue) => email = newValue,
    // onChanged: (value) {
    //   if (value.isNotEmpty) {
    //     removeError(error: kEmailNullError);
    //   } else if (emailValidatorRegExp.hasMatch(value)) {
    //     removeError(error: kInvalidEmailError);
    //   }
    //   return null;
    // },
    // validator: (value) {
    //   if (value!.isEmpty) {
    //     addError(error: kEmailNullError);
    //     return "";
    //   } else if (!emailValidatorRegExp.hasMatch(value)) {
    //     addError(error: kInvalidEmailError);
    //     return "";
    //   }
    //   return null;
    // },
    decoration: InputDecoration(
      //   //focusColor: Colors.white,
      //   //fillColor: Colors.yellow,
      labelText: "Email",
      hintText: "enter your email",
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      //   // If  you are using latest version of flutter then lable text and hint text shown like this
      //   // if you r using flutter less then 1.20.* then maybe this is not working properly
      //   floatingLabelBehavior: FloatingLabelBehavior.always,
      //   suffixIcon: CustomSurffixIcon(svgIcon: "icons/Mail.svg"),
    ),
  );
}
