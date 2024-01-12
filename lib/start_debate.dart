// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class StartDebate extends StatefulWidget {
  const StartDebate({super.key});

  @override
  State<StartDebate> createState() => _StartDebateState();
}

class _StartDebateState extends State<StartDebate> {
  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            //TextField for debate name
            const Text(
              "Start debate screen",
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Make an assertion',
                ),
                controller: nameController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
