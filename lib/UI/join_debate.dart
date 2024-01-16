import 'package:flutter/material.dart';
import 'package:myapp/domain/debate.dart';

class JoinDebatePage extends StatelessWidget {
  final Debate debate;
  const JoinDebatePage({required this.debate, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    debate.thesis,
                    style: Theme.of(context).textTheme.headlineLarge,
                    softWrap: true,
                  ),
                ),
              ),
            ),
            ProArgumentCard(
              argument: debate.openingStatement1,
              title: "User 1's Opening Statement",
            ),
            ConArgumentCard(
              argument: debate.openingStatement2,
              title: "User 2's Opening Statement",
            ),
            ProArgumentCard(
              argument: debate.mainArgument1,
              title: "User 1's Main Argument",
            ),
            ConArgumentCard(
              argument: debate.mainArgument2,
              title: "User 2's Main Argument",
            ),
            ProArgumentCard(
              argument: debate.closingStatement1,
              title: "User 1's Closing Statement",
            ),
            ConArgumentCard(
              argument: debate.closingStatement2,
              title: "User 2's Closing Statement",
            ),
          ],
        ),
      ),
    );
  }
}

class ProArgumentCard extends StatelessWidget {
  const ProArgumentCard({
    super.key,
    required this.argument,
    required this.title,
  });

  final String argument;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            argument,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}

class ConArgumentCard extends StatelessWidget {
  const ConArgumentCard({
    super.key,
    required this.argument,
    required this.title,
  });
  final String title;
  final String argument;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            argument,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
