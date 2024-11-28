import 'package:aplikacja_explore/filter/checkbox_text.dart';
import 'package:flutter/material.dart';

class KulturaUnfolded extends StatelessWidget {
  const KulturaUnfolded({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CheckboxText(
          text: "Sztuki wizualne",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        const CheckboxText(
          text: "Muzyka",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        const CheckboxText(
          text: "Muzeum",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        const CheckboxText(
          text: "Teatr",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Kino",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          lineColor: Theme.of(context).primaryColor,
          leftPadding: 80,
        ),
      ],
    );
  }
}

class RodzajUnfolded extends StatelessWidget {
  const RodzajUnfolded({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CheckboxText(
          text: "Warsztaty",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Targi",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Pikniki",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Kongresy",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Koncerty",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Spektakle",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Wystawy",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Konferencje",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
        CheckboxText(
          text: "Rajdy",
          arrowOn: false,
          fontWeight: FontWeight.normal,
          leftPadding: 80,
        ),
      ],
    );
  }
}
