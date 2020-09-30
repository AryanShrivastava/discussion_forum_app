import 'package:flutter/material.dart';
import './ecehod.dart';
import './eceaccount.dart';
import './eceexam.dart';
import './eceresearch.dart';

class EceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        EceHodForum(),
        SizedBox(height: 10),
        EceAccountForum(),
        SizedBox(height: 10),
        EceExamForum(),
        SizedBox(height: 10),
        EceResearchForum(),
      ],
    );
  }
}
