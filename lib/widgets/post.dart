import 'package:flutter/material.dart';
import 'package:twitter_redesigned/styles/colors.dart';

class Post extends StatelessWidget {
  Post(
      {@required this.username,
      @required this.name,
      @required this.time,
      @required this.isPicture,
      @required this.caption,
      @required this.content});

  final String username;
  final String name;
  final String time;
  final bool isPicture;
  final String caption;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/images/profile_icon.png',
                  height: 40.0, width: 40.0),
              SizedBox(width: 5.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name + '.    ' + time,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    username,
                    style: TextStyle(color: XColors.hint),
                  )
                ],
              )
            ],
          ),
          Visibility(
              visible: isPicture,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.0),
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://specials-images.forbesimg.com/imageserve/5f527b9d999651a19b50a782/960x0.jpg?cropX1=0&cropX2=4755&cropY1=0&cropY2=3170'))),
                  ),
                ],
              )),
          SizedBox(height: 20.0),
          Text(
            content,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Image.asset(
                'assets/images/hear.png',
                height: 40.0,
                width: 40.0,
              ),
              SizedBox(width: 20.0),
              Image.asset(
                'assets/images/comment.png',
                height: 20.0,
                width: 20.0,
              ),
              SizedBox(width: 20.0),
              Image.asset(
                'assets/images/retweet.png',
                height: 20.0,
                width: 20.0,
              ),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.white),
                  onPressed: () {})
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: XColors.textField),
    );
  }
}
