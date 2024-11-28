import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final bool isFontBold;

  const IconTextButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    super.key,
    this.isFontBold = false,
  });

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
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Icon(
              icon,
              size: 30,
              color: const Color.fromARGB(255, 50, 50, 50),
            ),
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 14,
                color: const Color.fromARGB(255, 50, 50, 50),
                fontWeight: isFontBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
