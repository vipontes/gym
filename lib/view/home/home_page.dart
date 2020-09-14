import 'package:flutter/material.dart';
import 'package:gym/util/localizations.dart';
import 'package:gym/view_model/home_view_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(AppLocalizations.of(context).translate("home")),
        ),
      ),
    );
  }
}
