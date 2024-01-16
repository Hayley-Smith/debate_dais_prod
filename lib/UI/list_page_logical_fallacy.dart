import 'package:flutter/material.dart';
import 'package:myapp/UI/detail_page_logical_fallacy.dart';
import 'package:myapp/domain/logical_fallacy.dart';
import 'package:myapp/state/logical_fallacy_provider.dart';
import 'package:provider/provider.dart';

class LogicalFallacyListPage extends StatefulWidget {
  const LogicalFallacyListPage({super.key});

  @override
  State<LogicalFallacyListPage> createState() => _LogicalFallacyListPageState();
}

class _LogicalFallacyListPageState extends State<LogicalFallacyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logical Fallacies'),
      ),
      body: Consumer<LogicalFallacyProvider>(
        builder: (context, provider, child) {
          List<LogicalFallacy> fallacies = provider.fallacies;
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.deepPurple.shade100,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: const [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: fallacies.length,
                itemBuilder: (context, index) {
                  LogicalFallacy fallacy = fallacies[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogicalFallacyDetailPage(
                              fallacy: fallacies[index]),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.deepPurple[100],
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ListTile(
                          title: Text(
                            fallacy.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                            ),
                          ),
                          subtitle: Text(
                            fallacy.text,
                            style: TextStyle(
                              color: Colors.deepPurple[400],
                            ),
                          ),
                          // Additional information or actions can be added here
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
