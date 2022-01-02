import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:romanceusdecor/pages/job_completion_verification.dart';

class AssignmentDetailsPage extends StatefulWidget {
  const AssignmentDetailsPage({Key? key}) : super(key: key);

  @override
  _AssignmentDetailsPageState createState() => _AssignmentDetailsPageState();
}

class _AssignmentDetailsPageState extends State<AssignmentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () {
        return Scaffold(
          appBar: AppBar(
            title: Text('DETAILS'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 10,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Recommended',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    Container(
                      height: .04.sh,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Chat'),
                        style: OutlinedButton.styleFrom(
                            fixedSize: Size(.18.sw, .008.sh)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: .01.sh,
                ),
                Text('Job #2454'),
                Text(
                  'BEDROOM SURPRISE',
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor),
                ),
                Text(
                  'Full 1 Room Decoration Surprise',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.only(top: .025.sh, bottom: .025.sh),
                  height: .3.sh,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: .03.sw, vertical: .02.sh),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 15.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: .03.sw,
                                ),
                                Text(
                                  'Address',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Text(
                              '2458 st, Brooklyn, New York',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.5.sp),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: .1,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: .03.sw, vertical: .02.sh),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar_today,
                                  size: 15.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: .03.sw,
                                ),
                                Text(
                                  'Date',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Text(
                              '25 Dec. 2021',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.5.sp),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: .1,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: .03.sw, vertical: .02.sh),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.clock,
                                  size: 15.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: .03.sw,
                                ),
                                Text(
                                  'Time',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Text(
                              '04:00 pm',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.5.sp),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: .1,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: .03.sw),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 15.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  width: .03.sw,
                                ),
                                Text(
                                  'Mobile',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () {}, child: Text('Call')),
                                Text(
                                  '(123) 456-7890',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.5.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Details',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                  child: Text(
                    'Quick brown fox jumps over the lazy dog.Quick brown fox jumps over the lazy dog.Quick brown fox jumps over the lazy dog.Quick brown fox jumps over the lazy dog.',
                    style: TextStyle(fontSize: 11.sp),
                  ),
                ),
                Divider(),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Ignore',
                        style: TextStyle(color: Colors.black54),
                      ),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(.43.sw, .06.sh),
                        side: BorderSide(
                          color: Colors.grey,
                          width: .2,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return JobCompletionVerification();
                        }));
                      },
                      child: Text(
                        'Accept',
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(
                          .43.sw,
                          .06.sh,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
