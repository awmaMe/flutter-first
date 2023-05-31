import 'package:first/utils/layouts/main_layout.dart';
import 'package:first/utils/module_parameter.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  static const routeName = '/courses';
  const Courses({super.key});

  @override
  State<Courses> createState() => CoursesState();
}

class CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ModuleParameter;

    return MainLayout(
      appBarTitle: args.title,
      child: const Text('hello'),
    );
  }
}
