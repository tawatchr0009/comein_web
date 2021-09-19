import 'package:comein_web/screen/hotel/home/hotel_home_screen.dart';
import 'package:comein_web/screen/hotel_register/hotel_register_screen.dart';
import 'package:flutter/material.dart';

class HotelRegisterLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Hotel registration, click ",
          style: TextStyle(fontSize: 20),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, HotelRegisterScreen.routeName);
            },
            child: Text(
              "here",
              style: TextStyle(fontSize: 20),
            ))
      ]),
    );
  }
}
