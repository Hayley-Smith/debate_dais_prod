import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/start');
                },
                child: Hero(
                  tag: "start",
                  child: Text(
                    "Start a Debate",
                    style: Theme.of(context).textTheme.headlineLarge,
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
            flex: 2,
            child: buildScrollingRow(),
          ),
          Expanded(
            flex: 1,
            child: buildTitleRow("My Debates"),
          ),
          Expanded(
            flex: 2,
            child: buildScrollingRow(),
          ),
          Expanded(
            flex: 1,
            child: buildTitleRow("Debate Library"),
          ),
          Expanded(
            flex: 2,
            child: buildScrollingRow(),
          ),
        ],
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
            style: Theme.of(context).textTheme.titleMedium,
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
                          style: Theme.of(context).textTheme.bodyMedium,
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
}
