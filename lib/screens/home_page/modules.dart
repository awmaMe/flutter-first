import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:first/screens/calendar/index.dart';
import 'package:first/screens/courses/index.dart';
import 'package:first/screens/dlc/index.dart';
import 'package:first/screens/downloads/index.dart';
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
      'routeName': DLC.routeName,
    },
    {
      'title': 'Pamphlet',
      'icon': MdiIcons.fileDocumentOutline,
      'description': ' Pamphlets\nAvailable',
      'routeName': DLC.routeName,
    },
    {
      'title': 'Poster',
      'icon': MdiIcons.artboard,
      'description': 'Last Update on\n',
      'routeName': DLC.routeName,
    },
    {
      'title': 'Booklet',
      'icon': MdiIcons.bookOpenPageVariant,
      'description': ' Booklets\nAvailable',
      'routeName': DLC.routeName,
    },
    {
      'title': 'Calendar',
      'icon': MdiIcons.calendarToday,
      'description': 'Important Events',
      'routeName': Calendar.routeName,
    },
    {
      'title': 'GSDP',
      'icon': MdiIcons.leaf,
      'description': 'Green Skill Development Programme',
      'routeName': Courses.routeName,
    },
    {
      'title': 'LiFE',
      'icon': MdiIcons.forest,
      'description': 'Lifestyle for Environment',
      'routeName': Courses.routeName,
    },
    {
      'title': 'Downloads',
      'icon': MdiIcons.fileDownload,
      'description': ' Files Downloaded',
      'routeName': Downloads.routeName,
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
          routeName: module['routeName'],
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
    var files = Directory('downloads');

    log(files.path);
    try {
      final response = await http.get(Uri.parse('$kApiUrl/home'));

      switch (response.statusCode) {
        case 200:
          final moduleMetas = jsonDecode(response.body);

          for (final moduleMeta in moduleMetas) {
            setState(() {
              final selectedModule = modules
                  .where((module) => module['title'] == moduleMeta['module'])
                  .firstOrNull;

              if (moduleMeta['module'] == 'Newsletter' ||
                  moduleMeta['module'] == 'Poster') {
                selectedModule!['description'] += moduleMeta['latest_update'];
              } else {
                selectedModule!['description'] =
                    moduleMeta['content_count'].toString() +
                        selectedModule['description'];
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
    }
  }
}
