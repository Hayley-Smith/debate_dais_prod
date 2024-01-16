import 'package:flutter/material.dart';
import 'package:myapp/domain/logical_fallacy.dart';

class LogicalFallacyDetailPage extends StatelessWidget {
  late final LogicalFallacy fallacy;

  LogicalFallacyDetailPage({super.key, required this.fallacy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fallacy.title),
      ),
      body: Container(
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
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
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        fallacy.text,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        fallacy.essay,
                        style: TextStyle(
                          color: Colors.deepPurple[400],
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
      ),
    );
  }
}
