import 'dart:convert';
import 'package:first/models/about.dart';
import 'package:first/presentation/layouts/main_layout.dart';
import 'package:first/utils/my_strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
          if (snapshot.hasData) {
            return ListView(
              children: const [
                // Html(
                //   data: snapshot.data!.description,
                // ),
              ],
            );
          }

          return const CircularProgressIndicator();
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
