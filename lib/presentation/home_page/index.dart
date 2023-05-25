import 'package:first/presentation/home_page/about_card.dart';
import 'package:first/presentation/home_page/home_card.dart';
import 'package:first/presentation/home_page/home_row.dart';
import 'package:first/utils/my_colors.dart' as my_colors;
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 10,
            expandedHeight: 70,
            shadowColor: my_colors.PRIMARY.withOpacity(0.3),
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
                title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Mizoram\nEIACP Hub',
                  style: TextStyle(
                      color: my_colors.PRIMARY, fontWeight: FontWeight.w700),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/images/EIACP New logo.png',
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            )),
            // titleTextStyle: const TextStyle(
            //     color: my_colors.PRIMARY,
            //     fontSize: 22,
            //     fontWeight: FontWeight.w600),
            // title: const Text('Mizoram\nEIACP Hub'),
            // actions: [
            //   Container(
            //     margin: const EdgeInsets.only(right: 10),
            //     child: Image.asset(
            //       'assets/images/EIACP New logo.png',
            //       width: 40,
            //       fit: BoxFit.contain,
            //     ),
            //   ),
            // ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const AboutCard(),
              const HomeRow(
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
              const HomeRow(
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
              const HomeRow(
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
              const HomeRow(
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
            ]),
          )
        ],
      ),
      // appBar: const HomeAppBar(),
      // body: ListView(
      //   padding: const EdgeInsets.all(8.0),
      //   children: const [
      //     AboutCard(),
      //     HomeRow(
      //       cardCol1: HomeCard(
      //         icon: MdiIcons.newspaperVariantMultipleOutline,
      //         title: 'Newsletter',
      //         description: 'Last Update on\n24 May 2023',
      //       ),
      //       cardCol2: HomeCard(
      //         icon: MdiIcons.fileDocumentOutline,
      //         title: 'Pamphlet',
      //         description: '24 Pamphlets\nAvailable',
      //       ),
      //     ),
      //     HomeRow(
      //       cardCol1: HomeCard(
      //         icon: MdiIcons.artboard,
      //         title: 'Poster',
      //         description: 'Last Update on\n14 May 2023',
      //       ),
      //       cardCol2: HomeCard(
      //         icon: MdiIcons.bookOpenPageVariant,
      //         title: 'Booklet',
      //         description: '2 Booklets\nAvailable',
      //       ),
      //     ),
      //     HomeRow(
      //       cardCol1: HomeCard(
      //         icon: MdiIcons.calendarToday,
      //         title: 'Calendar',
      //         description: 'Important Events',
      //       ),
      //       cardCol2: HomeCard(
      //         icon: MdiIcons.leaf,
      //         title: 'GSDP',
      //         description: 'Green Skill Development Programme',
      //       ),
      //     ),
      //     HomeRow(
      //       cardCol1: HomeCard(
      //         icon: MdiIcons.forest,
      //         title: 'LiFE',
      //         description: 'Lifestyle for Environment',
      //       ),
      //       cardCol2: HomeCard(
      //         icon: MdiIcons.fileDownload,
      //         title: 'Downloads',
      //         description: '0 Files Downloaded',
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
