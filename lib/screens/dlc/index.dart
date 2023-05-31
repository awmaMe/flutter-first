import 'dart:developer';

import 'package:first/models/content.dart';
import 'package:first/utils/layouts/main_layout.dart';
import 'package:first/utils/module_parameter.dart';
import 'package:first/utils/my_strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

late String moduleName;

class DLC extends StatefulWidget {
  static const routeName = '/dlc';

  const DLC({super.key});

  @override
  State<DLC> createState() => _DLCState();
}

class _DLCState extends State<DLC> {
  @override
  void initState() {
    super.initState();
    getContents();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ModuleParameter;
    moduleName = args.title;

    return MainLayout(
      appBarTitle: moduleName,
      child: const Text('hello world'),
    );
  }
}

Future<List<Content>?> getContents() async {
  final res =
      await http.get(Uri.parse('$kApiUrl/contents?module_name=$moduleName'));
  // final data = jsonDecode(res.body);

  log(res.body);

  return null;
}
