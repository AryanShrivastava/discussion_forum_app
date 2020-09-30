import 'package:flutter/material.dart';
import 'package:onthego/aero/aerooffice.dart';
import 'package:onthego/bio/biooffice.dart';
import 'package:onthego/chem/chemoffice.dart';
import 'package:onthego/chemistry/chemistryoffice.dart';
import 'package:onthego/civil/civiloffice.dart';
import 'package:onthego/cse/cseoffice.dart';
import 'package:onthego/ece/eceoffice.dart';
import 'package:onthego/eee/eeeoffice.dart';
import 'package:onthego/lang/langoffice.dart';
import 'package:onthego/maths/mathsoffice.dart';
import 'package:onthego/mech/mechoffice.dart';
import 'package:onthego/phy/phyoffice.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CseCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard1.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CivilCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard2.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 5),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MechCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard3.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AeroCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard4.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EceCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard5.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EeeCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard6.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChemCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard7.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BioCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard8.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LangCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard9.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MathsCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard10.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PhyCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard11.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: new BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.purple,
            gradient: new LinearGradient(
              colors: [Colors.blue, Colors.redAccent],
            ),
            boxShadow: [
              new BoxShadow(
                color: Color(0xff514a9d),
                offset: new Offset(20.0, 30.0),
                blurRadius: 40.0,
              )
            ],
          ),
          height: 250,
          width: 350,
          child: new InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChemistryCard()));
            },
            child: Card(
              elevation: 7.0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/sepmcard12.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Card1(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
