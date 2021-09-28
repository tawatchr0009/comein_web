import 'package:comein_web/screen/hotel/home/component/hotel_list.dart';
import 'package:comein_web/screen/hotel/home/component/hotel_view.dart';
import 'package:comein_web/screen/hotel/home/component/tour_list.dart';
import 'package:flutter/material.dart';
// import 'package:vertical_navigation_bar/vertical_navigation_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

import 'hotel_staff_list.dart';

class Body extends StatelessWidget {
  // final pageController = PageController(initialPage: 0, keepPage: true);

  // final navItems = [
  //   SideNavigationItem(icon: FontAwesomeIcons.calendarCheck, title: "New task"),
  //   SideNavigationItem(
  //       icon: FontAwesomeIcons.calendarAlt, title: "Personal task"),
  //   SideNavigationItem(
  //       icon: FontAwesomeIcons.fileAlt, title: "Personal document"),
  //   SideNavigationItem(icon: FontAwesomeIcons.calendar, title: "Company task"),
  //   SideNavigationItem(
  //       icon: FontAwesomeIcons.arrowCircleRight, title: "Options")
  // ];
  // final initialTab = 0;
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Row(
  //       children: <Widget>[
  //         SideNavigation(
  //           navItems: this.navItems,
  //           itemSelected: (index) {
  //             pageController.animateToPage(index,
  //                 duration: Duration(milliseconds: 300), curve: Curves.linear);
  //           },
  //           initialIndex: 0,
  //           actions: <Widget>[
  //             //add some action button here
  //           ],
  //         ),
  //         Expanded(
  //           child: PageView.builder(
  //             itemCount: 5,
  //             controller: pageController,
  //             scrollDirection: Axis.vertical,
  //             physics: NeverScrollableScrollPhysics(),
  //             itemBuilder: (context, index) {
  //               return Container(
  //                   color: Colors.blueGrey.withOpacity(0.1),
  //                   child: Center(
  //                     child: Text("Page " + index.toString()),
  //                   ));
  //             },
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    List<SideMenuItem> items = [
      SideMenuItem(
        // Priority of item to show on SideMenu, lower value is displayed at the top
        priority: 0,
        title: 'Dashboard',
        onTap: () => page.jumpToPage(0),
        icon: Icons.home,
      ),
      SideMenuItem(
        // Priority of item to show on SideMenu, lower value is displayed at the top
        priority: 1,
        title: 'Hotel-Staff',
        onTap: () => page.jumpToPage(1),
        icon: Icons.account_tree_rounded,
      ),
      // SideMenuItem(
      //   // Priority of item to show on SideMenu, lower value is displayed at the top
      //   priority: 2,
      //   title: 'Tour Agency',
      //   onTap: () => page.jumpToPage(2),
      //   icon: Icons.tour_outlined,
      // ),
      SideMenuItem(
        priority: 3,
        title: 'Settings',
        onTap: () {},
        icon: Icons.settings,
      ),
      SideMenuItem(
        priority: 4,
        title: 'Exit',
        onTap: () {},
        icon: Icons.exit_to_app,
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          child: SideMenu(
            // page controller to manage a PageView
            controller: page,
            // will shows on top of all items, it can be a logo or a Title text
            title: Column(children: [
              Image.asset('images/comein_logo.png'),
              SizedBox.fromSize(size: Size(10, 10)),
            ]),
            // will show on bottom of SideMenu when displayMode was SideMenuDisplayMode.open
            //footer: Text('demo'),
            // List of SideMenuItem to show them on SideMenu
            items: items,
          ),
        ),
        Expanded(
          child: PageView(
            controller: page,
            children: [
              Container(
                child: Center(
                  child: Text('Dashboard'),
                ),
              ),
              Container(
                // color: Colors.red,
                //child: HotelList(),
                child: HotelStaffList(),
              ),
              Container(
                // color: Colors.red,
                //child: TourList(),
                child: TourView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
