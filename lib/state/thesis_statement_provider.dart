import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:myapp/domain/thesis_statement.dart';

class ThesisStatementProvider extends ChangeNotifier {
  final List<ThesisStatement> _openDebates = [
    ThesisStatement(
      topic:
          "Is the government doing enough to combat climate change, or should"
              " more aggressive policies be implemented?",
      proposer: "userId",
      openDebateId: '123',
    ),
    ThesisStatement(
      topic:
          "Should governments regulate social media platforms to curb"
              " misinformation, hate speech, and protect user privacy?",
      proposer: "userId",
      openDebateId: '1234',
    ),
    ThesisStatement(
      topic:
          "Should the United States implement a universal basic income "
              "to address economic inequality and job displacement due "
              "to automation?",
      proposer: "userId",
      openDebateId: '12345c',
    ),
    ThesisStatement(
      topic:
          "Is a single-payer healthcare system the best approach for the "
              "United States, or should the current system be reformed?",
      proposer: "userId",
      openDebateId: '12p345',
    ),
    ThesisStatement(
      topic:
          "What level of gun control is necessary to ensure public safety "
              "while respecting the Second Amendment?",
      proposer: "userId",
      openDebateId: '1d2345',
    ),
    ThesisStatement(
      topic:
          "How should the United States address issues of mass "
              "incarceration, police brutality, and reform the "
              "criminal justice system?",
      proposer: "userId",
      openDebateId: '123d45',
    ),
    ThesisStatement(
      topic:
          "Should the federal government increase funding for public "
              "education, and how should it be distributed?",
      proposer: "userId",
      openDebateId: '12d345',
    ),
    ThesisStatement(
      topic:
          "What should be the approach to immigration, including "
              "pathways to citizenship, border security, and the "
              "treatment of undocumented immigrants?",
      proposer: "userId",
      openDebateId: '1234f5',
    ),
    ThesisStatement(
      topic:
          "Should the United States continue to use the Electoral "
              "College in presidential elections, or should it be "
              "replaced with a popular vote system?",
      proposer: "userId",
      openDebateId: '123fh45',
    ),
    ThesisStatement(
      topic: "Should marijuana be legalized at the federal level?",
      proposer: "userId",
      openDebateId: '12k345',
    ),
    ThesisStatement(
      topic:
          "What measures should be taken to ensure fair and accessible "
              "elections, and how should voting rights be protected "
              "and expanded?",
      proposer: "userId",
      openDebateId: '12j345',
    ),
    ThesisStatement(
      topic:
          "Should the United States implement a national policy for "
              "paid family leave, and how should it be structured to "
              "balance the needs of workers and employers?",
      proposer: "userId",
      openDebateId: '1234l5',
    ),
    ThesisStatement(
      topic:
          "How can individuals' privacy be protected in the age of "
              "widespread digital surveillance, and what regulations "
              "are necessary?",
      proposer: "userId",
      openDebateId: '123g45',
    ),
  ];

  //late ThesisStatement _selectedOpenDebate =
     // _openDebates[0];

  //ThesisStatement get selectedOpenDebate => _selectedOpenDebate;

  List<ThesisStatement> get openDebates => _openDebates;

  void setSelectedOpenDebate(ThesisStatement openDebate) {
   // _selectedOpenDebate = openDebate;
    notifyListeners();
    if (kDebugMode) {
      print("set debate ${openDebate.openDebateId}");
    }
  }

  void addOpenDebate(ThesisStatement openDebate) {
    _openDebates.add(openDebate);
    notifyListeners();
  }
}
