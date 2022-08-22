import 'package:api/screens/character_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test",
      theme: ThemeData(primarySwatch: Colors.red),
      home: CharacterList(),
    );
  }
}
