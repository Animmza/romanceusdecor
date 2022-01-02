import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: () {
      return Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          title: Text('MY PROFILE'),
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: .4.sh,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(.1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('@username'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              CupertinoIcons.location_solid,
                              size: 15,
                            ),
                            Text(
                              'Brooklyn, New York',
                              //  style: TextStyle(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
          ],
        ),
      );
    });
  }
}
