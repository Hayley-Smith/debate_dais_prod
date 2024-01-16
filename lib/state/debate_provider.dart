import 'package:flutter/foundation.dart';
import 'package:myapp/domain/debate.dart';

class DebateProvider extends ChangeNotifier {
  Debate? _debate;

  Debate? get debate => _debate;

  void setDebate(Debate debate) {
    _debate = debate;
    notifyListeners();
  }
}