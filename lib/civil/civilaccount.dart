import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton({Key key, this.callback, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onTap: callback,
        child: Card(
          elevation: 7.0,
          child: Container(
            padding: EdgeInsets.only(
                left: 12.0, top: 180.0, right: 2.0, bottom: 5.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/sepmaccount.jpg"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            // child: Card1(),
          ),
        ),
      ),
    );

  }
}

class CivilAccountForum extends StatefulWidget {
  @override
  _CivilAccountForumState createState() => _CivilAccountForumState();
}

class _CivilAccountForumState extends State<CivilAccountForum> {
  Future<void> letschat() async {
    final FirebaseUser user = await FirebaseAuth.instance.currentUser();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Chat(
          user: user,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        text: "CivilAccountForum",
        callback: () async {
          await letschat();
        },
      );
  }
}

class Chat extends StatefulWidget {
  final FirebaseUser user;

  const Chat({Key key, this.user}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final Firestore _firestore = Firestore.instance;

  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();

  Future<void> callback() async {
    if (messageController.text.length > 0) {
      await _firestore.collection('civilaccountforum').add({
        'text': messageController.text,
        'from': widget.user.email,
        'date': DateTime.now().toIso8601String().toString(),
      });
      messageController.clear();
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: _firestore
                    .collection('civilaccountforum')
                    .orderBy('date')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(
                      child: CircularProgressIndicator(),
                    );

                  List<DocumentSnapshot> docs = snapshot.data.documents;

                  List<Widget> messages = docs
                      .map((doc) => Message(
                    from: doc.data['from'],
                    text: doc.data['text'],
                    me: widget.user.email == doc.data['from'],
                  ))
                      .toList();

                  return ListView(
                    controller: scrollController,
                    children: <Widget>[
                      ...messages,
                    ],
                  );
                },
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onSubmitted: (value) => callback(),
                      decoration: InputDecoration(
                        hintText: "Enter a Message...",
                        border: const OutlineInputBorder(),
                      ),
                      controller: messageController,
                    ),
                  ),
                  SendButton(
                    text: "Send",
                    callback: callback,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const SendButton({Key key, this.text, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.orange,
      onPressed: callback,
      child: Text(text),
    );
  }
}

class Message extends StatelessWidget {
  final String from;
  final String text;

  final bool me;

  const Message({Key key, this.from, this.text, this.me}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
        me ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            from,
          ),
          Material(
            color: me ? Colors.teal : Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            elevation: 6.0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Text(
                text,
              ),
            ),
          )
        ],
      ),
    );
  }
}
