import 'package:flutter/material.dart';

import 'main_screen.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // put image as background
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/rigatoni.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 245.0, 0, 0),
                child: Text(
                  'Rigatoni',
                  style: TextStyle(
                    fontSize: 70.0,
                    // make text slightly transparent
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, MainScreen.routeName),
              child: Text(
                'Benvenuto - Welcome',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'WorkSans',
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
