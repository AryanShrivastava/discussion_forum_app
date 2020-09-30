import 'package:flutter/material.dart';
import './mathshod.dart';
import './mathsaccount.dart';
import './mathsexam.dart';
import './mathsresearch.dart';

class MathsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MathsHodForum(),
        SizedBox(height: 10),
        MathsAccountForum(),
        SizedBox(height: 10),
        MathsExamForum(),
        SizedBox(height: 10),
        MathsResearchForum(),
      ],
    );
  }
}
