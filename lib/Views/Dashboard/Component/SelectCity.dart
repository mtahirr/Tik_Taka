import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_taka/Constants/colors.dart';

import 'package:google_fonts/google_fonts.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  List image = [
    'assets/city1.png',
    'assets/city2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Select the City',
            style: GoogleFonts.righteous(fontSize: 24, color: primary),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Done',
                  style: TextStyle(color: yellow),
                ),
              ),
            )
          ],
        ),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            itemCount: image.length,
            itemBuilder: (c, i) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white38,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(image[i]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New York',
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                color: Color(0xff444444),
                                fontWeight: FontWeight.w600),
                          ),
                          i == 0
                              ? CircleAvatar(
                                  radius: 10,
                                  backgroundColor: primary,
                                  child: Center(
                                    child: Icon(
                                      Icons.check,
                                      color: white,
                                      size: 11,
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
