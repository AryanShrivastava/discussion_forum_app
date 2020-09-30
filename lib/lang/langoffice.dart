import 'package:flutter/material.dart';
import './langhod.dart';
import './langaccount.dart';
import './langexam.dart';
import './langresearch.dart';

class LangCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        LangHodForum(),
        SizedBox(height: 10),
        LangAccountForum(),
        SizedBox(height: 10),
        LangExamForum(),
        SizedBox(height: 10),
        LangResearchForum(),
      ],
    );
  }
}
