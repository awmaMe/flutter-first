import 'package:first/presentation/home_page/about_card.dart';
import 'package:first/presentation/home_page/modules.dart';
import 'package:first/presentation/shared_widgets/text_underlined.dart';
import 'package:first/utils/my_colors.dart' as my_colors;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 10,
            forceElevated: true,
            expandedHeight: kToolbarHeight + 20,
            collapsedHeight: kToolbarHeight + 5,
            shadowColor: my_colors.kPrimaryColor.withOpacity(0.3),
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding:
                  const EdgeInsetsDirectional.symmetric(horizontal: 10),
              expandedTitleScale: 1.3,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Mizoram\nEIACP Hub',
                    style: TextStyle(
                      color: my_colors.kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  Image.asset(
                    'assets/images/EIACP New logo.png',
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const AboutCard(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const TextUnderlined(
                      fontSize: 22,
                      text: 'Content of the Application',
                    ),
                  ),
                  const Modules(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
