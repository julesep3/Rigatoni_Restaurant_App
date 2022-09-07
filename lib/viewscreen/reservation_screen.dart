import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'contact_screen.dart';
import 'main_screen.dart';
import 'menu_screen.dart';
import 'start_screen.dart';

class ReservationScreen extends StatelessWidget {
  static const routeName = '/reservationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // put image as background
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/diningRoom.jpg'),
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
                    Navigator.pushNamed(context, MainScreen.routeName),
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
                  // using stack for reservation box
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 550.0,
                          width: 340.0,
                          // rounded border radius
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.70),
                            border: Border.all(
                              color: Colors.white60,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      // column containing main (larger) box items
                      Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              child: Text(
                                'Reservations',
                                style: Theme.of(context).textTheme.headline2,
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
                              // column containing New Booking Dates info
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: Text(
                                      """New Booking Dates""",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                  Text(
                                    """Fall Season""",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    """September 15 ~ November 14""",
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      """Winter Season""",
                                      style:
                                          Theme.of(context).textTheme.headline4,
                                    ),
                                  ),
                                  Text(
                                    """November 15 ~ March 14""",
                                    style:
                                        Theme.of(context).textTheme.headline5,
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
                                      """To Make A Reservation :""",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                  Text(
                                    """Please Call""",
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
                                      """Or Email""",
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ),
                                  Text(
                                    """Reservations@Rigatoni.com""",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 140.0,
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
                                      """Check Availability :""",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                  Text(
                                    """Please Call""",
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  Text(
                                    """(212) 497 8943""",
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      """Or Check Online""",
                                      style:
                                          Theme.of(context).textTheme.headline5,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      print('Reservations button pressed');
                                    },
                                    child: Text('Reservation Schedule'),
                                  )
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
                margin: const EdgeInsets.fromLTRB(0, 90.0, 0, 25.0),
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
