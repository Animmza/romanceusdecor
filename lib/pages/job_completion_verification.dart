import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:romanceusdecor/pages/assignment_activity.dart';

class JobCompletionVerification extends StatefulWidget {
  const JobCompletionVerification({Key? key}) : super(key: key);

  @override
  _JobCompletionVerificationState createState() =>
      _JobCompletionVerificationState();
}

class _JobCompletionVerificationState extends State<JobCompletionVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SafeArea(
        child: ScreenUtilInit(builder: () {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Job Completion Verification',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Please upload the pictures of your completed work as a proof of your work.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    height: .05.sh,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Upload Pictures',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: GridView.builder(
                        itemCount: 7,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            color: Colors.blue,
                          );
                        }),
                  ),
                  Divider(
                    height: .05.sh,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Upload Pictures',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(width: .1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(width: .1)),
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300),
                      hintText: 'Enter additional notes or comments.',
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(
                            .43.sw,
                            .06.sh,
                          ),
                          side: BorderSide(
                            color: Colors.grey,
                            width: .2,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AssignmentActivity();
                          }));
                        },
                        child: Text(
                          'Complete',
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
        }),
      ),
    );
  }
}
