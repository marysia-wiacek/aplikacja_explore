import 'package:aplikacja_explore/components/bottom_buttons.dart';
import 'package:aplikacja_explore/calendar/calendar_line.dart';
import 'package:aplikacja_explore/components/dividers.dart';
import 'package:aplikacja_explore/oneEvent/one_event.dart';
import 'package:aplikacja_explore/components/top_bar.dart';
import 'package:flutter/material.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  bool switchOn = true;
  final ScrollController vertical = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        controller: vertical,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TopBar(
              icon: Icons.close,
              text: "Kalendarz imprez",
              rightButtons: false,
              onPressedFunction: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OneEvent()));
              },
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: size.width * 0.8,
              child: const Text(
                "Gala muzyki filmowej",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ThickDivider(
                color: switchOn
                    ? const Color.fromARGB(255, 207, 207, 207)
                    : Colors.grey),
            SizedBox(
              width: size.width * 0.8,
              child: const Text(
                  "Hala widowiskowo-sportowa Spodek al. Korfantego 35, Katowice",
                  style: TextStyle(fontSize: 14)),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wydarzenie całodniowe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                        value: switchOn,
                        activeColor: const Color.fromARGB(255, 1, 218, 196),
                        onChanged: (bool newValue) {
                          setState(() {
                            switchOn = newValue;
                          });
                        }),
                  )
                ],
              ),
            ),
            ThickDivider(
                color: switchOn
                    ? const Color.fromARGB(255, 207, 207, 207)
                    : Colors.grey),
            const CalendarLine(
              textLeft: "Początek",
              textRight: "18.11.24 r.",
              isBold: false,
            ),
            const ThinDivider(),
            const CalendarLine(
              textLeft: "Koniec",
              textRight: "19.11.24 r.",
              isBold: false,
            ),
            const ThinDivider(),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: CalendarLine(
                textLeft: "Powtarzaj",
                textRight: "Nigdy",
                isBold: true,
              ),
            ),
            ThickDivider(
                color: switchOn
                    ? const Color.fromARGB(255, 207, 207, 207)
                    : Colors.grey),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: CalendarLine(
                textLeft: "Kalendarz",
                textRight: "Dom",
                isBold: true,
              ),
            ),
            ThickDivider(
                color: switchOn
                    ? const Color.fromARGB(255, 207, 207, 207)
                    : Colors.grey),
            const CalendarLine(
              textLeft: "Zaproszeni",
              textRight: "Brak",
              isBold: false,
            ),
            const ThinDivider(),
            const CalendarLine(
              textLeft: "Alert",
              textRight: "W dniu wydarzenia (9:00)",
              isBold: true,
            ),
            ThickDivider(
                color: switchOn
                    ? const Color.fromARGB(255, 207, 207, 207)
                    : Colors.grey),
            const CalendarLine(
              textLeft: "2. alert",
              textRight: "Brak",
              isBold: false,
            ),
            SizedBox(
              height: size.width < 450 ? 160 : 60,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomButtons(
                size: size.width * 0.8,
                leftButtonText: "Anuluj",
                rightButtonText: "Dodaj",
              ),
            )
          ],
        ),
      ),
    );
  }
}
