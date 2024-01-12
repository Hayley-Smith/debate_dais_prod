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
            ProArgumentCard(argument: debate.openingStatement1),
            ConArgumentCard(argument: debate.openingStatement2),
            ProArgumentCard(argument: debate.mainArgument1),
            ConArgumentCard(argument: debate.mainArgument2),
            ProArgumentCard(argument: debate.closingStatement1),
            ConArgumentCard(argument: debate.closingStatement2),
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
  });

  final String argument;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.person_add_rounded,
        size: 36,
      ),
      title: Card(
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
  });

  final String argument;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(
        Icons.person_remove_rounded,
        size: 36,
      ),
      title: Card(
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