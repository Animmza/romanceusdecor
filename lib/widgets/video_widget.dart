import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      height: size.height * .13,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
        width: .2,
        color: Colors.grey,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .35,
            color: Colors.black12,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    CupertinoIcons.play_circle,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    height: 10,
                    width: 40,
                    alignment: Alignment.bottomRight,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width * .45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Video Title Here',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Video Description Here Description here',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  child: Text(
                    '02:00',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 10,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
