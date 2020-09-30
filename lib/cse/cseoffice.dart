import 'package:flutter/material.dart';
import './csehod.dart';
import './cseaccount.dart';
import './cseexam.dart';
import './cseresearch.dart';

class CseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CseHodForum(),
        SizedBox(height: 10),
        CseAccountForum(),
        SizedBox(height: 10),
        CseExamForum(),
        SizedBox(height: 10),
        CseResearchForum(),
      ],
    );
  }
}
