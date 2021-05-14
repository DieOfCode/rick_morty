import 'package:flutter/material.dart';
import 'package:rick_morty/routes.dart';
import 'package:rick_morty/screens/initial_screen/initial_screen.dart';

void main() {
  runApp(RickApp());
}

class RickApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: InitialScreen.route,
      routes: routes,
    );
  }
}
