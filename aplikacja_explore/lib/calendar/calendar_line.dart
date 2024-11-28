import 'package:flutter/material.dart';

class CalendarLine extends StatelessWidget {
  final String textLeft;
  final String textRight;
  final bool isBold;
  const CalendarLine(
      {super.key,
      required this.textLeft,
      required this.textRight,
      required this.isBold});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 5, 0),
            child: Text(
              textLeft,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                child: Text(
                  textRight,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 13,
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
