import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenUtilInit(
          designSize: Size(300, 500),
          builder: () => Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 1,
                ),
                Text(
                  'WELCOME',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Login with details',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: .08.sh,
                ),
                Text(
                  'Username',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
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
                    ),
                  ),
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
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text('Forgot Password?'),
                    style: TextButton.styleFrom(primary: Colors.grey[800]),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/forgotpassword');
                    },
                  ),
                ),
                SizedBox(
                  height: .04.sh,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        textStyle: TextStyle(fontSize: 12.sp),
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
                        Navigator.of(context).pushNamed('/signuppage');
                      },
                      child: Text(
                        'Register',
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
          ),
        ),
      ),
    );
  }
}
