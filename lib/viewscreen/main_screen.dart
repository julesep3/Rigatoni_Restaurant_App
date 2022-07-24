import 'package:creative_work_assignment1/viewscreen/about_screen.dart';
import 'package:creative_work_assignment1/viewscreen/menu_screen.dart';
import 'package:creative_work_assignment1/viewscreen/reservation_screen.dart';
import 'package:flutter/material.dart';

import 'contact_screen.dart';
import 'start_screen.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/mainScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // put image as background
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/restaurant.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // put AppBar on top of body image
            AppBar(
              // completely center the title
              centerTitle: true,
              // make title a link to start screen
              title: TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, StartScreen.routeName),
                child: Text(
                  'Rigatoni',
                  style: TextStyle(
                    fontFamily: 'WorkSans',
                    fontSize: 32.0,
                    color: Colors.white70,
                  ),
                ),
              ),
              actions: [
                PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuItem<String>>[
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.home_rounded),
                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, MainScreen.routeName),
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'Home',
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.menu_book_rounded),
                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, MenuScreen.routeName),
                              child: Text(
                                'Menu',
                                style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'Menu',
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.contact_page_outlined),
                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, ReservationScreen.routeName),
                              child: Text(
                                'Reservation',
                                style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'Reservation',
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.label),
                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, AboutScreen.routeName),
                              child: Text(
                                'About',
                                style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'About',
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.people_outline_rounded),
                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, ContactScreen.routeName),
                              child: Text(
                                'Contact',
                                style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ],
                        ),
                        value: 'Contact',
                      ),
                    ];
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0, 135.0, 25.0, 0),
              child: Text(
                """'A tavola non si invecchia.'""",
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: 'WorkSans',
                  color: Colors.black.withOpacity(0.65),
                ),
              ),
            ),
            // using container with color
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.45),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(100.0, 15.0, 0, 15.0),
                child: Text(
                  """- an old Italian quote : 
                  'You don't get old at the table.'
                  Enjoy life to the fullest. 
                  Pull up a chair, grab a plate of pasta,
                  and pour a glass of wine.""",
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.white.withOpacity(0.65),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 325.0, 0, 15.0),
                child: Text(
                  'established 1995',
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
