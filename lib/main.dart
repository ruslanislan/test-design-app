import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_design_app/constants/route_consts.dart';
import 'package:test_design_app/screens/main_screen.dart';
import 'package:test_design_app/screens/measures_screen.dart';
import 'package:test_design_app/screens/settings_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      //home: MainScreen(),
      initialRoute: MAIN_SCREEN,
      routes: {
        MAIN_SCREEN: (_) => MainScreen(),
        SETTINGS_SCREEN: (_) => SettingsScreen(),
        //MEASURES_SCREEN: (_) => MeasuresScreen()
      },
    );
  }
}
