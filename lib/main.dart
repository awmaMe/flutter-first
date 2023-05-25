import 'package:first/presentation/home_page/index.dart';
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
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
