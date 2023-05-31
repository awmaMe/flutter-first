import 'package:flutter/material.dart';
import 'package:first/utils/my_colors.dart' as my_colors;

class TextUnderlined extends StatelessWidget {
  final double lineWidthFactor;
  final String text;
  final double fontSize;

  const TextUnderlined(
      {super.key,
      this.lineWidthFactor = 0.25,
      required this.text,
      this.fontSize = 24});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: my_colors.kPrimaryColor,
            fontSize: fontSize,
          ),
        ),
        FractionallySizedBox(
          widthFactor: lineWidthFactor,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: my_colors.kPrimaryColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
