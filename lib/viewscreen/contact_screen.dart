import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'main_screen.dart';
import 'menu_screen.dart';
import 'reservation_screen.dart';
import 'start_screen.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = '/contactScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // put image as background
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/kitchen2.jpg'),
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 620.0,
                          width: 340.0,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.50),
                            border: Border.all(
                              color: Colors.white60,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(13.0),
                              child: Text(
                                'Contact Information',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ),
                          Container(
                            height: 110.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white60,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(13.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10.0),
                                    child: Text(
                                      """Address""",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                  Text(
                                    """85 10th Ave.""",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    """New York, NY 10011""",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      """(A 3 minute walk from Chelsea Market)""",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 120.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white60,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(13.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text(
                                      """Telephone""",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                  Text(
                                    """Reservations""",
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  Text(
                                    """(212) 497 8090""",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      """Catering""",
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ),
                                  Text(
                                    """(212) 497 4432""",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 245.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white60,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(13.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text(
                                      """Location""",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0),
                                    width: 258.0,
                                    height: 194.9,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.55),
                                      border: Border.all(
                                        color: Colors.white70,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          'images/map.JPG',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 25.0, 0, 15.0),
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
