import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:romanceusdecor/widgets/message_widget.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
            Text('Hamza'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
        child: ScreenUtilInit(
          builder: () {
            return Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: .1.sh),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return MessageWidget();
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: .1.sh,
                      child: Row(
                        children: [
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Write your message',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.zero),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero),
                                suffixIcon: IconButton(
                                    icon: Icon(Icons.send), onPressed: () {}),
                              ),
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            margin: EdgeInsets.all(5),
                            color:
                                Theme.of(context).primaryColor.withOpacity(.15),
                            child: IconButton(
                              icon: Icon(Icons.attachment),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
