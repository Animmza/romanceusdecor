import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: ScreenUtilInit(builder: () {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FORGOT PASSWORD',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Enter the registered email below',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: .08.sh,
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
                    hintText: 'Enter Email',
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
                  height: .08.sh,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/newpassword');
                    },
                    child: Text('SEND'),
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15.sp),
                        fixedSize: Size(1.sw, .07.sh),
                        elevation: 0,
                        shape: BeveledRectangleBorder()),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Remember your Password?'),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signuppage');
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
