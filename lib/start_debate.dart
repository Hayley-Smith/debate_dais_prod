import 'package:flutter/material.dart';

class StartDebate extends StatefulWidget {
  const StartDebate({super.key});

  @override
  State<StartDebate> createState() => _StartDebateState();
}

class _StartDebateState extends State<StartDebate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Start debate screen",
        ),
      ),
    );
  }
}
