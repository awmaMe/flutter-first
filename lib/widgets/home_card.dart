import 'package:flutter/material.dart';

class HomeCard extends Card {
  final IconData icon;

  const HomeCard({super.key, required this.icon});

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
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Newsletter',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ],
          ),
          const Text(
            'Last Update on\n15 May, 2023',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          const Icon(Icons.arrow_circle_right_outlined, size: 28),
        ],
      ),
    );
  }
}
