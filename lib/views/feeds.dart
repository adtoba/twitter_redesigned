import 'package:flutter/material.dart';
import 'package:twitter_redesigned/styles/colors.dart';
import 'package:twitter_redesigned/widgets/post.dart';
import 'package:twitter_redesigned/widgets/textfield.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  XTextField(
                    hint: 'Say something',
                    prefixIcon: Image.asset('assets/images/profile_icon.png',
                        height: 40.0, width: 40.0),
                    suffixIcon:
                        Icon(Icons.add, color: XColors.appBarIcon, size: 40.0),
                  ),
                  SizedBox(height: 30.0),
                  Post(
                      username: '@adetoba54',
                      name: 'Social Programmer',
                      time: '1s',
                      isPicture: false,
                      caption: 'A caption',
                      content:
                          'Hi! this is a concept prototype for twitter and I hope you to enjoy it.'),
                  SizedBox(height: 30.0),
                  Post(
                      username: '@elyon',
                      name: 'Gaara',
                      time: '1s',
                      isPicture: true,
                      caption: 'A caption',
                      content:
                          'Hi! this is a concept prototype for twitter and I hope you to enjoy it.')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
