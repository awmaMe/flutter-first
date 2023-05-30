import 'package:first/presentation/home_page/home_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Modules extends StatefulWidget {
  const Modules({super.key});

  @override
  State<Modules> createState() => _ModulesState();
}

class _ModulesState extends State<Modules> {
  List<Map> modules = [
    {
      'title': 'Newsletter',
      'icon': MdiIcons.newspaperVariantMultipleOutline,
      'description': 'Last Update on\n',
    },
    {
      'title': 'Pamphlet',
      'icon': MdiIcons.fileDocumentOutline,
      'description': ' Pamphlets\nAvailable',
    },
    {
      'title': 'Poster',
      'icon': MdiIcons.artboard,
      'description': 'Last Update on\n',
    },
    {
      'title': 'Booklet',
      'icon': MdiIcons.bookOpenPageVariant,
      'description': ' Booklets\nAvailable',
    },
    {
      'title': 'Calendar',
      'icon': MdiIcons.calendarToday,
      'description': 'Important Events',
    },
    {
      'title': 'GSDP',
      'icon': MdiIcons.leaf,
      'description': 'Green Skill Development Programme',
    },
    {
      'title': 'LiFE',
      'icon': MdiIcons.forest,
      'description': 'Lifestyle for Environment',
    },
    {
      'title': 'Downloads',
      'icon': MdiIcons.fileDownload,
      'description': ' Files Downloaded',
    },
  ];

  List<Widget> makeModuleWidgets() {
    List<Widget> moduleWidgets = [];

    for (var module in modules) {
      moduleWidgets.add(
        HomeCard(
          icon: module['icon'],
          title: module['title'],
          description: module['description'],
        ),
      );
    }

    return moduleWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: makeModuleWidgets(),
    );
  }
}