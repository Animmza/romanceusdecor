import 'package:flutter/material.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({Key? key}) : super(key: key);

  @override
  _CreateJobState createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Job'),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
