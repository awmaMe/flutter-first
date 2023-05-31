import 'dart:convert';
import 'package:first/models/about.dart';
import 'package:first/utils/layouts/main_layout.dart';
import 'package:first/utils/my_strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HomeAbout extends StatefulWidget {
  const HomeAbout({super.key});

  @override
  State<HomeAbout> createState() => _HomeAboutState();
}

class _HomeAboutState extends State<HomeAbout> {
  late Future<About> about;

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBarTitle: 'About',
      child: FutureBuilder(
        future: about,
        builder: (context, snapshot) {
          return Center(
            child: getWidget(snapshot),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    about = getAbout();
  }
}

Future<About> getAbout() async {
  final response = await http.get(Uri.parse('$kApiUrl/abouts'));

  if (response.statusCode == 200) {
    return About.fromJson(jsonDecode(response.body));
  }

  throw Exception('Network error');
}

Widget getWidget(AsyncSnapshot<About> aboutSnapshot) {
  if (aboutSnapshot.hasData) {
    return HtmlWidget(
      enableCaching: true,
      aboutSnapshot.data!.description,
    );
  }

  return const CircularProgressIndicator();
}
