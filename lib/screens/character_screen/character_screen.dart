import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty/data/character.dart';

import '../../constant.dart';
import 'components/grid_view_card.dart';
import 'components/list_view_card.dart';

List<Character> characters = [
  Character(
      name: 'Рик Санчез',
      status: 'Живой',
      race: 'Человек',
      sex: 'Мужской',
      imageRoute: 'assets/images/character/rick.jpeg'),
  Character(
      name: 'Директор Агенства',
      status: 'Живой',
      race: 'Человек',
      sex: 'Мужской',
      imageRoute: 'assets/images/character/Director.jpeg'),
  Character(
      name: 'Морти Смит',
      status: 'Живой',
      race: 'Человек',
      sex: 'Мужской',
      imageRoute: 'assets/images/character/morty.jpeg'),
  Character(
      name: 'Саммер Смит',
      status: 'Живой',
      race: 'Человек',
      sex: 'Женский',
      imageRoute: 'assets/images/character/summer.jpeg'),
  Character(
      name: 'Альберт Эйнштейн',
      status: 'Мертвый',
      race: 'Человек',
      sex: 'Мужской',
      imageRoute: 'assets/images/character/einstein.jpeg'),
  Character(
      name: 'Алан Райлс',
      status: 'Мертвый',
      race: 'Человек',
      sex: 'Мужской',
      imageRoute: 'assets/images/character/rayles.jpeg'),
];

class CharactersScreen extends StatefulWidget {
  static String route = '/characters_screen';

  const CharactersScreen({Key key}) : super(key: key);

  @override
  _CharactersScreenState createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  num countValue = 2;
  bool isList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDartColor,
      appBar: AppBar(
        backgroundColor: mainDartColor,
        title: TextFormField(
          cursorColor: elementColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: lightColor,
            prefixIcon: Icon(Icons.search, size: 36, color: elementColor),
            suffixIcon: Icon(
              Icons.filter_alt_outlined,
              size: 36,
              color: elementColor,
            ),
            hintText: 'Найти персонажа',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 24),
                    child: Text(
                      'ВСЕГО ПЕРСОНАЖЕЙ: 200',
                      style: TextStyle(
                        color: elementColor,
                      ),
                    ),
                  ),
                  IconButton(
                      icon: isList
                          ? Icon(
                              Icons.widgets_outlined,
                              color: elementColor,
                              size: 26,
                            )
                          : Icon(
                              Icons.list,
                              color: elementColor,
                              size: 26,
                            ),
                      onPressed: () {
                        setState(() {
                          isList = !isList;
                        });
                      })
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: isList
                  ? ListViewCharacters()
                  : GridViewCharacters(countValue: countValue),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: bottomBarActiveTextColor,
        unselectedLabelStyle: TextStyle(color: bottomBarTextColor),
        selectedLabelStyle: TextStyle(color: bottomBarActiveTextColor),
        backgroundColor: Colors.black12,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ghost.png'),
              label: 'Персонажи',
              backgroundColor: bottomBarColor),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/planet.png',
              ),
              label: 'Локации',
              backgroundColor: bottomBarColor),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/tv.png'),
              label: 'Эпизоды',
              backgroundColor: bottomBarColor),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/setting.png'),
              label: 'Настройки',
              backgroundColor: bottomBarColor),
        ],
      ),
    );
  }
}

class ListViewCharacters extends StatelessWidget {
  const ListViewCharacters({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        Character character = characters[index];
        return ListViewCardCharacter(character: character);
      },
    );
  }
}

class GridViewCharacters extends StatelessWidget {
  const GridViewCharacters({
    Key key,
    @required this.countValue,
  }) : super(key: key);

  final num countValue;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisCount: countValue,
      children: characters
          .map(
            (character) => GridViewCharacterCard(
              character: character,
            ),
          )
          .toList(),
    );
  }
}
