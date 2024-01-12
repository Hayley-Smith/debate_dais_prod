import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/core/themes.dart';
import 'package:myapp/UI/join_debate.dart';
import 'package:myapp/UI/start_debate.dart';

import 'UI/homepage.dart';
import 'domain/debate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Debate sampleDebate = Debate(
        id: "1",
        thesis: "The existence of God is a logical fallacy.",
        openingStatement1:
            "The argument from design states that the complexity of the universe is evidence of a designer. However, this argument is flawed because it relies on the assumption that there is no natural explanation for complexity.",
        openingStatement2:
            "The argument from teleology states that the purposefulness of the universe is evidence of a designer. However, this argument is also flawed because it relies on the assumption that there is no natural explanation for purposefulness.",
        mainArgument1:
            "The argument from morality states that the existence of objective moral values is evidence of a designer. However, this argument is also flawed because it relies on the assumption that there is no natural explanation for objective moral values.",
        mainArgument2:
            "The argument from consciousness states that the existence of consciousness is evidence of a designer. However, this argument is also flawed because it relies on the assumption that there is no natural explanation for consciousness.",
        rebuttal1:
            "The argument from ignorance states that the existence of God is the only explanation for the unknown. However, this argument is flawed because it relies on the assumption that there is no natural explanation for the unknown.",
        rebuttal2:
            "The argument from faith states that the existence of God is a matter of faith. However, this argument is flawed because it relies on the assumption that there is no rational argument for the existence of God.",
        closingStatement1:
            "The existence of God is a matter of personal belief. There is no scientific evidence that can prove or disprove the existence of God.",
        closingStatement2:
            "Ultimately, the question of whether or not God exists is a matter of faith.",
        user1: '',
        user2: '',
        );

    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/home': (context) => const MyHomePage(title: 'Debate Dais'),
        '/start': (context) => const StartDebate(),
        '/join': (context) => JoinDebatePage(debate: sampleDebate),
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
