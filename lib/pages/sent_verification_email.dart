import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SentVerificationEmail extends StatefulWidget {
  final String email;
  const SentVerificationEmail({Key? key, required this.email})
      : super(key: key);

  @override
  _SentVerificationEmailState createState() => _SentVerificationEmailState();
}

class _SentVerificationEmailState extends State<SentVerificationEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenUtilInit(builder: () {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.check_mark_circled,
                  size: .2.sh,
                  color: Colors.green,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'A verification link was sent to your email account. Please verify before Signing In.',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ),
                SizedBox(height: .07.sh),
                Container(
                  width: double.infinity,
                  height: .07.sh,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/loginpage');
                    },
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
