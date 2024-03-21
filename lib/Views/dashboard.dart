import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tik_taka/Constants/colors.dart';
import 'package:tik_taka/Views/chats.dart';
import 'package:tik_taka/Views/notification.dart';

import 'Dashboard/Component/SelectCity.dart';
import 'Dashboard/Component/switchButton.dart';

class Dashboard extends StatefulWidget {
  Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String selected = 'left';
  List<Map> text = [
    {'text': 11, 'total': 20, 'percentage': 0.6},
    {'text': 13, 'total': 20, 'percentage': 0.7},
    {'text': 20, 'total': 20, 'percentage': 1.0},
    {'text': 16, 'total': 20, 'percentage': 0.8},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: AppBar(
                backgroundColor: primary,
                leading: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(
                                builder: (c) => Notifications())));
                      },
                      child: Image.asset(
                        'assets/icons/notification.png',
                        color: white,
                      ),
                    ),
                    Positioned(
                        right: 13,
                        top: 30,
                        child: CircleAvatar(
                          backgroundColor: red,
                          radius: 5,
                        ))
                  ],
                ),
                centerTitle: true,
                title: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        (MaterialPageRoute(builder: (c) => SelectCity())));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/icons/location.png',
                        color: white,
                        height: 20,
                      ),
                      Text(
                        ' New York',
                        style: TextStyle(fontSize: 18, color: white),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                actions: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              (MaterialPageRoute(builder: (c) => Chats())));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset('assets/icons/message.png'),
                        ),
                      ),
                      Positioned(
                          left: 13,
                          top: 30,
                          child: CircleAvatar(
                            backgroundColor: red,
                            radius: 5,
                          ))
                    ],
                  )
                ],
              ))),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SwitchButton(
                        selectedSide: selected,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/icons/calendar.png'),
                      Expanded(
                        child: Container(
                          child: DatePicker(
                            DateTime.now(),
                            height: 80,
                            width: 60,
                            initialSelectedDate: DateTime.now(),
                            selectionColor: primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                          width: 80,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            white,
                            Color.fromARGB(199, 255, 255, 255)
                          ])),
                          child: Image.asset('assets/icons/arrow-right.png')))
                ],
              ),
              ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (c, i) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: lightWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('MetLife Stadium',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/clock.png',
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      '02:24pm',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/icons/dollar-circle.png',
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      '\$25',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: text[i]['text'] == 20
                                            ? red
                                            : yellow,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    onPressed: () {},
                                    child: Text('Recharge'))
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
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
                                        Colors.white10,
                                        Colors.black38,
                                        Colors.white10
                                      ])),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 7.0,
                                  percent: text[i]['percentage'],
                                  center: Text.rich(TextSpan(
                                      text: text[i]['text'].toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: black,
                                          fontWeight: FontWeight.bold),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text:
                                              '/${text[i]['total'].toString()}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ])),
                                  backgroundColor: Colors.grey.shade400,
                                  progressColor:
                                      text[i]['text'] == 20 ? red : primary,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
