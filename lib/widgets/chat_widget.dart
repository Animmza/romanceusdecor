import 'package:flutter/material.dart';
import 'package:romanceusdecor/pages/conversation_page.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ConversationPage();
        }));
      },
      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        radius: 40,
        child: Icon(
          Icons.person,
          size: 40,
        ),
      ),
      title: Text('Username'),
      subtitle: Text('Recent Message'),
      trailing: Text(
        '02:46 pm',
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
