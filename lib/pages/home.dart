import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:romanceusdecor/pages/assignments_page.dart';
import 'package:romanceusdecor/pages/chats_page.dart';
import 'package:romanceusdecor/pages/dashboard.dart';
import 'package:romanceusdecor/pages/profile_page.dart';
import 'package:romanceusdecor/pages/videos_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        Dashboard(),
        AssignmentsPage(),
        VideosPage(),
        ChatsPage(),
        ProfilePage()
      ],
      confineInSafeArea: true,
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
      ),
      navBarStyle: NavBarStyle.style6,
      items: [
        PersistentBottomNavBarItem(
            activeColorPrimary: Theme.of(context).primaryColor,
            inactiveColorPrimary: Colors.grey,
            icon: Icon(CupertinoIcons.home),
            title: 'Home'),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.calendar_today),
          title: 'Assignments',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.videocam),
          title: 'Videos',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.chat_bubble),
          title: 'Chat',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.person),
          title: 'Profile',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Colors.grey,
        ),
      ],
    );
  }
}
