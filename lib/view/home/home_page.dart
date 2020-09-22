import 'package:flutter/material.dart';
import 'package:gym/res/app_theme.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/view_model/home_view_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeViewModel _viewModel = HomeViewModel();

  List<String> listTitle = ['title1', 'title2', 'title3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GYM'), actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.exit_to_app,
          ),
          onPressed: () {
            _viewModel.logout();
            Routes.pushRemoveStack(context, Routes.login);
          },
        )
      ]),
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            itemCount: listTitle.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemBuilder: (contxt, indx) {
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-5.0, 5.0),
                      color: AppTheme.grey.withOpacity(.3),
                      blurRadius: 10.0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    listTitle[indx],
                    style: AppTheme.headline,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
