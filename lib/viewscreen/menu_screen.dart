import 'package:creative_work_assignment1/viewscreen/reservation_screen.dart';
import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'contact_screen.dart';
import 'main_screen.dart';
import 'start_screen.dart';

class MenuScreen extends StatelessWidget {
  static const routeName = '/menuScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // put image as background
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pasta6.jpg'),
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
                  // using stack
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 130.0,
                          width: 400.0,
                          color: Colors.black.withOpacity(0.55),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Positioned(
                              child: Container(
                                margin: EdgeInsets.all(3.0),
                                child: Text(
                                  """Antipasti 'before the meal'""",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(1.5),
                              child: Text(
                                """Incapriata - Fava Bean Purée with Bitter Greens    ~ 8""",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(1.5),
                              child: Text(
                                """Baccalà Fritto - Deep-Fried Salt Cod    ~ 9""",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(1.5),
                              child: Text(
                                """Fiori di Succhine Ripieni - Stuffed Zucchini Blossoms    ~ 8""",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(1.5),
                              child: Text(
                                """Risotto al Salto con Funghi - Crisp Risotto Cakes with Mushroom    ~ 7""",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(1.5),
                              child: Text(
                                """Sarde Fritte all'Agro - Fried Sardines in Savory Sauce    ~ 8""",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(1.5),
                              child: Text(
                                """Carciofi all Romana - Stuffed Artichokes Roman-Style    ~ 6""",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 130.0,
                            width: 400.0,
                            color: Colors.black.withOpacity(0.55),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Positioned(
                                child: Container(
                                  margin: EdgeInsets.all(3.0),
                                  child: Text(
                                    """Primi Piatti 'first courses'""",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Minestra di Pasta e Ceci - Pasta and Chickpea Soup    ~ 9""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Spaghetti alla Carbonara - Spaghetti, Guanciale, Eggs, Parmigiano    ~ 13""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Gnocchi all'Amatriciana - Potato Gnocchi in Spicy Tomato Sauce    ~ 11""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Tagliolini in Brodo di Cappone - Tagliolini in Capon Broth    ~ 12""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Il Risotto di Verdure di Dante - Dante's Vegetable Risotto    ~ 15""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Bucatini all Gricia - Bucatini with Pancetta, Pecorino, Black Pepper    ~ 14""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 180.0,
                            width: 400.0,
                            color: Colors.black.withOpacity(0.55),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Positioned(
                                child: Container(
                                  margin: EdgeInsets.all(3.0),
                                  child: Text(
                                    """Secondi Piatti 'second courses, entrées'""",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Coda all Vaccinara - Roman Oxtail Stew    ~ 39""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Saltimbocca all Romana - Veal Scaloppine with Prosciutto, Sage    ~ 38""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Stracotto di Maiale al Latte - Pork Shoulder Braised in Milk    ~ 35""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Trippa in Umido all Bolognese - Stewed Tripe Bologna-Style    ~ 28""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Fegato alla Veneziana - Venetial Calf's Liver with Onions    ~ 31""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Faraona in Peverada - Roasted Guinea Hen with Peppery Sauce    ~ 34""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Brodetto de Pesce - Shellfish Stew    ~ 39""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Agnello alla Cacciatora - Lamb Hunter-Style    ~ 40""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """L'Agnello del Ristorante Troiani - Rack of Lamb of Ristorante Troiani ~ 42""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 100.0,
                            width: 400.0,
                            color: Colors.black.withOpacity(0.55),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Positioned(
                                child: Container(
                                  margin: EdgeInsets.all(3.0),
                                  child: Text(
                                    """Contorni 'vegetable side dishes'""",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """La Vignarola - Stew of Fava Beans, Peas, and Artichokes    ~ 10""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Bietole in Padella con il Peperoncino - Swiss Chard with Hot Pepper  ~ 8""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Verdure Ripiene al Forno - Stuffed Roasted Vegetables    ~ 8.5""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Fave con Mortadella - Fava Beans with Mortadella    ~ 9""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 110.0,
                            width: 400.0,
                            color: Colors.black.withOpacity(0.55),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Positioned(
                                child: Container(
                                  margin: EdgeInsets.all(3.0),
                                  child: Text(
                                    """Dolci e Frutta 'desserts and fruit'""",
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Crostata di Visciole - Tart Cherry Crostata    ~ 11""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Frittelle di Ricotta e Mascarpone - Ricotta-Mascarpone Fritters    ~ 10""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Torta Sbrisolona - Milan's Crumbly Cake    ~ 12""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Ciliege Cotte new Vino Rosso - Cherries Poached in Red Wine, Spices ~ 8""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(1.5),
                                child: Text(
                                  """Cornetti alle Nocciole - Hazelnut Cookies    ~ 7""",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 100.0, 0, 25.0),
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
