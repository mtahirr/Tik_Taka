import 'package:flutter/material.dart';
import 'package:tik_taka/Views/Matches.dart';
import 'package:tik_taka/Views/dashboard.dart';
import 'package:tik_taka/Views/profile.dart';
import 'package:tik_taka/Views/shop.dart';

import '../../widgets/bottomNaviWidget.dart';

class CustomNavigator extends StatefulWidget {
  const CustomNavigator({super.key});

  @override
  State<CustomNavigator> createState() => _CustomNavigatorState();
}

List<Widget> widgets = [Dashboard(), Matches(), Shop(), ProfileScreen()];

class _CustomNavigatorState extends State<CustomNavigator> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyNavBar(
          currentIndex: _currentIndex,
          onTabTapped: (index) {
            setState(() {
              _currentIndex = index;
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            });
          },
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: widgets,
        ));
  }
}
