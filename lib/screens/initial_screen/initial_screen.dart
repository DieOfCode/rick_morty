import 'package:flutter/material.dart';
import 'package:rick_morty/screens/character_screen/character_screen.dart';

import '../../constant.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key key}) : super(key: key);
  static String route = '/initial_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDartColor,
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, CharactersScreen.route);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage('assets/images/rickmorty.png'),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage('assets/images/rickmortystart.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
