import 'package:myapp/domain/mla_source.dart';

class Argument {
  final String text;
  final DateTime timeStamp;
  final String argumentId;
  final String userId;
  final List<MLASource> sources;

  Argument( {required this.sources,
    required this.text,
    required this.timeStamp,
    required this.argumentId,
    required this.userId});
}