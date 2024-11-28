import 'package:aplikacja_explore/mainPage/icon_text_button.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 228, 240, 244),
      height: size.width < 450 ? 110 : 80,
      child: Padding(
        padding:
            size.width < 450 ? const EdgeInsets.only(top: 15) : EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconTextButton(
              onPressed: () {},
              icon: Icons.home,
              label: "Śląskie.",
            ),
            IconTextButton(
              onPressed: () {},
              icon: Icons.article_outlined,
              label: "Aktualności",
            ),
            IconTextButton(
              onPressed: () {},
              icon: Icons.calendar_month,
              label: "Wydarzenia",
              isFontBold: true,
            ),
            IconTextButton(
              onPressed: () {},
              icon: Icons.approval,
              label: "Eksploruj",
            ),
          ],
        ),
      ),
    );
  }
}
