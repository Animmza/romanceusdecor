import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:romanceusdecor/widgets/job_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: SizedBox(),
        title: Text('DASHBOARD'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ScreenUtilInit(
            builder: () {
              return Column(
                children: [
                  Container(
                    height: 120,
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          color: Colors.blue[50],
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Jobs',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '2',
                                  style: TextStyle(fontSize: 30.sp),
                                ),
                              ),
                            ],
                          ),
                        )),
                        Flexible(
                            child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          color: Colors.green[50],
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'In Progress',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '3',
                                  style: TextStyle(fontSize: 30.sp),
                                ),
                              ),
                            ],
                          ),
                        )),
                        Flexible(
                            child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          color: Colors.deepOrange[50],
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Completed',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '26',
                                  style: TextStyle(fontSize: 30.sp),
                                ),
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: .03.sh),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming Jobs',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: TextStyle(fontSize: 13.sp),
                          ),
                          style: TextButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  JobWidget(
                    jobType: 'Recommended',
                    userType: 'user',
                    size: Size(
                      1.sw,
                      1.sh,
                    ),
                    title: 'BEDROOM SURPRISE',
                    location: 'Brooklyn, New York',
                    date: '25 Dec,2021',
                    time: '4:00 pm',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
