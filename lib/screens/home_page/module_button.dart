import 'package:first/utils/module_parameter.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:first/utils/my_colors.dart' as my_colors;

class ModuleButton extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final String routeName;

  const ModuleButton({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.routeName,
  });

  @override
  State<ModuleButton> createState() => _ModuleButtonState();
}

class _ModuleButtonState extends State<ModuleButton> {
  final BorderRadius _roundedBorder = BorderRadius.circular(5);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.45,
      child: Container(
        height: 200,
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
          onPressed: () {
            Navigator.pushNamed(
              context,
              widget.routeName,
              arguments: ModuleParameter(title: widget.title),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: _roundedBorder,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    widget.icon,
                    size: 28,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                widget.description,
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
