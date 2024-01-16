class Debate {
  final String id;
  final String thesis;
  final bool isPublic;
  late final String openingStatement1;
  late final String openingStatement2;
  late final String mainArgument1;
  late final String mainArgument2;
  late final String rebuttal1;
  late final String rebuttal2;
  late final String closingStatement1;
  late final String closingStatement2;
  late final String user1;
  late final String user2;

  Debate( {required this.isPublic,
    required this.id,
    required this.thesis,
    required this.openingStatement1,
    required this.openingStatement2,
    required this.mainArgument1,
    required this.mainArgument2,
    required this.rebuttal1,
    required this.rebuttal2,
    required this.closingStatement1,
    required this.closingStatement2,
    required this.user1,
    required this.user2,
  });
}
