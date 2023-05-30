import 'package:first/presentation/home_page/about.dart';
import 'package:first/utils/my_colors.dart' as my_colors;
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AboutCard extends StatelessWidget {
  final double borderRadius = 30.0;
  const AboutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            blurStyle: BlurStyle.outer,
            color: my_colors.kPrimaryColor,
          )
        ],
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const HomeAbout(),
            ),
          );
        },
        color: my_colors.kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: DefaultTextStyle.merge(
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                          'Environment Information,\nAwareness, Capacity Building\nand Livelihood Programme\n(EIACP)'),
                    ),
                    Icon(
                      MdiIcons.arrowRightCircleOutline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
