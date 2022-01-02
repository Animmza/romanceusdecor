import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenUtilInit(
        builder: () {
          return SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 1,
                ),
                Text(
                  'NEW PASSWORD',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Enter the new password below',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: .08.sh,
                ),
                Text(
                  'New Password',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter New Password',
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
                  'Confirm New Password',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: .01.sh,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Confirm New Password',
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
                    child: Text('SAVE'),
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 13.sp),
                        fixedSize: Size(1.sw, .07.sh),
                        elevation: 0,
                        shape: BeveledRectangleBorder()),
                  ),
                ),
                Spacer(
                  flex: 3,
                ),
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
          ));
        },
      ),
    );
  }
}
