import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/UI/cite_mla_source.dart';
import 'package:myapp/UI/list_page_logical_fallacy.dart';
import 'package:myapp/core/themes.dart';
import 'package:myapp/UI/join_debate.dart';
import 'package:myapp/UI/start_debate.dart';
import 'package:myapp/domain/mla_source.dart';
import 'package:myapp/state/debate_provider.dart';
import 'package:myapp/state/logical_fallacy_provider.dart';
import 'package:myapp/state/thesis_statement_provider.dart';
import 'package:provider/provider.dart';

import 'UI/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
  //);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DebateProvider()),
        ChangeNotifierProvider(create: (_) => ThesisStatementProvider()),
        ChangeNotifierProvider(create: (_) => LogicalFallacyProvider()),
        //  ChangeNotifierProvider(create: (_) => ArgumentProvider()),
        //  ChangeNotifierProvider(create: (_) => UserProvider()),
        // ChangeNotifierProvider(create: (_) => MLASourceProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    


    // ignore: unused_local_variable
    MLASource mlaSample = MLASource(
    mlaSourceId: "MLA-1",
    author: "John Doe",
    titleOfSource: "The Importance of Being Earnest",
    titleOfContainer: "The Complete Works of Oscar Wilde",
    otherContributors: "Oscar Wilde",
    version: "1",
    number: "1",
    publisher: "Penguin Classics",
    publicationDate: "1994",
    location: "New York, NY",
    dateOfAccess: "2023-03-08",
);

    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/home': (context) => const MyHomePage(title: 'Debate Dais'),
        '/start': (context) => const StartDebate(),
        '/join': (context) => JoinDebatePage(),
        '/cite_mla': (context) => const CiteSourcePage(),
        '/fallacies': (context) => const LogicalFallacyListPage(),
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
