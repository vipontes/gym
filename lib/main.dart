import 'package:flutter/material.dart';
import 'package:gym/gym_app.dart';
import 'package:gym/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool _isLoggedIn = false;

  var prefs = await SharedPreferences.getInstance();
  _isLoggedIn = prefs.getBool(Constants.isLoggedIn) ?? false;

  runApp(GymApp(
    isLoggedIn: _isLoggedIn,
  ));
}

//https://quickbirdstudios.com/blog/mvvm-in-flutter/
