import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gym/database/moor_database.dart';
import 'package:gym/res/app_colors.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/util/localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

Map<int, Color> color = {
  50: AppColors.primary,
  100: AppColors.primary,
  200: AppColors.primary,
  300: AppColors.primary,
  400: AppColors.primary,
  500: AppColors.primary,
  600: AppColors.primary,
  700: AppColors.primary,
  800: AppColors.primary,
  900: AppColors.primary,
};

MaterialColor colorCustom = MaterialColor(0xFF00284F, color);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool _isLoggedIn = false;

  var prefs = await SharedPreferences.getInstance();
  _isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(GymApp(
    isLoggedIn: _isLoggedIn,
  ));
}

class GymApp extends StatefulWidget {
  final bool isLoggedIn;

  const GymApp({Key key, this.isLoggedIn}) : super(key: key);

  @override
  _GymAppState createState() => _GymAppState();
}

class _GymAppState extends State<GymApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(builder: (context) => AppDatabase()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GYM',
        theme: ThemeData(
          primarySwatch: colorCustom,
          cursorColor: colorCustom,
          accentColor: AppColors.primary,
        ),
        supportedLocales: [
          Locale('en', 'US'),
          Locale('pt', 'BR'),
        ],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback:
            (Locale locale, Iterable<Locale> supportedLocales) {
          if (locale == null) {
            return supportedLocales.first;
          }

          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        initialRoute: widget.isLoggedIn ? Routes.home : Routes.login,
        onGenerateRoute: Routes.generateRoute,
        navigatorKey: navigatorKey,
      ),
    );
  }
}

//https://quickbirdstudios.com/blog/mvvm-in-flutter/
