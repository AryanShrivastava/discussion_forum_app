import 'package:flutter/material.dart';
import './eeehod.dart';
import './eeeaccount.dart';
import './eeeexam.dart';
import './eeeresearch.dart';

class EeeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        EeeHodForum(),
        SizedBox(height: 10),
        EeeAccountForum(),
        SizedBox(height: 10),
        EeeExamForum(),
        SizedBox(height: 10),
        EeeResearchForum(),
      ],
    );
  }
}
