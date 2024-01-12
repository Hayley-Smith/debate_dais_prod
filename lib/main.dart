import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/core/themes.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: const {
        //'/start': (context) => const StartDebate(),
      },
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Debate Dais',
      theme: buildThemeData(),
      home: const SafeArea(
        child: MyHomePage(
          title: 'Debate Dais',
        ),
      ),
    );
  }
}
