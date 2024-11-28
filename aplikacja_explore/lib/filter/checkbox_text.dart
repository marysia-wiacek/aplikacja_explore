import 'package:aplikacja_explore/components/dividers.dart';
import 'package:flutter/material.dart';

class CheckboxText extends StatefulWidget {
  final String text;
  final bool arrowOn;
  final FontWeight fontWeight;
  final Color? lineColor;
  final double? leftPadding;
  final VoidCallback? arrowAction;
  const CheckboxText(
      {super.key,
      required this.text,
      required this.arrowOn,
      required this.fontWeight,
      this.lineColor,
      this.leftPadding,
      this.arrowAction});

  @override
  State<CheckboxText> createState() => _CheckboxTextState();
}

class _CheckboxTextState extends State<CheckboxText> {
  bool checkboxOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: widget.arrowOn
              ? const EdgeInsets.symmetric(horizontal: 20)
              : EdgeInsets.fromLTRB(widget.leftPadding ?? 60, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (widget.arrowOn)
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.arrowAction!();
                        });
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  Text(
                    widget.text,
                    style: TextStyle(fontWeight: widget.fontWeight),
                  ),
                ],
              ),
              Checkbox(
                value: checkboxOn,
                onChanged: (bool? value) {
                  setState(() {
                    checkboxOn = value!;
                  });
                },
                side: MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 194, 194, 194)),
                ),
              ),
            ],
          ),
        ),
        ThinDivider(
          lineColor: widget.lineColor,
        ),
      ],
    );
  }
}
