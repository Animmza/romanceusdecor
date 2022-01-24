import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:romanceusdecor/models/user.dart';
import 'package:romanceusdecor/pages/create_job.dart';
import 'package:romanceusdecor/widgets/job_widget.dart';

class AssignmentsPage extends StatefulWidget {
  final AppUser user;
  const AssignmentsPage({Key? key, required this.user}) : super(key: key);

  @override
  _AssignmentsPageState createState() => _AssignmentsPageState();
}

class _AssignmentsPageState extends State<AssignmentsPage> {
  List<String>? titlesList;
  int focusedIndex = 0;
  AppUser? _user;
  @override
  void initState() {
    _user = widget.user;
    _user!.role == 'admin'
        ? titlesList = ['Pending', 'In Progress', 'Completed']
        : titlesList = ['Available', 'In Progress', 'Completed'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: SizedBox(),
        title: Text('ASSIGNMENTS'),
        actions: [
          _user!.role == 'admin'
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                  child: OutlinedButton(
                    child: Text('+ Create'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return CreateJob();
                      }));
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
      body: ScreenUtilInit(
        builder: () {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: .9.sw,
                  height: .065.sh,
                  child: ListView.builder(
                    itemExtent: .3.sw,
                    scrollDirection: Axis.horizontal,
                    itemCount: titlesList!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            focusedIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          padding: EdgeInsets.all(10),
                          color: focusedIndex == index
                              ? Theme.of(context).primaryColor.withOpacity(.2)
                              : Colors.grey.shade200,
                          child: Text(
                            titlesList!.elementAt(index),
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: focusedIndex == index
                                    ? Theme.of(context).primaryColor
                                    : Colors.black54),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: JobWidget(
                  jobType: 'Priority',
                  userType: 'admin',
                  size: Size(
                    1.sw,
                    1.sh,
                  ),
                  title: 'BEDROOM SURPRISE',
                  location: 'Brooklyn, New York',
                  date: '25 Dec,2021',
                  time: '4:00 pm',
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
