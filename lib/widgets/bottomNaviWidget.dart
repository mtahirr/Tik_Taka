import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class MyNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;
  const MyNavBar(
      {Key? key, required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          icon: NavItem(
            label: 'Home',
            icon: 'assets/icons/home.png',
            isActive: currentIndex == 0,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: NavItem(
            label: 'Matches',
            icon: 'assets/icons/football.png',
            isActive: currentIndex == 1,
          ),
          label: 'Matches',
        ),
        BottomNavigationBarItem(
          icon: NavItem(
            label: 'Shop',
            icon: 'assets/icons/shopping-cart.png',
            isActive: currentIndex == 2,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: NavItem(
            label: 'Profile',
            icon: 'assets/icons/user.png',
            isActive: currentIndex == 3,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}

class NavItem extends StatelessWidget {
  final String label;
  final String icon;
  final bool isActive;
  const NavItem(
      {Key? key,
      required this.label,
      required this.icon,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageIcon(
          AssetImage(icon),
          color: isActive
              ? primary
              : Colors.grey, // Change color based on isActive status
        ),
        Text(
          label,
          style: TextStyle(
            color: isActive
                ? primary
                : Colors.grey, // Change color based on isActive status
          ),
        ),
        SizedBox(
          height: 3,
        ),
        if (isActive)
          Container(
            width: 30,
            height: 5,
            decoration: BoxDecoration(
                color: yellow, borderRadius: BorderRadius.circular(10)),
          )
      ],
    );
  }
}
