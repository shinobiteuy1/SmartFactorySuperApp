import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../Images/Icons/my_icons_icons.dart';
import '../../views/car_page.dart';
import '../../views/home_page.dart';
import '../../views/notification.dart';
import '../../views/qr_code.dart';
import '../../views/user.dart';
import '../values/colors.dart';

class BottonVavBar extends StatelessWidget {
  const BottonVavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     // ignore: no_leading_underscores_for_local_identifiers
     List<Widget> _buildScreens() {
      return [
      NotificationPage(),
       HomePage(),
       CarPage(),
       QRCode(),
       //NotificationPage(),
       User(),
      ];
     }
    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(
            MyIcons.home
          ),
          title: 'หน้าหลัก',
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            MyIcons.deliver_food,
          ),
          title: 'ประวัติรถ',
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            MyIcons.qrcode,
            color: white,
          ),
          title: 'สแกน QR รถ',
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            MyIcons.notification
          ),
          title: 'แจ้งเตือน',
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(
            MyIcons.user
          ),
          title: 'บัญชีผู้ใช้',
          activeColorPrimary: primaryColor,
          inactiveColorPrimary: secondaryColor,
        )
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    
    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        // ignore: prefer_const_constructors
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          // ignore: prefer_const_constructors
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        // ignore: prefer_const_constructors
        screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          // ignore: prefer_const_constructors
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style16, // Choose the nav bar style with this property.
    );
  }
}