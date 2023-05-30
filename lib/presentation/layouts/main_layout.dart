import 'package:first/presentation/home_page/app_bar.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String appBarTitle;

  const MainLayout({Key? key, required this.child, required this.appBarTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: appBarTitle,
        height: MediaQuery.of(context).size.height * 0.07,
      ),
      body: ListView.builder(
        itemCount: 1,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return child;
        },
      ),
    );
  }
}
