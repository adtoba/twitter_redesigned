import 'package:flutter/material.dart';
import 'package:twitter_redesigned/styles/colors.dart';
import 'package:twitter_redesigned/widgets/textfield.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> trends = <String>[
    'For you',
    'Trending',
    'Soccer',
    'Tech',
    'Iran'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.backgroundColor,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              XTextField(
                prefixIcon: Icon(Icons.search, color: XColors.appBarIcon),
                suffixIcon: SizedBox(height: 0),
                hint: 'Search people, photos and tweets',
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                height: 100.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: trends.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        e,
                        style: TextStyle(fontSize: 18, color: XColors.hint),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
