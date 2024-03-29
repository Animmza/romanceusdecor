import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:romanceusdecor/models/user.dart';
import 'package:romanceusdecor/pages/assignments_page.dart';
import 'package:romanceusdecor/pages/chats_page.dart';
import 'package:romanceusdecor/pages/dashboard.dart';
import 'package:romanceusdecor/pages/profile_page.dart';
import 'package:romanceusdecor/pages/videos_page.dart';
import 'package:romanceusdecor/services/auth_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthServices _authServices = AuthServices();
  AppUser? _user;

  @override
  void initState() {
    _authServices.getCurrentUser().then((value) {
      setState(() {
        _user = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _user == null
        ? SizedBox()
        : PersistentTabView(
            context,
            screens: [
              Dashboard(),
              AssignmentsPage(
                user: _user!,
              ),
              VideosPage(),
              ChatsPage(),
              ProfilePage(
                userData: _user!,
              )
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
