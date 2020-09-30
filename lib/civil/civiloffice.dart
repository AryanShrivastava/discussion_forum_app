import 'package:flutter/material.dart';
import './civilhod.dart';
import './civilaccount.dart';
import './civilexam.dart';
import './civilresearch.dart';

class CivilCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CivilHodForum(),
        SizedBox(height: 10),
        CivilAccountForum(),
        SizedBox(height: 10),
        CivilExamForum(),
        SizedBox(height: 10),
        CivilResearchForum(),
      ],
    );
  }
}
