import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors.dart';
import '../../widgets/button.dart';
import '../../widgets/dialog.dart';
import '../../widgets/testField.dart';

class StadiumInfo extends StatefulWidget {
  const StadiumInfo({super.key});

  @override
  State<StadiumInfo> createState() => _StadiumInfoState();
}

class _StadiumInfoState extends State<StadiumInfo> {
  bool match = true;
  bool support = false;
  bool location = false;
  List image = [
    'assets/pngwing.png',
    'assets/pngwing1.png',
    'assets/Rectangle1.png',
    'assets/Rectangle2.png',
    'assets/Rectangle3.png',
  ];
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: support
          ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: TextField(
                        controller: controller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write a message',
                          hintStyle: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Image.asset('assets/icons/send.png')
                ],
              ),
            )
          : null,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            )),
        title: Text(
          'Metlife Stadium',
          style: GoogleFonts.righteous(fontSize: 24, color: primary),
        ),
        actions: [
          Image.asset(
            'assets/icons/share-social.png',
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          match = true;
                          location = false;
                          support = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Match',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            match
                                ? Container(
                                    height: 5,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: yellow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    verticalDivider(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          location = false;
                          match = false;
                          support = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Support',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            support
                                ? Container(
                                    height: 5,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: yellow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                    verticalDivider(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          location = true;
                          match = false;
                          support = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            location
                                ? Container(
                                    height: 5,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: yellow,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              if (match) Image.asset('assets/ground.png'),
              match
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 30),
                            decoration: BoxDecoration(
                              color: lightWhite,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/icons/clock.png'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '02:23pm',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/icons/calendar.png'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '2 March 2024',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/icons/dollar-circle.png'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '\$25',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 2,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomRight,
                                                tileMode: TileMode.repeated,
                                                colors: [
                                              Colors.black38,
                                              Colors.white10
                                            ])),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text.rich(TextSpan(
                                              text: '11',
                                              style: TextStyle(
                                                  fontSize: 40,
                                                  color: black,
                                                  fontWeight: FontWeight.bold),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: 'minus',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black),
                                                )
                                              ])),
                                          Text(
                                            'Match Duration',
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/icons/location.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  '1 MetLife Stadium Dr, East Rutherford, NJ07073, USA',
                                  maxLines: 2,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text.rich(TextSpan(
                              text: '11',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: yellow,
                                  fontWeight: FontWeight.bold),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '/20',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' Participants',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ])),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 3.5,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Container(
                                    height: 4,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: yellow,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MyButton(
                            name: 'Press to Participate',
                            color: primary,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CustomDialog();
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            ' Participants',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: image.length,
                              itemBuilder: (c, i) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white38,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: CircleAvatar(
                                            radius: 40,
                                            child: Image.asset(
                                              'assets/lionel.png',
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lionel Messi',
                                                style: TextStyle(
                                                    color: primary,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Profressional',
                                                maxLines: 2,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Attack',
                                                maxLines: 2,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              })
                        ],
                      ),
                    )
                  : support
                      ? Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: lightWhite),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Instructions',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamc',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        )
                      : location
                          ? Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/map.png'),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: MyButton(
                                      name: 'Get Direction',
                                      color: primary,
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Container()
            ],
          ),
        ),
      ),
    );
  }

  Widget verticalDivider() {
    return Container(
      height: 20,
      width: 2,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black38, Colors.white10])),
    );
  }
}
