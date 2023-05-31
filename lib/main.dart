import 'package:first/screens/calendar/index.dart';
import 'package:first/screens/courses/index.dart';
import 'package:first/screens/dlc/index.dart';
import 'package:first/screens/downloads/index.dart';
import 'package:first/screens/home_page/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  // showLayoutGuidelines();
  runApp(const Hello());
}

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(84, 111, 138, 1),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color.fromARGB(255, 37, 49, 62),
        ),
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
      routes: {
        DLC.routeName: (context) => const DLC(),
        Calendar.routeName: (context) => const Calendar(),
        Courses.routeName: (context) => const Courses(),
        Downloads.routeName: (context) => const Downloads(),
      },
    );
  }
}
