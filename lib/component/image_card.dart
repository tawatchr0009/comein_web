import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.title,
    required this.path,
    required this.height,
    required this.width,
    required this.bgColor,
    required VoidCallback this.press,
  }) : super(key: key);

  final String path;
  final double height;
  final double width;
  final Color bgColor;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.bgColor,
      elevation: 8.0,
      child: Container(
        height: this.height + 28,
        width: this.width,
        child: Column(
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Image.asset(
                  this.path,
                )),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              color: Colors.white,
              width: this.width,
              child: TextButton(
                onPressed: press,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //         Image.asset(
            //           this.path,
            //           //width: 300,
            //           // height: 150,
            //         ),
          ],
        ),
      ),
      //   child: Container(
      //     padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      //     height: this.height + 20,
      //     width: this.width,
      //     child: Column(
      //       children: [
      //         Image.asset(
      //           this.path,
      //           //width: 300,
      //           // height: 150,
      //         ),
      //         SizedBox.fromSize(
      //           size: Size(20, 20),
      //         ),
      //         Row(children: [
      //           //
      //           Container(
      //             color: Colors.white,
      //             width: this.width - 32,
      //             child: Text("Admin"),
      //           )
      //         ]),
      // SizedBox.fromSize(
      //   size: Size(20, 20),
      // ),
      // TextButton(
      //     onPressed: () {},
      //     child: Text(
      //       "Admin",
      //       style: TextStyle(
      //           color: Colors.red,
      //           backgroundColor: Colors.black,
      //           fontSize: 30),
      //     )),
      //     ],
      //   ),
      //),
    );
  }
}
