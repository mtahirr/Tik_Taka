import 'package:flutter/material.dart';

import 'NavBarItem.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    // ignore: omit_local_variable_types
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: Column(
        children: [
          NavBarItem(
            icon: '',
            active: selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItem(
            icon: '',
            active: selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItem(
            icon: '',
            active: selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            icon: '',
            active: selected[3],
            touched: () {
              setState(() {
                select(3);
              });
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => CreateDashboard()),
              // );
            },
          ),
          NavBarItem(
            icon: '',
            active: selected[4],
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }
}
