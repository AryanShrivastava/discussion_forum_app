import 'package:flutter/material.dart';
import './phyhod.dart';
import './phyaccount.dart';
import './phyexam.dart';
import './phyresearch.dart';

class PhyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PhyHodForum(),
        SizedBox(height: 10),
        PhyAccountForum(),
        SizedBox(height: 10),
        PhyExamForum(),
        SizedBox(height: 10),
        PhyResearchForum(),
      ],
    );
  }
}
