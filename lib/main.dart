import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  // showLayoutGuidelines();
  runApp(const Hello());
}

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(84, 111, 138, 1),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
          title: const Text('Mizoram\nEIACP Hub'),
          actions: [
            Image.asset(
              'images/EIACP New logo.png',
              width: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.newspaper,
                                size: 28,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Newsletter',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            'Last Update on\n15 May, 2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(Icons.arrow_circle_right_outlined, size: 28),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.newspaper,
                                size: 28,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Newsletter',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            'Last Update on\n15 May, 2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(Icons.arrow_circle_right_outlined, size: 28),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.newspaper,
                                size: 28,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Newsletter',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            'Last Update on\n15 May, 2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(Icons.arrow_circle_right_outlined, size: 28),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.newspaper,
                                size: 28,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Newsletter',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            'Last Update on\n15 May, 2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(Icons.arrow_circle_right_outlined, size: 28),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.newspaper,
                                size: 28,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Newsletter',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            'Last Update on\n15 May, 2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(Icons.arrow_circle_right_outlined, size: 28),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.newspaper,
                                size: 28,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Newsletter',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            'Last Update on\n15 May, 2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Icon(Icons.arrow_circle_right_outlined, size: 28),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
