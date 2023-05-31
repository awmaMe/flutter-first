import 'dart:developer';

import 'package:first/models/content.dart';
import 'package:first/utils/layouts/main_layout.dart';
import 'package:first/utils/my_strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DLC extends StatefulWidget {
  static const routeName = '/dlc';
  final String moduleName;

  const DLC({super.key, required this.moduleName});

  @override
  State<DLC> createState() => _DLCState();
}

class _DLCState extends State<DLC> {
  late String moduleName;
  @override
  void initState() {
    super.initState();
    _getContents();
  }

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as ModuleParameter;
    // moduleName = args.title;

    return MainLayout(
      appBarTitle: widget.moduleName,
      child: const Text('hello world'),
    );
  }

  Future<List<Content>?> _getContents() async {
    final res = await http
        .get(Uri.parse('$kApiUrl/contents?module_name=${widget.moduleName}'));
    // final data = jsonDecode(res.body);

    log(res.body);

    return null;
  }
}
