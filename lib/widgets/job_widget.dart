import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:romanceusdecor/models/job.dart';
import 'package:romanceusdecor/pages/assignment_details_page.dart';

class JobWidget extends StatefulWidget {
  final Job job;
  final Size size;
  final String userType;
  const JobWidget(
      {Key? key, required this.job, required this.size, required this.userType})
      : super(key: key);

  @override
  _JobWidgetState createState() => _JobWidgetState();
}

class _JobWidgetState extends State<JobWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return AssignmentDetailsPage();
        }));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10),
        height: widget.size.height * .3,
        decoration: BoxDecoration(border: Border.all(width: .05)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: widget.size.height * .075,
              color: Theme.of(context).primaryColor.withOpacity(.1),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.job.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Type',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 10),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Theme.of(context).primaryColor,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.job.jobAddress,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.calendar,
                    color: Theme.of(context).primaryColor,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.job.jobDate,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.clock,
                    color: Theme.of(context).primaryColor,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.job.jobTime,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Spacer(),
            Divider(
              endIndent: 20,
              indent: 20,
            ),
            widget.userType == 'admin'
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Delete',
                          style: TextStyle(color: Colors.black54),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey, width: .2)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Assign',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Ignore',
                          style: TextStyle(color: Colors.black54),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey, width: .2)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Accept',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
