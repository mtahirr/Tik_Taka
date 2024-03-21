import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String name;
  final void Function()? onPressed;
  final String? image;
  final Color color;
  MyButton(
      {required this.name,
      required this.onPressed,
      required this.color,
      this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image == null ? Container() : Image.asset(image!),
              Text(name, style: GoogleFonts.righteous(fontSize: 17)),
            ],
          )),
    );
  }
}
