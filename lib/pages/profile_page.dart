import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:romanceusdecor/models/user.dart';
import 'package:romanceusdecor/pages/edit_profile.dart';
import 'package:romanceusdecor/pages/login_page.dart';
import 'package:romanceusdecor/services/auth_services.dart';
import 'package:romanceusdecor/services/location_service.dart';

class ProfilePage extends StatefulWidget {
  final AppUser userData;
  const ProfilePage({Key? key, required this.userData}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthServices _authServices = AuthServices();
  AppUser? _user;
  RefreshController _controller = RefreshController(initialRefresh: false);

  @override
  void initState() {
    _user = widget.userData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: () {
      return Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          title: Text('MY PROFILE'),
          elevation: 0,
        ),
        body: SmartRefresher(
          onRefresh: () {
            _authServices.fetchUserData().then((user) {
              setState(() {
                _user = user;
              });
            }).whenComplete(() {
              _controller.refreshCompleted();
            });
          },
          controller: _controller,
          child: Column(
            children: [
              _user == null
                  ? SizedBox()
                  : Container(
                      width: double.infinity,
                      height: .4.sh,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(.1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            child: _user!.profilePicUrl.isEmpty
                                ? Icon(
                                    CupertinoIcons.person,
                                    color: Colors.grey,
                                    size: 50,
                                  )
                                : SizedBox(),
                            radius: 50,
                            backgroundImage: _user!.profilePicUrl.isEmpty
                                ? null
                                : CachedNetworkImageProvider(
                                    _user!.profilePicUrl),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _user!.fullName,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(_user!.email),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.location_solid,
                                      size: 15,
                                    ),
                                    Text(
                                      _user!.address,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return EditProfile(
                                      user: _user!,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Text('Edit Profile'),
                          ),
                        ],
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: .2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.settings),
                  ),
                  title: Text(
                    'Profile Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    LocationService().getCurrentAddress();
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                indent: .1.sw,
                endIndent: .1.sw,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: .2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.done),
                  ),
                  title: Text(
                    'Availability',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                indent: .1.sw,
                endIndent: .1.sw,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  onTap: () {
                    _authServices.signOut().then((value) {
                      pushNewScreen(context,
                              screen: LoginPage(), withNavBar: false)
                          .then((value) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      });
                    });
                  },
                  leading: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: .2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.logout),
                  ),
                  title: Text(
                    'Sign Out',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                indent: .1.sw,
                endIndent: .1.sw,
              ),
            ],
          ),
        ),
      );
    });
  }
}
