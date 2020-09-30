import 'package:flutter/material.dart';
import './biohod.dart';
import './bioaccount.dart';
import './bioexam.dart';
import './bioresearch.dart';

class BioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BioHodForum(),
        SizedBox(height: 10),
        BioAccountForum(),
        SizedBox(height: 10),
        BioExamForum(),
        SizedBox(height: 10),
        BioResearchForum(),
      ],
    );
  }
}
