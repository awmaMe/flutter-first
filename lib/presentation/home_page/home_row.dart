import 'package:first/presentation/home_page/home_card.dart';
import 'package:flutter/material.dart';

class HomeRow extends StatelessWidget {
  final HomeCard cardCol1;
  final HomeCard? cardCol2;

  const HomeRow({super.key, required this.cardCol1, this.cardCol2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Expanded(
            child: cardCol1,
          ),
          Expanded(
            child: cardCol2 ??
                const SizedBox(
                  width: 10,
                ),
          ),
        ],
      ),
    );
  }
}
