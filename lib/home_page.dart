import 'package:flutter/material.dart';
import './authentication.dart';
import 'package:google_fonts/google_fonts.dart';
import './tabscreen1.dart';
import './drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.auth, this.title, this.userId, this.logoutCallback})
      : super(key: key);

  final String title;

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  signOut() async {
    try {
      await widget.auth.signOut();
      widget.logoutCallback();
    } catch (e) {
      print(e);
    }
  }

  /* @override
  void initState() {
    super.initState();
    new FirebaseNotifications().setUpFirebase();
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1d9eaf),
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'On',
                style: GoogleFonts.portLligatSans(
                  textStyle: Theme.of(context).textTheme.display1,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'The',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  TextSpan(
                    text: 'Go',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ]),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Logout',
                  style: new TextStyle(fontSize: 17.0, color: Colors.black)),
              onPressed: signOut,
            ),
            //Icon(Icons.power_settings_new)
          ],
        ),
        backgroundColor: Colors.white,
        drawer: Drawer1(),
        body: TabPage1(),
        // TabPage2(),
      ),
    );
  }
}
