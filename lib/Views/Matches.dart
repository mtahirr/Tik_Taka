import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_taka/Constants/colors.dart';
import 'package:tik_taka/Views/StadiumInfo/stadiumInfo.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'My Matches',
            style: GoogleFonts.righteous(fontSize: 24, color: primary),
          ),
        ),
        body: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 5),
            itemBuilder: (c, i) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StadiumInfo()));
                },
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset('assets/football1.png'),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MetLife Stadium',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/icons/calendar.png',
                                  width: 20),
                              SizedBox(
                                width: 5,
                              ),
                              Text('2 March 2024')
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/icons/calendar.png',
                                  width: 20),
                              SizedBox(
                                width: 5,
                              ),
                              Text('02:12pm')
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/icons/calendar.png',
                                  width: 20),
                              SizedBox(
                                width: 5,
                              ),
                              Text('\$25')
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text.rich(TextSpan(
                                  text: '11',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: primary,
                                      fontWeight: FontWeight.bold),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: '/20',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    )
                                  ])),
                            ],
                          ),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 3.5,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Container(
                                    height: 4,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
