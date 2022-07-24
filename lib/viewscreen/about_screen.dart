import 'package:flutter/material.dart';

import 'contact_screen.dart';
import 'main_screen.dart';
import 'menu_screen.dart';
import 'reservation_screen.dart';
import 'start_screen.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/aboutScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // put image as background
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pasta.jpg'),
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
              // column holding both chef info boxes
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 660.0,
                            width: 340.0,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.65),
                              border: Border.all(
                                color: Colors.white12,
                              ),
                              // rounded edges
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.all(13.0),
                                child: Text(
                                  'Chef Menelao Caggiano',
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              ),
                            ),
                            Container(
                              width: 240.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.55),
                                border: Border.all(
                                  color: Colors.white70,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                // ClipRRect for rounded image
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'images/chef.jpg',
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 300.0,
                                margin: EdgeInsets.all(30.0),
                                child: Text(
                                  """     In 1995, I had opened Risotto in the centre of Manhattan, after spending four years as the sous chef and seven years as the chef of Trattoria del Glicine in the beautiful lakeside town of Cernobbio. 
        
  The kitchen was a convivial one, but not a technical one. The flavours were bound to Emilian ingredients and recipies passed down through generations. But an incessant drive to truly learn how to cook took me to traverse and expand the limits of the Italian traditions of cooking.
  
  I learned that the kitchen is a place for remembering, but also for erasing. Know everything; forget everything.""",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 790.0,
                            width: 340.0,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.65),
                              border: Border.all(
                                color: Colors.white12,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.all(13.0),
                                child: Text(
                                  'Sous Chef Aldo Botura',
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              ),
                            ),
                            Container(
                              width: 199.3,
                              height: 300.0,
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
                                    'images/chef2.jpg',
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 300.0,
                                margin: EdgeInsets.all(40.0),
                                child: Text(
                                  """     Whether it was fate, serendipity, or plain old good luck, I was in Cernobbio in October 1986, and a dinner was organized by my friends at Trattoria del Glicine. I had yet to make it out to the restaurant, but the mythical stories reported by colleagues and gourmets had already filled my mind.
  
  My experience at Trattoria del Glicine was the turning point in my career when later that year, Menelao took me in as a line cook, which eventually evolved into sous chef.
  
  The period from 1988 to 1994 was all about finding our identity through ingredients and techniques. We dug deep into our Italian roots to find the most humble expression of our culinary heritage.
  
  Recipe after recipe, we have tried to bring the best from the past into the future. We have stretched our culinary traditions so thin they almost disappear, but much to our surprise, out of the distortion, there is always a return to order.""",
                                  style: Theme.of(context).textTheme.headline5,
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
                  margin: const EdgeInsets.fromLTRB(0, 15.0, 0, 25.0),
                  child: Text(
                    'established 1995',
                    style: Theme.of(context).textTheme.overline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
