import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tik_taka/Constants/colors.dart';
import 'package:badges/badges.dart' as badges;

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List image = [
    'assets/pngwing.png',
    'assets/pngwing1.png',
    'assets/Rectangle1.png',
    'assets/Rectangle2.png',
    'assets/Rectangle3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Shop',
            style: GoogleFonts.righteous(fontSize: 24, color: primary),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: badges.Badge(
                  badgeContent: Text(
                    '3',
                    style: TextStyle(fontSize: 10, color: white),
                  ),
                  child: Image.asset(
                    'assets/icons/shopping-cart.png',
                    color: primary,
                  )),
            )
          ],
        ),
        body: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: image.length,
            itemBuilder: (c, i) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white38,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.grey.shade100,
                          child: Image.asset(
                            image[i],
                            fit: BoxFit.cover,
                          ),
                        )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
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
                            Text(
                              'Product Description Lorem ipsumdolor sit amet, consectetur.....',
                              maxLines: 2,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$18',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: primary,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      '\$20',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          textBaseline: TextBaseline.alphabetic,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: primary,
                                  child: Icon(
                                    Icons.add,
                                    color: white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
