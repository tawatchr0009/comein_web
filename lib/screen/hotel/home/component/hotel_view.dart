import 'package:comein_web/component/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class TourView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return LayoutScreen(
      title: "Hotel A",
      content: Column(
        children: [
          Container(
            width: double.infinity,
            height: 600,
            color: Colors.red,
            child: PageView(controller: page, children: [
              Container(
                child: Center(
                  child: Text('Hotel-profile'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Hotel-User'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Hotel-static'),
                ),
              ),
            ]),
          ),
          ConvexAppBar(
              style: TabStyle.react,
              items: [
                TabItem(icon: Icons.hotel_rounded),
                TabItem(icon: Icons.account_box_rounded),
                TabItem(icon: Icons.assessment),
              ],
              initialActiveIndex: 0,
              onTap: (int i) {
                print('click index=$i');
                page.jumpToPage(i);
              }),
        ],
      ),
    );
  }
}
