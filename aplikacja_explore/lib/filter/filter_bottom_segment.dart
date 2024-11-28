import 'package:aplikacja_explore/components/bottom_buttons.dart';
import 'package:aplikacja_explore/components/dividers.dart';
import 'package:aplikacja_explore/mainPage/main_page.dart';
import 'package:flutter/material.dart';

class FilterBottomSegment extends StatefulWidget {
  const FilterBottomSegment({super.key});

  @override
  State<FilterBottomSegment> createState() => _FilterBottomSegmentState();
}

class _FilterBottomSegmentState extends State<FilterBottomSegment> {
  double currentSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 0, 50),
          child: Text(
            "Szukaj w odległości od swojej lokalizacji",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "0km",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                "100km",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              )
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
            valueIndicatorColor: const Color.fromARGB(255, 1, 218, 196),
            valueIndicatorTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          child: Slider(
            value: currentSliderValue,
            onChanged: (double value) {
              setState(() {
                currentSliderValue = value;
              });
            },
            divisions: 100,
            min: 0,
            max: 100,
            label: "${currentSliderValue.round()}km",
            thumbColor: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: ThinDivider(),
        ),
        Center(
          child: BottomButtons(
            size: size.width * 0.9,
            leftButtonText: "Wyczyść",
            rightButtonText: "Pokaż wyniki (24)",
            showResultsAction: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MainPage(
                            isFiltered: true,
                          )));
            },
          ),
        )
      ],
    );
  }
}
