import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_taka/widgets/switchbutton.dart';

import '../Constants/colors.dart';
import '../widgets/button.dart';
import 'dashboard.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: black,
                      )),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/setting.png',
                      color: primary,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Settings',
                      style:
                          GoogleFonts.righteous(fontSize: 24, color: primary),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Image.asset(
              'assets/icons/notification.png',
            ),
            title: Text(
              'Notification',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            trailing: CupertinoSwitch(
              value: switchButton,
              onChanged: (v) {
                setState(() {
                  switchButton = v;
                });
              },
              activeColor: blue,
            ),
          ),
          divider(),
          ListTile(
              leading: Image.asset(
                'assets/icons/sun.png',
              ),
              title: Text(
                'Theme Mode',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: SwitchIcon(
                sun: 'assets/icons/sun.png',
                moon: 'assets/icons/moon.png',
              )),
          divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/language-outline.png',
            ),
            title: Text(
              'Language',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/information.png',
            ),
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/help-outline.png',
            ),
            title: Text(
              'Call Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          divider(),
          ListTile(
            leading: Image.asset(
              'assets/icons/share.png',
            ),
            title: Text(
              'Share Tik Taka',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Spacer(),
          MyButton(
            name: ' Log In',
            image: 'assets/icons/flash-circle.png',
            color: red,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          SizedBox(
            height: 120,
          )
        ],
      ),
    ));
  }

  Widget divider() {
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: Container(
        height: 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black38, Colors.white10])),
      ),
    );
  }
}
