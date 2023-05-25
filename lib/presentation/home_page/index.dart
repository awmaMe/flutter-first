import 'package:first/presentation/home_page/about_card.dart';
import 'package:first/presentation/home_page/home_card.dart';
import 'package:first/presentation/home_page/home_row.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
            'assets/images/EIACP New logo.png',
            width: 50,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          AboutCard(),
          HomeRow(
            cardCol1: HomeCard(
              icon: MdiIcons.newspaperVariantMultipleOutline,
              title: 'Newsletter',
              description: 'Last Update on\n24 May 2023',
            ),
            cardCol2: HomeCard(
              icon: MdiIcons.fileDocumentOutline,
              title: 'Pamphlet',
              description: '24 Pamphlets\nAvailable',
            ),
          ),
          HomeRow(
            cardCol1: HomeCard(
              icon: MdiIcons.artboard,
              title: 'Poster',
              description: 'Last Update on\n14 May 2023',
            ),
            cardCol2: HomeCard(
              icon: MdiIcons.bookOpenPageVariant,
              title: 'Booklet',
              description: '2 Booklets\nAvailable',
            ),
          ),
          HomeRow(
            cardCol1: HomeCard(
              icon: MdiIcons.calendarToday,
              title: 'Calendar',
              description: 'Important Events',
            ),
            cardCol2: HomeCard(
              icon: MdiIcons.leaf,
              title: 'GSDP',
              description: 'Green Skill Development Programme',
            ),
          ),
          HomeRow(
            cardCol1: HomeCard(
              icon: MdiIcons.forest,
              title: 'LiFE',
              description: 'Lifestyle for Environment',
            ),
            cardCol2: HomeCard(
              icon: MdiIcons.fileDownload,
              title: 'Downloads',
              description: '0 Files Downloaded',
            ),
          ),
        ],
      ),
    );
  }
}
