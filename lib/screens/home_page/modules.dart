import 'dart:convert';
import 'dart:developer';

import 'package:first/utils/my_strings.dart';
import 'package:http/http.dart' as http;
import 'package:first/screens/home_page/module_button.dart';
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
      'screen': 'dlc',
    },
    {
      'title': 'Pamphlet',
      'icon': MdiIcons.fileDocumentOutline,
      'description': ' Pamphlets\nAvailable',
      'screen': 'dlc',
    },
    {
      'title': 'Poster',
      'icon': MdiIcons.artboard,
      'description': 'Last Update on\n',
      'screen': 'dlc',
    },
    {
      'title': 'Booklet',
      'icon': MdiIcons.bookOpenPageVariant,
      'description': ' Booklets\nAvailable',
      'screen': 'dlc',
    },
    {
      'title': 'Calendar',
      'icon': MdiIcons.calendarToday,
      'description': 'Important Events',
      'screen': 'calendar',
    },
    {
      'title': 'GSDP',
      'icon': MdiIcons.leaf,
      'description': 'Green Skill Development Programme',
      'screen': 'courses',
    },
    {
      'title': 'LiFE',
      'icon': MdiIcons.forest,
      'description': 'Lifestyle for Environment',
      'screen': 'courses',
    },
    {
      'title': 'Downloads',
      'icon': MdiIcons.fileDownload,
      'description': ' Files Downloaded',
      'screen': 'downloads',
    },
  ];

  List<Widget> makeModuleWidgets() {
    List<Widget> moduleWidgets = [];

    for (var module in modules) {
      moduleWidgets.add(
        ModuleButton(
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
      alignment: WrapAlignment.center,
      spacing: 25,
      runSpacing: 25,
      children: makeModuleWidgets(),
    );
  }

  @override
  void initState() {
    super.initState();
    getModuleMetas();
  }

  Future getModuleMetas() async {
    try {
      final response = await http.get(Uri.parse('$kApiUrl/home'));

      switch (response.statusCode) {
        case 200:
          final moduleMetas = jsonDecode(response.body);

          for (final moduleMeta in moduleMetas) {
            setState(() {
              final selectedModule = modules
                  .where((module) => module['title'] == moduleMeta['module']);

              if (moduleMeta['module'] == 'Newsletter' ||
                  moduleMeta['module'] == 'Poster') {
                selectedModule.first['description'] +=
                    moduleMeta['latest_update'];
              } else {
                selectedModule.first['description'] =
                    moduleMeta['content_count'].toString() +
                        selectedModule.first['description'];
              }
            });
          }

        default:
          throw Exception('Network Error');
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          closeIconColor: Colors.white,
          showCloseIcon: true,
        ),
      );

      log(e.toString());

      return null;
    }
  }
}
