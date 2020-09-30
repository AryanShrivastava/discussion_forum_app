import 'package:flutter/material.dart';
import '../chemistry/chemistryhod.dart';
import '../chemistry/chemistryaccount.dart';
import '../chemistry/chemistryexam.dart';
import '../chemistry/chemistryresearch.dart';

class ChemistryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ChemistryHodForum(),
        SizedBox(height: 10),
        ChemistryAccountForum(),
        SizedBox(height: 10),
        ChemistryExamForum(),
        SizedBox(height: 10),
        ChemistryResearchForum(),
      ],
    );
  }
}
