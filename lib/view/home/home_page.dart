import 'package:flutter/material.dart';
import 'package:gym/res/app_colors.dart';
import 'package:gym/res/app_textstyles.dart';
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
            color: Colors.white,
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
              return Card(
                margin: EdgeInsets.all(10.0),
                color: AppColors.lightGray,
                child: Center(
                  child: Text(
                    listTitle[indx],
                    style: AppTextStyles.bigTextPrimary,
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
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
