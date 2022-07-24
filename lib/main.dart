import 'package:creative_work_assignment1/viewscreen/about_screen.dart';
import 'package:creative_work_assignment1/viewscreen/contact_screen.dart';
import 'package:creative_work_assignment1/viewscreen/main_screen.dart';
import 'package:creative_work_assignment1/viewscreen/menu_screen.dart';
import 'package:creative_work_assignment1/viewscreen/reservation_screen.dart';
import 'package:creative_work_assignment1/viewscreen/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CreativeWorkAssignment1App());
}

class CreativeWorkAssignment1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'WorkSans',
            color: Colors.white70,
            fontSize: 32.0,
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.grey[500],
          backwardsCompatibility: false,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo[500],
            textStyle: TextStyle(
              fontFamily: 'WorkSans',
              fontSize: 11.0,
            ),
          ),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'WorkSans',
          ),
          headline2: TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: 'WorkSans',
            fontSize: 27.0,
            color: Colors.white70,
          ),
          headline3: TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: 'WorkSans',
            fontSize: 17.0,
            color: Colors.white70,
          ),
          headline4: TextStyle(
            fontFamily: 'WorkSans',
            fontSize: 15.0,
            color: Colors.white60,
          ),
          headline5: TextStyle(
            fontFamily: 'WorkSans',
            fontSize: 12.0,
            color: Colors.white60,
          ),
          headline6: TextStyle(
            fontFamily: 'WorkSans',
            fontSize: 10.0,
            color: Colors.white60,
          ),
          overline: TextStyle(
            fontFamily: 'WorkSans',
            fontSize: 10.0,
            color: Colors.white.withOpacity(0.65),
          ),
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: Colors.black.withOpacity(0.75),
          textStyle: TextStyle(
            fontFamily: 'WorkSans',
            color: Colors.white70,
          ),
        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (BuildContext context) => StartScreen(),
        MainScreen.routeName: (context) => MainScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
        ReservationScreen.routeName: (context) => ReservationScreen(),
        AboutScreen.routeName: (context) => AboutScreen(),
        ContactScreen.routeName: (context) => ContactScreen(),
      },
    );
  }
}
