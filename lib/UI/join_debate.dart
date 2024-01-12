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
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.person_add_rounded,
                size: 36,
              ),
              title:  Text(debate.openingStatement1),
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(
                Icons.person_remove_rounded,
                size: 36,
              ),
              title:  Text(
                debate.openingStatement2,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.person_add_rounded,
                size: 36,
              ),
              title: Text(
                debate.mainArgument1,
              ),
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(
                Icons.person_remove_rounded,
                size: 36,
              ),
              title: Text(
                debate.mainArgument2,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.person_add_rounded,
                size: 36,
              ),
              title: Text(
                debate.closingStatement1,
              ),
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(
                Icons.person_remove_rounded,
                size: 36,
              ),
              title: Text(
                debate.closingStatement2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
