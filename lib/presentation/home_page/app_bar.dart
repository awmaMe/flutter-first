import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      elevation: 5,
      shadowColor: Theme.of(context).primaryColor.withOpacity(0.4),
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
      title: const Text('Mizoram\nEIACP Hub'),
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
  Size get preferredSize => const Size.fromHeight(80);
}
