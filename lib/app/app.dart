import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterboilerplate/app/app_localizations.dart';
import 'package:flutterboilerplate/common/constants/constants.dart';
import '../routes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeData getThemeData() {
    return ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: getTextTheme(),
    );
  }

  TextTheme getTextTheme() {
    return TextTheme(
      // Screen title : ex Login
      headline1: TextStyle(fontSize: DimenConstant.headline1, fontWeight: FontWeight.w700, fontFamily: "SFProDisplay"),

      // Regular text
      headline5: TextStyle(fontWeight: FontWeight.w400, fontFamily: "SFProDisplay"),

      // Edit text
      headline6: TextStyle(fontSize: DimenConstant.input, fontWeight: FontWeight.w500, fontFamily: "SFProDisplay"),

      // Buttons
      button: TextStyle(fontSize: DimenConstant.button, fontWeight: FontWeight.w700, fontFamily: "SFProDisplay"),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: StringConstant.APP_NAME,
      theme: getThemeData(),
      onGenerateRoute: generateRoute,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode && supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
