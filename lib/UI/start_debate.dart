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
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TextField for debate name
            Hero(
              tag: "start",
              child: Text(
                "Propose a topic:",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                minLines: 1,
                maxLines: 4,
                maxLength: 140,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Make an assertion',
                ),
                controller: nameController,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Text(
              "Select visibility:",
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            //Row of buttons
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: InkWell(onTap: () {
                    
                  },
                    child: const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "Create Public Debate: Make your debate topic public and open to anyone! ",
                            softWrap: true,
                            maxLines: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Keep your debate topic private and invite specific individuals",
                        softWrap: true,
                        maxLines: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ]),

            const SizedBox(
              height: 10,
            ),

         
            //listview of instructions on how to make an assertion
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Not sure how to begin? Here are some guidelines for crafting a good debate topic:",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text(
                "Clarity and Specificity:",
              ),
              subtitle: Text(
                "Clearly state the topic in a concise and specific manner. Avoid vague or ambiguous language to ensure a focused debate",
              ),
            ),
            const ListTile(
              title: Text(
                "Relevance:",
              ),
              subtitle: Text(
                "Ensure that the topic is relevant to the audience and current events. Choose subjects that are of general interest or importance.",
              ),
            ),
            const ListTile(
              title: Text(
                "Controversy or Diverging Opinions:",
              ),
              subtitle: Text(
                "Select a topic that has room for diverse opinions. Controversial or debatable issues tend to generate more engaging discussions.",
              ),
            ),
            const ListTile(
              title: Text(
                "Real-world Impact:",
              ),
              subtitle: Text(
                "Choose topics that have real-world implications or consequences. Discussing issues with practical relevance can make the debate more meaningful.",
              ),
            ),
            const ListTile(
              title: Text(
                "Broad Appeal:",
              ),
              subtitle: Text(
                "Consider whether the topic has broad appeal and is likely to interest a wide audience. Avoid niche subjects that may not resonate with a diverse group.",
              ),
            ),
            const ListTile(
              title: Text(
                "Clear Affirmative and Negative Positions:",
              ),
              subtitle: Text(
                "Ensure that the topic allows for clear affirmative and negative positions. A well-defined debate structure helps participants articulate their perspectives.",
              ),
            ),
            const ListTile(
              title: Text(
                "Ethical Considerations:",
              ),
              subtitle: Text(
                "Be mindful of the ethical implications of the topic. Avoid topics that may lead to harm or discomfort for participants.",
              ),
            ),
            const ListTile(
              title: Text(
                "Timeliness:",
              ),
              subtitle: Text(
                "Consider the timeliness of the topic in the context of current events or societal discussions. Relevant and timely topics are more likely to capture the audience's attention. ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
