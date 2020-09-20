import 'package:flutter/material.dart';
import 'package:gym/animations/fade_animation.dart';
import 'package:gym/enums/view_state.dart';
import 'package:gym/res/app_colors.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/util/localizations.dart';
import 'package:gym/view_model/login_view_model.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginViewModel _viewModel = LoginViewModel();
  String _errorMessage = "";
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  void initState() {
    _viewModel.viewState.listen((state) {
      switch (state) {
        case ViewState.loading:
          break;
        case ViewState.loaded:
          _viewModel.saveToken();
          Routes.pushRemoveStack(context, Routes.home);
          break;
        case ViewState.idle:
          break;
        case ViewState.error:
          var msg = "";
          if (_errorMessage.contains(' ')) {
            msg = _errorMessage;
          } else {
            msg = AppLocalizations.of(context).translate(_errorMessage);
          }
          Toast.show(msg, context);
          break;
        default:
          break;
      }
    });

    _viewModel.errorMessage.listen((e) {
      _errorMessage = e;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: StreamBuilder<ViewState>(
          stream: _viewModel.viewState,
          initialData: ViewState.idle,
          builder: (context, snapshot) {
            return Container(
              height: screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/login-background.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: FadeAnimation(
                        1.0,
                        Image.asset('assets/img/gym.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(
                            1.4,
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.shadow,
                                    blurRadius: 20.0,
                                    offset: Offset(0, 10),
                                  )
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[100],
                                        ),
                                      ),
                                    ),
                                    child: StreamBuilder<String>(
                                        stream: _viewModel.email,
                                        builder: (context, snapshot) {
                                          _emailController.value =
                                              _emailController.value.copyWith(
                                                  text: snapshot.data);
                                          return TextField(
                                            controller: _emailController,
                                            onChanged: (value) {
                                              _viewModel.onEmailChange(value);
                                            },
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  AppLocalizations.of(context)
                                                      .translate('email'),
                                              hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: StreamBuilder<String>(
                                        stream: _viewModel.password,
                                        builder: (context, snapshot) {
                                          _passwordController.value =
                                              _passwordController.value
                                                  .copyWith(
                                                      text: snapshot.data);
                                          return TextField(
                                            obscureText: true,
                                            controller: _passwordController,
                                            onChanged: (value) {
                                              _viewModel
                                                  .onPasswordChange(value);
                                            },
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  AppLocalizations.of(context)
                                                      .translate('password'),
                                              hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                              ),
                                            ),
                                          );
                                        }),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          FadeAnimation(
                            1.8,
                            GestureDetector(
                              onTap: () => _viewModel.login(),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.primary,
                                      AppColors.secondary,
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('login'),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          FadeAnimation(
                            2.5,
                            Text(
                              AppLocalizations.of(context)
                                  .translate('forgot_password'),
                              style: TextStyle(
                                color: AppColors.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
