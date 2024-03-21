import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tik_taka/Views/Dashboard/Component/switchButton.dart';

import '../../../Constants/colors.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

String selected = 'left';

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SwitchButton(
              selectedSide: selected,
            ),
            ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (c, i) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                              Text(
                                'MetLife Stadium',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
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
                                      backgroundColor: yellow,
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
                                percent: 0.8,
                                center: Text.rich(TextSpan(
                                    text: '11',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: black,
                                        fontWeight: FontWeight.bold),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: '/20',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      )
                                    ])),
                                backgroundColor: Colors.grey.shade400,
                                progressColor: primary,
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
    );
  }
}
