import 'package:flutter/material.dart';
import 'package:rick_morty/data/character.dart';

import '../../../constant.dart';

class GridViewCharacterCard extends StatelessWidget {
  final Character character;
  const GridViewCharacterCard({
    Key key,
    this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainDartColor,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: CircleAvatar(
              radius: 50,
              child: ClipRRect(
                child: Image.asset(character.imageRoute),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          Text(
            character.status,
            style: TextStyle(
                fontSize: 16,
                color: character.status == 'Живой' ? Colors.green : Colors.red),
          ),
          Text(
            character.name,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            character.race + ',' + character.sex,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
