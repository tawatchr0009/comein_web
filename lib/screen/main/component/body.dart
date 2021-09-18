import 'package:comein_web/component/image_card.dart';
import 'package:comein_web/screen/hotel_admin_login/hotel_admin_login_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //Text("Hello")
        // Image.asset('images/admin.png')
        //     Card(
        //       child: Image.asset('images/admin.png'),
        // ),
        //     Card(
        //   color: Colors.grey[300],
        //   elevation: 8.0,
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        //     height: 250,
        //     width: 250,
        //     child: Column(
        //       children: [
        //         Image.asset(
        //           'images/admin.png',
        //           //width: 300,
        //           height: 150,
        //         ),
        //         SizedBox.fromSize(
        //           size: Size(20, 20),
        //         ),
        //         TextButton(
        //             onPressed: () {},
        //             child: Text(
        //               "Admin",
        //               style: TextStyle(
        //                   color: Colors.red,
        //                   backgroundColor: Colors.black,
        //                   fontSize: 30),
        //             )),
        //       ],
        //     ),
        //   ),
        // ),

        ImageCard(
          title: 'Admin',
          path: 'images/admin.png',
          bgColor: Colors.amber,
          height: 220,
          width: 200,
          press: () {
            Navigator.pushNamed(context, HotelAdminLoginScreen.routeName);
          },
        ),
        SeparatorBox(),
        ImageCard(
          title: 'Hotel',
          path: 'images/hotel.png',
          bgColor: Colors.amber,
          height: 220,
          width: 200,
          press: () {
            //Navigator.pushNamed(context, HotelAdminLoginScreen.routeName);
          },
        ),
        SeparatorBox(),
        ImageCard(
          title: 'Tour',
          path: 'images/travel-luggage.png',
          bgColor: Colors.amber,
          height: 220,
          width: 200,
          press: () {
            //Navigator.pushNamed(context, HotelAdminLoginScreen.routeName);
          },
        ),
      ]),
    ));
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
