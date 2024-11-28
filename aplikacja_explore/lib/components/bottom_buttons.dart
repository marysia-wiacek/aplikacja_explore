import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final double size;
  final String leftButtonText;
  final String rightButtonText;
  final VoidCallback? showResultsAction;
  const BottomButtons(
      {super.key,
      required this.size,
      required this.leftButtonText,
      required this.rightButtonText,
      this.showResultsAction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                leftButtonText,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (showResultsAction != null) {
                  showResultsAction!();
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15)),
              child: Text(
                rightButtonText,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
