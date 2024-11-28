import 'package:flutter/material.dart';

class ActiveFilters extends StatelessWidget {
  const ActiveFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
      child: Row(
        children: [
          OneActiveFilter(text: "Kultura"),
          OneActiveFilter(text: "Muzyka"),
          OneActiveFilter(text: "Koncerty"),
        ],
      ),
    );
  }
}

class OneActiveFilter extends StatelessWidget {
  final String text;
  const OneActiveFilter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 220, 235),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.close,
            size: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
