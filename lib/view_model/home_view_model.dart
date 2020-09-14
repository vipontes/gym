import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:gym/enums/view_state.dart';

class HomeViewModel extends ChangeNotifier {
  final _viewStateController = BehaviorSubject<ViewState>();
  Stream<ViewState> get viewState => _viewStateController.stream;

  @override
  void dispose() {
    _viewStateController.close();
    super.dispose();
  }
}
