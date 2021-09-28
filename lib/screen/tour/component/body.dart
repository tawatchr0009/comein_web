import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
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
        priority: 1,
        title: 'Settings',
        onTap: () => page.jumpToPage(1),
        icon: Icons.settings,
      ),
      SideMenuItem(
        priority: 2,
        title: 'Exit',
        onTap: () => page.jumpToPage(2),
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
                child: Text("Setting."),
              ),
              Container(
                // color: Colors.red,
                //child: TourList(),
                child: Text("Exit."),
              ),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
