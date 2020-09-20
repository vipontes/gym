import 'package:flutter/material.dart';
import 'package:gym/api/login_service.dart';
import 'package:gym/enums/view_state.dart';
import 'package:rxdart/rxdart.dart';

class HomeViewModel extends ChangeNotifier {
  final _viewStateController = BehaviorSubject<ViewState>();
  Stream<ViewState> get viewState => _viewStateController.stream;

  logout() {
    LoginService().logout();
  }

  @override
  void dispose() {
    _viewStateController.close();
    super.dispose();
  }
}
