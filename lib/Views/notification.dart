import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_taka/Constants/colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: black,
              )),
          title: Text(
            'Notifications',
            style: GoogleFonts.righteous(fontSize: 24, color: primary),
          ),
        ),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            itemCount: 4,
            itemBuilder: (c, i) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamc'),
                      Divider(
                        thickness: 2,
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
