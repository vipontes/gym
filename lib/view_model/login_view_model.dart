import 'package:flutter/material.dart';
import 'package:gym/api/error_handler/error_handler.dart';
import 'package:gym/api/login_service.dart';
import 'package:gym/database/app_database.dart';
import 'package:gym/enums/view_state.dart';
import 'package:gym/gym_app.dart';
import 'package:gym/model/token.dart';
import 'package:gym/util/connectivity_helper.dart';
import 'package:gym/util/constants.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends ChangeNotifier {
  final _viewStateController = BehaviorSubject<ViewState>();
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _errorMessage = BehaviorSubject<String>();

  Stream<String> get email => _emailController.stream;
  Function(String) get onEmailChange => _emailController.add;

  Stream<String> get password => _passwordController.stream;
  Function(String) get onPasswordChange => _passwordController.add;

  Stream<ViewState> get viewState => _viewStateController.stream;

  Stream<String> get errorMessage => _errorMessage.stream;

  Token _token;

  Future<bool> login() async {
    final email = _emailController.value;
    final password = _passwordController.value;

    var connectivity = await ConnectivityHelper.checkConnectivity();
    if (!connectivity) {
      _errorMessage.add("internet_connection_error");
      _viewStateController.add(ViewState.error);
      return false;
    }

    LoginService().login(email, password).then((res) async {
      var decodedResponse = res.fold((error) => error, (val) => val);
      if (decodedResponse is Token) {
        _token = decodedResponse;
        _viewStateController.add(ViewState.loaded);
      } else if (decodedResponse is ErrorHandler) {
        final ErrorHandler e = decodedResponse;
        if (e.message != null)
          _errorMessage.add(e.message);
        else
          _errorMessage.add("internal_error");
        _viewStateController.add(ViewState.error);
        return false;
      }
      return true;
    }).catchError((error) {
      _errorMessage.add("internal_error");
      _viewStateController.add(ViewState.error);
      return false;
    });
  }

  Future<void> saveToken() async {
    if (_token != null) {
      final database = Provider.of<AppDatabase>(navigatorKey.currentContext);
      await database.tokenLocalDao.deleteAll();
      await database.tokenLocalDao.insertToken(_token.toMoor());

      final prefs = await SharedPreferences.getInstance();
      prefs.setBool(Constants.isLoggedIn, true);
      prefs.setString(Constants.token, _token.token);
      prefs.setString(Constants.refreshToken, _token.refreshToken);
    }
  }

  @override
  void dispose() {
    _viewStateController.close();
    _emailController.close();
    _passwordController.close();
    _errorMessage.close();
    super.dispose();
  }
}
