import 'dart:convert';

import 'package:api/data/character_api.dart';
import 'package:api/model/character.dart';
import 'package:flutter/material.dart';

class CharacterList extends StatefulWidget {
  CharacterList() ;

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  List<Character> characterList = <Character>[];

  void getCharactersfromApi() async {
    CharacterApi.getCharacters().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        characterList = list.map((model) => Character.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getCharactersfromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animals"),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: characterList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(characterList[index].name),
                  subtitle: Text(characterList[index].status),
                  leading: CircleAvatar(
                   // backgroundImage: NetworkImage(characterList[index].name),
                  ),
                    trailing: PopupMenuButton(
                    itemBuilder: (ctx) => [
                  PopupMenuItem(child: Text("Edit")),
                  //PopupMenuItem(child: Text("Delete")),
                ],
                ),


                );
              }),

        )

    );
  }






}
