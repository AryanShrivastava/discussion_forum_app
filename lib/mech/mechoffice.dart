import 'package:flutter/material.dart';
import './mechhod.dart';
import './mechaccount.dart';
import './mechexam.dart';
import './mechresearch.dart';

class MechCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MechHodForum(),
        SizedBox(height: 10),
        MechAccountForum(),
        SizedBox(height: 10),
        MechExamForum(),
        SizedBox(height: 10),
        MechResearchForum(),
      ],
    );
  }
}
