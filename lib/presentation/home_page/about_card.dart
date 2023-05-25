import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          shadowColor: Theme.of(context).primaryColor,
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                    color: Theme.of(context).primaryColor.withOpacity(0.7),
                  ),
                ]),
            child: DefaultTextStyle.merge(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
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
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: Text(
                              'Environment Information,\nAwareness, Capacity Building\nand Livelihood Programme')),
                      Icon(
                        MdiIcons.arrowRightCircleOutline,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
