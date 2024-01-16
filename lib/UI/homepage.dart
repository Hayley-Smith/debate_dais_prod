import 'package:flutter/material.dart';
import 'package:myapp/UI/detail_page_logical_fallacy.dart';
import 'package:myapp/domain/logical_fallacy.dart';
import 'package:myapp/domain/thesis_statement.dart';
import 'package:myapp/state/logical_fallacy_provider.dart';
import 'package:myapp/state/thesis_statement_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    "assets/ddban4.png",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Hero(
                  tag: "start",
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/start');
                    },
                    child: Text(
                      "Propose a Topic",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: buildTitleRow("Join a debate"),
            ),
            Expanded(
              flex: 3,
              child: buildThesisStatements(),
            ),
            Expanded(
              flex: 1,
              child: buildTitleRow("Learn About Logical Fallacies"),
            ),
            Expanded(
              flex: 3,
              child: buildLogicalFallacyRow(),
            ),
            Expanded(
              flex: 1,
              child: buildTitleRow("Debate Library"),
            ),
            Expanded(
              flex: 3,
              child: buildThesisStatements(),
            ),
            Expanded(
              flex: 1,
              child: buildTitleRow("My Debates"),
            ),
            Expanded(
              flex: 3,
              child: buildThesisStatements(),
            ),
            
          ],
        ),
      ),
    );
  }

  Row buildTitleRow(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }

  Container buildScrollingRow() {
    return Container(
      color: Colors.transparent,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 250,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/join');
                  },
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "The existance of God is a logical fallacy",
                          style: Theme.of(context).textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

//display list of thesis statements as a row of cards
  Widget buildThesisStatements() {
    return Consumer<ThesisStatementProvider>(
      builder: (context, provider, child) {
        List<ThesisStatement> thesisStatements = provider.openDebates;
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: thesisStatements.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 250,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/join');
                  },
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          thesisStatements[index].topic,
                          style: Theme.of(context).textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget buildLogicalFallacyRow() {
    return Consumer<LogicalFallacyProvider>(
      builder: (context, provider, child) {
        List<LogicalFallacy> fallacyList = provider.fallacies;
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: fallacyList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 250,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogicalFallacyDetailPage(
                            fallacy: fallacyList[index]),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          fallacyList[index].title,
                          style: Theme.of(context).textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
