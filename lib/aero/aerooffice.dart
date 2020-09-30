import 'package:flutter/material.dart';
import './aerohod.dart';
import './aeroaccount.dart';
import './aeroexam.dart';
import './aeroresearch.dart';

class AeroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        AeroHodForum(),
        SizedBox(height: 10),
        AeroAccountForum(),
        SizedBox(height: 10),
        AeroExamForum(),
        SizedBox(height: 10),
        AeroResearchForum(),
      ],
    );
  }
}
