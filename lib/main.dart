import 'package:first/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
          title: const Text('Mizoram\nEIACP Hub'),
          actions: [
            Image.asset(
              'images/EIACP New logo.png',
              width: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: HomeCard(
                      icon: MdiIcons.newspaperVariantMultipleOutline,
                    ),
                  ),
                  Expanded(
                    child: HomeCard(
                      icon: MdiIcons.newspaperVariantMultipleOutline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: HomeCard(
                      icon: MdiIcons.newspaperVariantMultipleOutline,
                    ),
                  ),
                  Expanded(
                    child: HomeCard(
                      icon: MdiIcons.newspaperVariantMultipleOutline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: HomeCard(
                      icon: MdiIcons.newspaperVariantMultipleOutline,
                    ),
                  ),
                  Expanded(
                    child: HomeCard(
                      icon: MdiIcons.newspaperVariantMultipleOutline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
