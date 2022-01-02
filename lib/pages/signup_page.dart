import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenUtilInit(builder: () {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  'CREATE ACCOUNT',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Enter the details below',
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: .08.sh,
                ),
                Text(
                  'Name',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .3),
                          borderRadius: BorderRadius.zero),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                            width: .7, color: Theme.of(context).primaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                ),
                SizedBox(
                  height: .03.sh,
                ),
                Text(
                  'Email',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .3),
                          borderRadius: BorderRadius.zero),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                            width: .7, color: Theme.of(context).primaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                ),
                SizedBox(
                  height: .03.sh,
                ),
                Text(
                  'Password',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .3),
                          borderRadius: BorderRadius.zero),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                            width: .7, color: Theme.of(context).primaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                ),
                SizedBox(
                  height: .03.sh,
                ),
                Text(
                  'Confirm Password',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .3),
                          borderRadius: BorderRadius.zero),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(
                            width: .7, color: Theme.of(context).primaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                ),
                SizedBox(
                  height: .05.sh,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Signup'),
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15.sp),
                        fixedSize: Size(1.sw, .07.sh),
                        elevation: 0,
                        shape: BeveledRectangleBorder()),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/loginpage');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.grey[800],
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
