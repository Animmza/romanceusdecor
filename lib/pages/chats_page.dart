import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:romanceusdecor/widgets/chat_widget.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('CHATS'),
        elevation: 0,
      ),
      body: ScreenUtilInit(
        builder: () {
          return SafeArea(
              child: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return ChatWidget();
            },
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
        elevation: 3,
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: CircleBorder(
            side: BorderSide(color: Theme.of(context).primaryColor)),
      ),
    );
  }
}
