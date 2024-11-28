import 'package:aplikacja_explore/filter/checkbox_text.dart';
import 'package:aplikacja_explore/filter/filter_bottom_segment.dart';
import 'package:aplikacja_explore/filter/filter_unfold.dart';
import 'package:aplikacja_explore/mainPage/main_page.dart';
import 'package:aplikacja_explore/components/top_bar.dart';
import 'package:flutter/material.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  bool moreFilters = false;
  final ScrollController vertical = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        controller: vertical,
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(
              icon: Icons.close,
              text: "Filtruj",
              rightButtons: false,
              onPressedFunction: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainPage(
                              isFiltered: false,
                            )));
              },
            ),
            CheckboxText(
              text: "Kultura",
              arrowOn: true,
              fontWeight: FontWeight.bold,
              lineColor: Theme.of(context).primaryColor,
              arrowAction: () {
                setState(() {
                  moreFilters = !moreFilters;
                });
              },
            ),
            if (moreFilters) const KulturaUnfolded(),
            const CheckboxText(
              text: "Oświata",
              arrowOn: false,
              fontWeight: FontWeight.bold,
            ),
            const CheckboxText(
              text: "Ochrona zdrowia",
              arrowOn: false,
              fontWeight: FontWeight.bold,
            ),
            const CheckboxText(
              text: "Sport",
              arrowOn: false,
              fontWeight: FontWeight.bold,
            ),
            const CheckboxText(
              text: "Turystyka",
              arrowOn: false,
              fontWeight: FontWeight.bold,
            ),
            const CheckboxText(
              text: "Gospodarka",
              arrowOn: false,
              fontWeight: FontWeight.bold,
            ),
            const CheckboxText(
              text: "Ekologia",
              arrowOn: false,
              fontWeight: FontWeight.bold,
            ),
            CheckboxText(
              text: "Fundusze europejskie",
              arrowOn: false,
              fontWeight: FontWeight.bold,
              lineColor: Theme.of(context).primaryColor,
            ),
            CheckboxText(
              text: "Rodzaj wydarzenia",
              arrowOn: true,
              fontWeight: FontWeight.bold,
              lineColor: Theme.of(context).primaryColor,
              arrowAction: () {
                setState(() {
                  moreFilters = !moreFilters;
                });
              },
            ),
            if (moreFilters) const RodzajUnfolded(),
            CheckboxText(
              text: "Według wieku",
              arrowOn: true,
              fontWeight: FontWeight.bold,
              lineColor: Theme.of(context).primaryColor,
              arrowAction: () {
                setState(() {
                  moreFilters = !moreFilters;
                });
              },
            ),
            if (moreFilters)
              const Column(
                children: [
                  CheckboxText(
                    text: "Dla dzieci",
                    arrowOn: false,
                    fontWeight: FontWeight.normal,
                    leftPadding: 80,
                  ),
                  CheckboxText(
                    text: "Dla Seniora",
                    arrowOn: false,
                    fontWeight: FontWeight.normal,
                    leftPadding: 80,
                  ),
                ],
              ),
            const FilterBottomSegment(),
          ],
        ),
      ),
    );
  }
}
