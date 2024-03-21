import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_taka/Constants/colors.dart';
import 'package:tik_taka/Views/settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 150,
                  decoration: BoxDecoration(
                      color: pofileColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset('assets/icons/edit.png'),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: Image.asset('assets/icons/setting.png'))
                    ],
                  ),
                ),
                Positioned(
                  bottom: -40,
                  child: CircleAvatar(
                    radius: 60,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Michael john',
              style: GoogleFonts.righteous(fontSize: 24, color: primary),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/call.png',
                        color: primary,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(123) 456-7890',
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.email, color: primary),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'abc123@xyz.com',
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: 100,
                              width: 180,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Player level',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Professional',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset('assets/football2.png'),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: 100,
                              width: 180,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Player Position',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Attack',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset('assets/hit.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Number of Matches',
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '32',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'City',
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'New York',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        '\$240',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: yellow,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Text('Recharge'))
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
