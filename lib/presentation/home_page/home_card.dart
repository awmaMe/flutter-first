import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:first/utils/my_colors.dart' as my_colors;

class HomeCard extends Card {
  final IconData icon;
  final String title;
  final String description;
  final BorderRadius _roundedBorder = BorderRadius.circular(10);

  HomeCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.5,
      child: Container(
        constraints: const BoxConstraints(minHeight: 180),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: _roundedBorder,
          boxShadow: [
            BoxShadow(
              color: my_colors.kPrimaryColor.withOpacity(0.4),
              blurRadius: 5,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: _roundedBorder,
          ),
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
                    style: const TextStyle(fontWeight: FontWeight.w500),
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
        ),
      ),
    );
  }
}
