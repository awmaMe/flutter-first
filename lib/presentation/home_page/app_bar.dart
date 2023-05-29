import 'package:first/utils/my_colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const HomeAppBar(
      {super.key, required this.title, this.height = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      leadingWidth: 30,
      leading: IconButton(
        color: kPrimaryColor,
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      elevation: 8,
      shadowColor: Theme.of(context).primaryColor.withOpacity(0.2),
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
      title: Text(title),
      actions: [
        Image.asset(
          'assets/images/EIACP New logo.png',
          width: 40,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
