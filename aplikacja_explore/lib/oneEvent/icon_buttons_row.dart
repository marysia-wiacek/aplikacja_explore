import 'package:aplikacja_explore/calendar/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonsRow extends StatefulWidget {
  const IconButtonsRow({super.key});

  @override
  State<IconButtonsRow> createState() => _IconButtonsRowState();
}

class _IconButtonsRowState extends State<IconButtonsRow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width < 450 ? 130 : 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomButton(
            icon: FontAwesomeIcons.calendarPlus,
            label: "Dodaj do kalendarza",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CalendarView()));
            },
          ),
          CustomButton(
            icon: Icons.share_outlined,
            label: "Udostępnij",
            onPressed: () {},
          ),
          CustomButton(
            icon: Icons.outbound_outlined,
            label: "Pokaż na mapie",
            onPressed: () {},
          ),
          CustomButton(
            icon: FontAwesomeIcons.globe,
            label: "Strona www",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 66,
            height: 66,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 230, 230),
                borderRadius: BorderRadius.circular(33)),
            child: Icon(icon,
                size: 36, color: const Color.fromARGB(255, 1, 218, 196)),
          ),
          Container(
            width: 65,
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 1,
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
