import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';

class AssignmentActivity extends StatefulWidget {
  const AssignmentActivity({Key? key}) : super(key: key);

  @override
  _AssignmentActivityState createState() => _AssignmentActivityState();
}

class _AssignmentActivityState extends State<AssignmentActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ACTIVITY'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ScreenUtilInit(
            builder: () {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('View on Map'),
                    ),
                  ),
                  Text('Job #2545'),
                  Text(
                    'BEDROOM SURPRISE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    'Full 1 Room Decoration Surprise.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Employee:',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      Row(
                        children: [
                          CircleAvatar(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Username'),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Container(
                    height: .35.sh,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
