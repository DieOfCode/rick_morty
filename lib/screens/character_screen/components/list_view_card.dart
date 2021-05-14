import 'package:flutter/material.dart';
import 'package:rick_morty/data/character.dart';

import '../../../constant.dart';

class ListViewCardCharacter extends StatelessWidget {
  const ListViewCardCharacter({
    Key key,
    @required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mainDartColor,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            isThreeLine: true,
            title: Text(
              character.status,
              style: TextStyle(
                  fontSize: 16,
                  color:
                      character.status == 'Живой' ? Colors.green : Colors.red),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  character.race + ',' + character.sex,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(character.imageRoute),
            ),
          )
        ],
      ),
    );
  }
}
