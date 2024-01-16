import 'package:flutter/material.dart';
import 'package:myapp/domain/logical_fallacy.dart';

class LogicalFallacyDetailPage extends StatelessWidget {
  late final LogicalFallacy fallacy;

  // ignore: prefer_const_constructors_in_immutables
  LogicalFallacyDetailPage({super.key, required this.fallacy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fallacy.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
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
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      fallacy.text,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      fallacy.essay,
                      style: const TextStyle(
                      ),
                    ),
                  ),
                  // Additional information or actions can be added here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
