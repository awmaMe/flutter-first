import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeCard extends Card {
  final IconData icon;
  final String title;
  final String description;

  const HomeCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                icon,
                size: 28,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ],
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          const Icon(MdiIcons.arrowRightCircleOutline, size: 30),
        ],
      ),
    );
  }
}
