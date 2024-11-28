import 'package:aplikacja_explore/filter/filter_view.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool rightButtons;
  final Function()? onPressedFunction;
  final VoidCallback? searchAction;
  const TopBar(
      {super.key,
      required this.icon,
      required this.text,
      required this.rightButtons,
      this.onPressedFunction,
      this.searchAction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (onPressedFunction != null) {
                        onPressedFunction!();
                      }
                    },
                    icon: Icon(
                      icon,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    )),
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            if (rightButtons)
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        searchAction!();
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterView()));
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                      )),
                ],
              )
          ],
        ),
      ),
    );
  }
}
