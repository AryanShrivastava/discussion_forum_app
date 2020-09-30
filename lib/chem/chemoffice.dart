import 'package:flutter/material.dart';
import './chemhod.dart';
import './chemaccount.dart';
import './chemexam.dart';
import './chemresearch.dart';

class ChemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ChemHodForum(),
        SizedBox(height: 10),
        ChemAccountForum(),
        SizedBox(height: 10),
        ChemExamForum(),
        SizedBox(height: 10),
        ChemResearchForum(),
      ],
    );
  }
}
