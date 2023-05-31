import 'package:first/utils/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  static const routeName = '/calendar';
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      appBarTitle: 'Calendar',
      child: Text('hello'),
    );
  }
}
