import 'package:flutter/cupertino.dart';
import 'package:rick_morty/screens/character_screen/character_screen.dart';
import 'package:rick_morty/screens/initial_screen/initial_screen.dart';

final Map<String, WidgetBuilder> routes = {
  InitialScreen.route: (context) => InitialScreen(),
  CharactersScreen.route: (context) => CharactersScreen()
};
