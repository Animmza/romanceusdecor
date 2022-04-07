import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:romanceusdecor/models/job.dart';
import 'package:romanceusdecor/services/assignmentServices.dart';
import 'package:intl/intl.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({Key? key}) : super(key: key);

  @override
  _CreateJobState createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool loading = false;

  AssignmentServices _assignmentServices = AssignmentServices();
  TextEditingController _jobTitleController = TextEditingController();
  TextEditingController _subtitleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  DateTime? _date;
  TimeOfDay? _timeOfDay;
  int? _skillLevel;
  bool dateRequired = false;
  bool timeRequired = false;
  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
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
                                _date == null
                                    ? 'Pick a Date'
                                    : localizations.formatFullDate(_date!),
                                style: _date == null
                                    ? TextStyle(color: Colors.grey)
                                    : TextStyle(color: Colors.black),
                              ),
                              decoration: BoxDecoration(
                                border: dateRequired
                                    ? Border.all(color: Colors.red, width: 1)
                                    : Border.all(color: Colors.grey, width: .4),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: _date ?? DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 300),
                                ),
                              ).then((value) {
                                setState(() {
                                  _date = value;
                                  dateRequired = false;
                                });
                              });
                            },
                            icon: Icon(CupertinoIcons.calendar),
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                      dateRequired
                          ? Text('Field is required.',
                              style: TextStyle(color: Colors.red, fontSize: 12))
                          : SizedBox(),
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
                                _timeOfDay == null
                                    ? 'Pick a Time'
                                    : localizations
                                        .formatTimeOfDay(_timeOfDay!),
                                style: TextStyle(color: Colors.grey),
                              ),
                              decoration: BoxDecoration(
                                border: timeRequired
                                    ? Border.all(color: Colors.red, width: 1)
                                    : Border.all(color: Colors.grey, width: .4),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showTimePicker(
                                context: context,
                                initialTime: _timeOfDay ?? TimeOfDay.now(),
                              ).then((value) {
                                setState(() {
                                  _timeOfDay = value;
                                  timeRequired = false;
                                });
                              });
                            },
                            icon: Icon(CupertinoIcons.clock),
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                      timeRequired
                          ? Text("Field is Required.",
                              style: TextStyle(color: Colors.red, fontSize: 12))
                          : SizedBox(),
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide:
                                BorderSide(color: Colors.grey, width: .7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide:
                                BorderSide(color: Colors.grey, width: .7),
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
                      Align(
                        alignment: Alignment.center,
                        child: AnimatedContainer(
                          curve: Curves.easeIn,
                          duration: Duration(seconds: 2),
                          height: .075.sh,
                          width: .9.sw,
                          // !loading ? .9.sw : .075.sh,
                          child:
                              //  !loading
                              //     ? ElevatedButton(
                              //         onPressed: () {},
                              //         style: ElevatedButton.styleFrom(
                              //             padding: EdgeInsets.all(10),
                              //             shape: CircleBorder()),
                              //         child: CircularProgressIndicator(
                              //           color: Colors.white,
                              //         ),
                              //       )
                              //     :
                              ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder()),
                            onPressed: () async {
                              if (_formKey.currentState!.validate() &&
                                  validateDateandTime()) {
                                setState(() {
                                  loading = true;
                                });

                                try {
                                  int jobId =
                                      await _assignmentServices.getJobId();

                                  final Job job = Job(
                                      jobId: jobId,
                                      jobStatus: 'Pending',
                                      jobDate: _date!.toIso8601String(),
                                      jobTime: _timeOfDay!.toString(),
                                      customerPhoneNo:
                                          _phoneNumberController.text,
                                      jobAddress: _addressController.text,
                                      assignedTo: '',
                                      description: _descriptionController.text,
                                      title: _jobTitleController.text,
                                      subtitle: _subtitleController.text,
                                      completionRemarks: '',
                                      photosOfWork: [''],
                                      requiredLevel: _skillLevel!);

                                  _assignmentServices
                                      .addJobToDb(job)
                                      .then((posted) {
                                    if (posted) {
                                      Navigator.pop(context);
                                      Fluttertoast.showToast(
                                          msg: 'Job Created Successfuly.');
                                    } else {
                                      setState(() {
                                        loading = false;
                                      });
                                      Fluttertoast.showToast(
                                          msg:
                                              'Unknown Error. Please Try Again.');
                                    }
                                  });
                                } catch (e) {
                                  print(e.toString());
                                }
                              }
                            },
                            child: Text('Add Job'),
                          ),
                        ),
                      )
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

  bool validateDateandTime() {
    if (_date == null) {
      setState(() {
        dateRequired = true;
      });
      return false;
    } else {
      setState(() {
        dateRequired = false;
      });
    }
    if (_timeOfDay == null) {
      setState(() {
        timeRequired = true;
      });
      return false;
    } else {
      setState(() {
        timeRequired = false;
      });
    }
    return true;
  }
}
