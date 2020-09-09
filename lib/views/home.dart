import 'package:flutter/material.dart';
import 'package:twitter_redesigned/styles/colors.dart';
import 'package:twitter_redesigned/views/feeds.dart';
import 'package:twitter_redesigned/views/notifications.dart';
import 'package:twitter_redesigned/views/profile.dart';
import 'package:twitter_redesigned/views/search.dart';
import 'package:twitter_redesigned/widgets/textfield.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> pages = <Widget>[
    FeedScreen(),
    SearchScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  final PageController _pageController =
      PageController(keepPage: true, initialPage: 0);

  int currentIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/images/menu.png'),
            color: XColors.menu,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: ImageIcon(AssetImage('assets/images/twitter.png')),
            onPressed: () {},
            color: XColors.twitter,
          )
        ],
        backgroundColor: XColors.backgroundColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: XColors.menu),
      ),
      body: PageView(
          controller: _pageController,
          children: pages,
          onPageChanged: onPageChanged),
      bottomNavigationBar: XBottomNavigation(
        pageController: _pageController,
        onChanged: onPageChanged,
        index: currentIndex,
      ),
    );
  }
}

class XBottomNavigation extends StatelessWidget {
  XBottomNavigation(
      {@required this.pageController,
      @required this.onChanged,
      @required this.index});

  final PageController pageController;
  final Function(int index) onChanged;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(90.0),
      child: BottomAppBar(
        color: XColors.solidColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: ImageIcon(
                    AssetImage('assets/images/home.png'),
                    size: 45,
                  ),
                  color: index == 0 ? XColors.lightBlue : XColors.appBarIcon,
                  onPressed: () {
                    onChanged(0);
                  }),
              IconButton(
                icon: ImageIcon(
                  AssetImage('assets/images/search.png'),
                  size: 45,
                ),
                color: index == 1 ? XColors.lightBlue : XColors.appBarIcon,
                onPressed: () {
                  onChanged(1);
                },
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage('assets/images/notifications.png'),
                  size: 45,
                ),
                color: index == 2 ? XColors.lightBlue : XColors.appBarIcon,
                onPressed: () {
                  onChanged(2);
                },
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage('assets/images/profile.png'),
                  size: 45,
                ),
                color: index == 3 ? XColors.lightBlue : XColors.appBarIcon,
                onPressed: () {
                  onChanged(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
