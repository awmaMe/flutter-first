import 'package:first/utils/layouts/main_layout.dart';
import 'package:flutter/material.dart';

class Downloads extends StatefulWidget {
  static const routeName = '/downloads';

  const Downloads({super.key});

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      appBarTitle: 'Downloads',
      child: Text('hello'),
    );
  }
}
