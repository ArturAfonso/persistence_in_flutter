import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final Color? textColor;
  final double textFontSize;

  const DefaultTextButton({
    required this.text,
    required this.onPress,
    this.textColor,
    this.textFontSize: 18,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        child: Text(text,
            style: TextStyle(
                fontSize: textFontSize,
                color: textColor ?? Theme.of(context).colorScheme.primary)));
  }
}
