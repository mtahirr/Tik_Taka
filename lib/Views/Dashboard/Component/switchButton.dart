import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  SwitchButton({
    Key? key,
    this.backgroundColor = Colors.green,
    this.iconsColor = Colors.white,
    this.circleColor = Colors.yellow,
    required this.selectedSide,
  }) : super(key: key);

  final Color backgroundColor;
  final Color iconsColor;
  final Color circleColor;
  String selectedSide = 'left';

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  void _changeSelectedSide() {
    setState(() {
      widget.selectedSide = widget.selectedSide == 'left' ? 'right' : 'left';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 35,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.menu, color: widget.iconsColor),
                Icon(Icons.location_on_outlined, color: widget.iconsColor),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: widget.selectedSide == 'left'
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: _changeSelectedSide,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: widget.circleColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
