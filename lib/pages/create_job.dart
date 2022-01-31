import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:romanceusdecor/models/job.dart';
import 'package:romanceusdecor/services/assignmentServices.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({Key? key}) : super(key: key);

  @override
  _CreateJobState createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AssignmentServices _assignmentServices = AssignmentServices();
  TextEditingController _jobTitleController = TextEditingController();
  TextEditingController _subtitleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  DateTime? _date;
  TimeOfDay? _timeOfDay;
  int? _skillLevel;
  bool dateRequired = false;
  bool timeRequired = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Job'),
      ),
      body: SafeArea(
        child: ScreenUtilInit(
          builder: () {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Job Title',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Fied is required.";
                          }
                        },
                        controller: _jobTitleController,
                        decoration: InputDecoration(
                          hintText: 'Enter Job Title',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: .3),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                width: .7,
                                color: Theme.of(context).primaryColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'Subtitle',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Fied is required.";
                          }
                        },
                        controller: _subtitleController,
                        decoration: InputDecoration(
                            hintText: 'Enter Subtitle',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: .3),
                                borderRadius: BorderRadius.zero),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                  width: .7,
                                  color: Theme.of(context).primaryColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            )),
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'Job Description',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Fied is required.";
                          }
                        },
                        controller: _descriptionController,
                        decoration: InputDecoration(
                            hintText: 'Enter Description',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: .3),
                                borderRadius: BorderRadius.zero),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                  width: .7,
                                  color: Theme.of(context).primaryColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            )),
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'Address',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Fied is required.";
                          }
                        },
                        controller: _addressController,
                        decoration: InputDecoration(
                            hintText: 'Enter Job Address',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: .3),
                                borderRadius: BorderRadius.zero),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                  width: .7,
                                  color: Theme.of(context).primaryColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            )),
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'City',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Fied is required.";
                          }
                        },
                        controller: _cityController,
                        decoration: InputDecoration(
                            hintText: 'Enter Job City',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: .3),
                                borderRadius: BorderRadius.zero),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                  width: .7,
                                  color: Theme.of(context).primaryColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                            )),
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Fied is required.";
                          }
                        },
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          hintText: 'Enter Customer\'s Phoner Number',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w300),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: .3),
                              borderRadius: BorderRadius.zero),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                                width: .7,
                                color: Theme.of(context).primaryColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'Date',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: .08.sh,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Pick a Date',
                                style: TextStyle(color: Colors.grey),
                              ),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: .4),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 300),
                                ),
                              ).then((value) {});
                            },
                            icon: Icon(CupertinoIcons.calendar),
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'Time',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: .08.sh,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Pick a Time',
                                style: TextStyle(color: Colors.grey),
                              ),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: .4),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                            },
                            icon: Icon(CupertinoIcons.clock),
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Text(
                        'Required Skill Level',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        height: .01.sh,
                      ),
                      DropdownButtonFormField<int>(
                        validator: (value) {
                          if (value == null) {
                            return "Fied is required.";
                          }
                        },
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide:
                                BorderSide(color: Colors.red, width: .7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide:
                                BorderSide(color: Colors.grey, width: .7),
                          ),
                        ),
                        hint: Text('Pick an Option'),
                        items: <int>[
                          1,
                          2,
                          3,
                        ]
                            .map(
                              (e) => DropdownMenuItem(
                                child: Text(e.toString()),
                                value: e,
                              ),
                            )
                            .toList(),
                        value: _skillLevel,
                        onChanged: (value) {
                          if (value != null) {
                            setState(
                              () {
                                _skillLevel = value;
                              },
                            );
                          }
                        },
                      ),
                      SizedBox(
                        height: .02.sh,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () async {
                            _formKey.currentState!.validate();
                            // final Job newJob = Job(
                            //   jobId: await _assignmentServices.getJobId(),
                            //   jobStatus: 'Pending',
                            //   jobDate: _date!.toIso8601String(),
                            //   jobTime: _timeOfDay.toString(),
                            //   customerPhoneNo: _phoneNumberController.text,
                            //   jobAddress: _addressController.text,
                            //   assignedTo: 'none',
                            //   description: _descriptionController.text,
                            //   title: _jobTitleController.text,
                            //   subtitle: _subtitleController.text,
                            //   completionRemarks: '',
                            //   photosOfWork: [],
                            //   requiredLevel: _skillLevel!,
                            // );

                            // _assignmentServices
                            //     .addJobToDb(newJob)
                            //     .then((posted) {
                            //   if (posted) {
                            //     Fluttertoast.showToast(msg: "Posted New Job.");
                            //     return Navigator.pop(context);
                            //   } else {
                            //     Fluttertoast.showToast(
                            //         msg: "Unkown Error. Try Again.");
                            //   }
                            //TODO : add date and time validation
                            // });
                          },
                          child: Text('Add Job'),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 15.sp),
                            fixedSize: Size(1.sw, .07.sh),
                            elevation: 0,
                            shape: BeveledRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
